{include file="$template/includes/flashmessage.tpl"}

<div class="portal-hero">
    <div class="portal-hero__grid">
        <div class="portal-hero__copy">
            <span class="clean-kicker">Client Workspace</span>
            <h1>
                Welcome back{if $client.companyname}, {$client.companyname}{elseif $client.fullName}, {$client.fullName}{/if}.
            </h1>
            <p>
                Manage hosting, domains, invoices, and support from one cleaner full-width dashboard.
            </p>

            <div class="portal-hero__actions">
                <a href="clientarea.php?action=services" class="btn btn-primary">Manage Services</a>
                <a href="supporttickets.php" class="btn btn-outline-primary">View Tickets</a>
            </div>
        </div>

        <article class="portal-stat">
            <small>Active Services</small>
            <strong>{$clientsstats.productsnumactive}</strong>
        </article>
        <article class="portal-stat">
            <small>Open Tickets</small>
            <strong>{$clientsstats.numactivetickets}</strong>
        </article>
        <article class="portal-stat">
            <small>Unpaid Invoices</small>
            <strong>{$clientsstats.numunpaidinvoices}</strong>
        </article>
    </div>
</div>

<div class="portal-links">
    <a href="clientarea.php?action=services" class="portal-link">
        <span class="portal-link__icon"><i class="fas fa-cube"></i></span>
        <small>{lang key='navservices'}</small>
        <strong>{$clientsstats.productsnumactive}</strong>
    </a>

    {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
        <a href="clientarea.php?action=domains" class="portal-link">
            <span class="portal-link__icon"><i class="fas fa-globe"></i></span>
            <small>{lang key='navdomains'}</small>
            <strong>{$clientsstats.numactivedomains}</strong>
        </a>
    {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
        <a href="affiliates.php" class="portal-link">
            <span class="portal-link__icon"><i class="fas fa-handshake"></i></span>
            <small>Affiliates</small>
            <strong>{$clientsstats.numaffiliatesignups}</strong>
        </a>
    {else}
        <a href="clientarea.php?action=quotes" class="portal-link">
            <span class="portal-link__icon"><i class="fas fa-file-alt"></i></span>
            <small>{lang key='quotes'}</small>
            <strong>{$clientsstats.numquotes}</strong>
        </a>
    {/if}

    <a href="supporttickets.php" class="portal-link">
        <span class="portal-link__icon"><i class="fas fa-comments"></i></span>
        <small>{lang key='navtickets'}</small>
        <strong>{$clientsstats.numactivetickets}</strong>
    </a>

    <a href="clientarea.php?action=invoices" class="portal-link">
        <span class="portal-link__icon"><i class="fas fa-credit-card"></i></span>
        <small>{lang key='navinvoices'}</small>
        <strong>{$clientsstats.numunpaidinvoices}</strong>
    </a>
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
                                    <a href="{$item->getExtra('btn-link')}" class="btn btn-default btn-xs">
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
