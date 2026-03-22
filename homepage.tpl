<style>
    .master-breadcrumb,
    .home-domain-search,
    #frmDomainHomepage {
        display: none;
    }

    #main-body {
        padding-top: 0 !important;
    }

    #main-body > .container,
    #main-body .primary-content {
        max-width: none;
        padding: 0 !important;
        margin-top: 0 !important;
    }
</style>

<div class="minimal-landing">
    <section class="interactive-hero">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="interactive-hero__content">
                        <span class="interactive-kicker">Modern Hosting</span>
                        <h1>Experience the Future of Web Hosting</h1>
                        <p>
                            Our platform is designed to be fast, reliable, and easy to use.
                            Get started in just a few clicks.
                        </p>
                        <div class="interactive-hero__actions">
                            <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">View Plans</a>
                            {if $loggedin}
                                <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-primary btn-lg">Client Area</a>
                            {else}
                                <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-primary btn-lg">Login</a>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="interactive-animation">
                        <div class="dot"></div>
                        <div class="dot"></div>
                        <div class="dot"></div>
                        <div class="dot"></div>
                        <div class="dot"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>    <section class="icon-grid">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="icon-grid__item">
                    <div class="icon-grid__icon">
                        <i class="fas fa-rocket"></i>
                    </div>
                    <h5>Fast Setup</h5>
                    <p>Start quickly with cleaner onboarding.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="icon-grid__item">
                    <div class="icon-grid__icon">
                        <i class="fas fa-tasks"></i>
                    </div>
                    <h5>Unified Management</h5>
                    <p>Keep services and billing in one view.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="icon-grid__item">
                    <div class="icon-grid__icon">
                        <i class="fas fa-paint-brush"></i>
                    </div>
                    <h5>Professional Look</h5>
                    <p>Modern and minimal instead of crowded.</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="icon-grid__item">
                    <div class="icon-grid__icon">
                        <i class="fas fa-life-ring"></i>
                    </div>
                    <h5>Support Ready</h5>
                    <p>Key help paths stay visible and simple.</p>
                </div>
            </div>
        </div>
    </div>
</section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <section class="minimal-section">
            <div class="minimal-wrap">
                <div class="minimal-heading">
                    <span class="minimal-kicker">Solutions</span>
                    <h2>Choose the service that fits your next launch.</h2>
                    <p>
                        The homepage now works like a proper modern landing page: simple message first, service options
                        second, and a smoother path into the client experience.
                    </p>
                </div>

                <div class="minimal-card-grid">
                    {foreach $productGroups as $productGroup}
                        <article class="minimal-card">
                            <span class="minimal-card__label">Hosting</span>
                            <h3>{$productGroup->name}</h3>
                            <p>
                                {if $productGroup->tagline}
                                    {$productGroup->tagline}
                                {else}
                                    Reliable hosting built for teams that want a cleaner operational setup.
                                {/if}
                            </p>
                            <a href="{$productGroup->getRoutePath()}" class="minimal-card__link">
                                Explore plans
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/foreach}

                    {if $registerdomainenabled}
                        <article class="minimal-card">
                            <span class="minimal-card__label">Domains</span>
                            <h3>{lang key='orderregisterdomain'}</h3>
                            <p>{lang key='secureYourDomain'}</p>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="minimal-card__link">
                                {lang key='navdomainsearch'}
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}

                    {if $transferdomainenabled}
                        <article class="minimal-card">
                            <span class="minimal-card__label">Transfer</span>
                            <h3>{lang key='transferYourDomain'}</h3>
                            <p>{lang key='transferExtend'}</p>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="minimal-card__link">
                                Transfer domain
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}
                </div>
            </div>
        </section>
    {/if}

    <section class="minimal-section minimal-section--soft">
        <div class="minimal-wrap">
            <div class="minimal-split">
                <div class="minimal-split__copy">
                    <span class="minimal-kicker">Why It Works</span>
                    <h2>A lighter interface makes the whole theme feel more modern.</h2>
                    <p>
                        This direction removes extra noise and gives the theme stronger whitespace, cleaner card
                        structure, and a more polished full-width rhythm across the homepage and client area.
                    </p>
                </div>

                <div class="minimal-feature-grid">
                    <article class="minimal-feature">
                        <h3>More space</h3>
                        <p>Wide layouts and quieter surfaces make the page feel more premium.</p>
                    </article>
                    <article class="minimal-feature">
                        <h3>Less noise</h3>
                        <p>Fewer decorative treatments keep attention on content and actions.</p>
                    </article>
                    <article class="minimal-feature">
                        <h3>Better clarity</h3>
                        <p>Visitors can reach products, support, and login paths faster.</p>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="minimal-section">
        <div class="minimal-wrap">
            <div class="minimal-heading minimal-heading--center">
                <span class="minimal-kicker">Support</span>
                <h2>Help stays close without overcrowding the page.</h2>
                <p>
                    Important support destinations remain visible while the overall experience stays clean and minimal.
                </p>
            </div>

            <div class="minimal-support-grid">
                <a href="{routePath('announcement-index')}" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-bullhorn"></i></span>
                    <strong>{lang key='announcementstitle'}</strong>
                    <p>Platform updates and important notices.</p>
                </a>
                <a href="serverstatus.php" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-server"></i></span>
                    <strong>{lang key='networkstatustitle'}</strong>
                    <p>Status visibility for hosted services.</p>
                </a>
                <a href="{routePath('knowledgebase-index')}" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-book"></i></span>
                    <strong>{lang key='knowledgebasetitle'}</strong>
                    <p>Self-service guidance for common questions.</p>
                </a>
                <a href="submitticket.php" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-life-ring"></i></span>
                    <strong>{lang key='homepage.submitTicket'}</strong>
                    <p>Direct route into account and technical support.</p>
                </a>
            </div>
        </div>
    </section>

    <section class="minimal-cta">
        <div class="minimal-wrap">
            <div class="minimal-cta__box">
                <div>
                    <span class="minimal-kicker minimal-kicker--dark">Get Started</span>
                    <h2>Launch with a cleaner front end and a smoother customer flow.</h2>
                </div>
                <div class="minimal-cta__actions">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">Start With Hosting</a>
                    <a href="contact.php" class="btn btn-outline-primary btn-lg">Talk To Sales</a>
                </div>
            </div>
        </div>
    </section>
</div>
