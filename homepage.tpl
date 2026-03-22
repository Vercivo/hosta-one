<style>
    .master-breadcrumb,
    .home-domain-search {
        display: none;
    }

    #main-body {
        padding-top: 0;
    }

    #main-body > .container {
        max-width: none;
        padding: 0;
    }
</style>

<div class="minimal-landing">
    <section class="interactive-hero">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="interactive-hero__content">
                        <span class="interactive-kicker">Interactive Hosting</span>
                        <h1>Find Your Perfect Plan</h1>
                        <p>
                            Use our interactive calculator to find the perfect hosting plan for your needs.
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
                    <div class="interactive-calculator">
                        <div class="interactive-calculator__header">
                            <h5>Estimate Your Cost</h5>
                        </div>
                        <div class="interactive-calculator__body">
                            <div class="form-group">
                                <label for="visitors">Monthly Visitors</label>
                                <input type="range" class="form-range" id="visitors" min="1" max="5" value="2">
                                <div class="d-flex justify-content-between">
                                    <span>10k</span>
                                    <span>50k</span>
                                    <span>100k</span>
                                    <span>500k</span>
                                    <span>1M+</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="storage">Storage</label>
                                <input type="range" class="form-range" id="storage" min="1" max="5" value="2">
                                <div class="d-flex justify-content-between">
                                    <span>10GB</span>
                                    <span>50GB</span>
                                    <span>100GB</span>
                                    <span>500GB</span>
                                    <span>1TB+</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Addons</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="daily-backups">
                                    <label class="form-check-label" for="daily-backups">
                                        Daily Backups
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="ddos-protection">
                                    <label class="form-check-label" for="ddos-protection">
                                        DDoS Protection
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="interactive-calculator__footer">
                            <div class="d-flex justify-content-between align-items-center">
                                <span>Estimated Cost:</span>
                                <span class="price">$25/mo</span>
                            </div>
                            <a href="#" class="btn btn-primary w-100 mt-3">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="minimal-strip">
        <div class="minimal-wrap">
            <div class="minimal-strip__grid">
                <article class="minimal-strip__item">
                    <strong>Fast setup</strong>
                    <span>Start quickly with cleaner onboarding.</span>
                </article>
                <article class="minimal-strip__item">
                    <strong>Unified management</strong>
                    <span>Keep services and billing in one view.</span>
                </article>
                <article class="minimal-strip__item">
                    <strong>Professional look</strong>
                    <span>Modern and minimal instead of crowded.</span>
                </article>
                <article class="minimal-strip__item">
                    <strong>Support ready</strong>
                    <span>Key help paths stay visible and simple.</span>
                </article>
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
