{include file="$template/includes/flashmessage.tpl"}

<div class="hosta-dashboard-intro">
    <div class="row align-items-center">
        <div class="col-lg-8">
            <span class="hosta-eyebrow">Client Portal</span>
            <h1 class="h2 mb-2">Welcome Back</h1>
            <p class="text-muted mb-0">
                Manage your services, domains, and billing from your enterprise dashboard.
            </p>
        </div>
        <div class="col-lg-4 text-lg-end mt-3 mt-lg-0">
            <div class="hosta-dashboard-intro__actions">
                <a href="clientarea.php?action=services" class="btn btn-primary">
                    <i class="fas fa-cube me-2"></i>Manage Services
                </a>
                <a href="supporttickets.php" class="btn btn-outline-secondary">
                    <i class="fas fa-ticket-alt me-2"></i>Tickets
                </a>
            </div>
        </div>
    </div>
</div>

<div class="enterprise-tiles mb-4">
    <div class="row no-gutters">
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=services" class="enterprise-tile">
                <div class="enterprise-tile__icon">
                    <i class="fas fa-cube"></i>
                </div>
                <div class="enterprise-tile__stat">{$clientsstats.productsnumactive}</div>
                <div class="enterprise-tile__title">Active Services</div>
                <div class="enterprise-tile__highlight bg-color-blue"></div>
            </a>
        </div>
        {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=domains" class="enterprise-tile">
                    <div class="enterprise-tile__icon">
                        <i class="fas fa-globe"></i>
                    </div>
                    <div class="enterprise-tile__stat">{$clientsstats.numactivedomains}</div>
                    <div class="enterprise-tile__title">Domains</div>
                    <div class="enterprise-tile__highlight bg-color-green"></div>
                </a>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="col-6 col-xl-3">
                <a href="affiliates.php" class="enterprise-tile">
                    <div class="enterprise-tile__icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="enterprise-tile__stat">{$clientsstats.numaffiliatesignups}</div>
                    <div class="enterprise-tile__title">Affiliates</div>
                    <div class="enterprise-tile__highlight bg-color-green"></div>
                </a>
            </div>
        {else}
            <div class="col-6 col-xl-3">
                <a href="clientarea.php?action=quotes" class="enterprise-tile">
                    <div class="enterprise-tile__icon">
                        <i class="far fa-file-alt"></i>
                    </div>
                    <div class="enterprise-tile__stat">{$clientsstats.numquotes}</div>
                    <div class="enterprise-tile__title">Quotes</div>
                    <div class="enterprise-tile__highlight bg-color-green"></div>
                </a>
            </div>
        {/if}
        <div class="col-6 col-xl-3">
            <a href="supporttickets.php" class="enterprise-tile">
                <div class="enterprise-tile__icon">
                    <i class="fas fa-comments"></i>
                </div>
                <div class="enterprise-tile__stat">{$clientsstats.numactivetickets}</div>
                <div class="enterprise-tile__title">Open Tickets</div>
                <div class="enterprise-tile__highlight bg-color-red"></div>
            </a>
        </div>
        <div class="col-6 col-xl-3">
            <a href="clientarea.php?action=invoices" class="enterprise-tile">
                <div class="enterprise-tile__icon">
                    <i class="fas fa-credit-card"></i>
                </div>
                <div class="enterprise-tile__stat">{$clientsstats.numunpaidinvoices}</div>
                <div class="enterprise-tile__title">Unpaid Invoices</div>
                <div class="enterprise-tile__highlight bg-color-gold"></div>
            </a>
        </div>
    </div>
</div>

{foreach $addons_html as $addon_html}
    <div>
        {$addon_html}
    </div>
{/foreach}

{if $captchaError}
    <div class="alert alert-danger">
        {$captchaError}
    </div>
{/if}

<div class="client-home-cards">
    <div class="row">
        <div class="col-12">
            {function name=outputHomePanels}
                <div menuItemName="{$item->getName()}" class="card card-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                    <div class="card-header">
                        <h3 class="card-title m-0">
                            {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                                <div class="float-right">
                                    <a href="{$item->getExtra('btn-link')}" class="btn btn-default bg-color-{$item->getExtra('color')} btn-xs">
                                        {if $item->getExtra('btn-icon')}<i class="{$item->getExtra('btn-icon')}"></i>{/if}
                                        {$item->getExtra('btn-text')}
                                    </a>
                                </div>
                            {/if}
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                        </h3>
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="card-body">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="list-group-item list-group-item-action{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    <div class="card-footer">
                        {if $item->hasFooterHtml()}
                            {$item->getFooterHtml()}
                        {/if}
                    </div>
                </div>
            {/function}

            {foreach $panels as $item}
                {if $item->getExtra('colspan')}
                    {outputHomePanels}
                    {assign "panels" $panels->removeChild($item->getName())}
                {/if}
            {/foreach}
        </div>
        <div class="col-md-6 col-lg-12 col-xl-6">
            {foreach $panels as $item}
                {if $item@iteration is odd}
                    {outputHomePanels}
                {/if}
            {/foreach}
        </div>
        <div class="col-md-6 col-lg-12 col-xl-6">
            {foreach $panels as $item}
                {if $item@iteration is even}
                    {outputHomePanels}
                {/if}
            {/foreach}
        </div>
    </div>
</div>
