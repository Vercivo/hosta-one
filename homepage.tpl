<div class="hosta-home">
    <section class="hosta-hero">
        <div class="hosta-hero__content">
            <span class="hosta-eyebrow">Reliable Hosting</span>
            <h1>Launch faster with {$companyname}</h1>
            <p>
                Modern hosting, straightforward billing, and support that stays close when your business grows.
            </p>
            <div class="hosta-hero__actions">
                <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">
                    Browse Hosting
                </a>
                {if $loggedin}
                    <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-light btn-lg">
                        Open Client Area
                    </a>
                {else}
                    <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-light btn-lg">
                        Client Login
                    </a>
                {/if}
            </div>
        </div>
        <div class="hosta-hero__panel">
            <div class="hosta-stat">
                <strong>24/7</strong>
                <span>Support when you need help</span>
            </div>
            <div class="hosta-stat">
                <strong>Fast</strong>
                <span>Hosting plans ready for production</span>
            </div>
            <div class="hosta-stat">
                <strong>Simple</strong>
                <span>Domains, services, and billing in one place</span>
            </div>
        </div>
    </section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <section class="hosta-section">
            <div class="hosta-section__header">
                <span class="hosta-eyebrow">Products</span>
                <h2>Choose a plan that fits your next launch</h2>
            </div>

            <div class="row">
                {foreach $productGroups as $productGroup}
                    <div class="col-md-6 col-xl-4 mb-4">
                        <article class="hosta-card">
                            <h3>{$productGroup->name}</h3>
                            <p>{if $productGroup->tagline}{$productGroup->tagline}{else}Hosting designed for dependable performance.{/if}</p>
                            <a href="{$productGroup->getRoutePath()}" class="btn btn-outline-primary">
                                {lang key='browseProducts'}
                            </a>
                        </article>
                    </div>
                {/foreach}

                {if $registerdomainenabled}
                    <div class="col-md-6 col-xl-4 mb-4">
                        <article class="hosta-card">
                            <h3>{lang key='orderregisterdomain'}</h3>
                            <p>{lang key='secureYourDomain'}</p>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-outline-primary">
                                {lang key='navdomainsearch'}
                            </a>
                        </article>
                    </div>
                {/if}

                {if $transferdomainenabled}
                    <div class="col-md-6 col-xl-4 mb-4">
                        <article class="hosta-card">
                            <h3>{lang key='transferYourDomain'}</h3>
                            <p>{lang key='transferExtend'}</p>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-outline-primary">
                                {lang key='transferYourDomain'}
                            </a>
                        </article>
                    </div>
                {/if}
            </div>
        </section>
    {/if}

    <section class="hosta-section">
        <div class="hosta-section__header">
            <span class="hosta-eyebrow">Support</span>
            <h2>Everything your customers need is easy to reach</h2>
        </div>

        <div class="row">
            <div class="col-6 col-lg-3 mb-4">
                <a href="{routePath('announcement-index')}" class="hosta-link-card">
                    <i class="fal fa-bullhorn"></i>
                    <span>{lang key='announcementstitle'}</span>
                </a>
            </div>
            <div class="col-6 col-lg-3 mb-4">
                <a href="serverstatus.php" class="hosta-link-card">
                    <i class="fal fa-server"></i>
                    <span>{lang key='networkstatustitle'}</span>
                </a>
            </div>
            <div class="col-6 col-lg-3 mb-4">
                <a href="{routePath('knowledgebase-index')}" class="hosta-link-card">
                    <i class="fal fa-book"></i>
                    <span>{lang key='knowledgebasetitle'}</span>
                </a>
            </div>
            <div class="col-6 col-lg-3 mb-4">
                <a href="submitticket.php" class="hosta-link-card">
                    <i class="fal fa-life-ring"></i>
                    <span>{lang key='homepage.submitTicket'}</span>
                </a>
            </div>
        </div>
    </section>
</div>
