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

<div class="clean-landing">
    <section class="clean-hero">
        <div class="clean-shell">
            <div class="clean-hero__grid">
                <div class="clean-hero__copy">
                    <span class="clean-kicker">Managed Hosting Platform</span>
                    <h1>Clean infrastructure, clear support, and a client experience that feels premium.</h1>
                    <p>
                        {$companyname} helps modern businesses run hosting, domains, billing, and support from one
                        dependable platform with a calmer, more professional customer journey.
                    </p>

                    <div class="clean-hero__actions">
                        <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">View Solutions</a>
                        {if $loggedin}
                            <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-primary btn-lg">Open Client Area</a>
                        {else}
                            <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-primary btn-lg">Client Login</a>
                        {/if}
                    </div>
                </div>

                <aside class="clean-panel">
                    <div class="clean-panel__row">
                        <small>Availability</small>
                        <strong>99.99% uptime target with steady operational oversight</strong>
                    </div>
                    <div class="clean-panel__row">
                        <small>Support</small>
                        <strong>Account, billing, and technical requests handled in one workflow</strong>
                    </div>
                    <div class="clean-panel__row">
                        <small>Control</small>
                        <strong>Domains, services, invoices, and tickets visible from one portal</strong>
                    </div>
                </aside>
            </div>
        </div>
    </section>

    <section class="clean-strip">
        <div class="clean-shell">
            <div class="clean-metrics">
                <article class="clean-metric">
                    <strong>24/7</strong>
                    <span>support coverage</span>
                </article>
                <article class="clean-metric">
                    <strong>1 portal</strong>
                    <span>for services and billing</span>
                </article>
                <article class="clean-metric">
                    <strong>Fast setup</strong>
                    <span>for new hosting and domains</span>
                </article>
                <article class="clean-metric">
                    <strong>Clean UX</strong>
                    <span>for both visitors and clients</span>
                </article>
            </div>
        </div>
    </section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <section class="clean-band">
            <div class="clean-shell">
                <div class="clean-heading">
                    <span class="clean-kicker">Solutions</span>
                    <h2>Choose the right starting point for your next deployment.</h2>
                    <p>
                        The homepage now behaves like a proper landing page: simple message first, commercial options
                        second, and support paths always easy to reach.
                    </p>
                </div>

                <div class="clean-solution-grid">
                    {foreach $productGroups as $productGroup}
                        <article class="clean-card">
                            <span class="clean-card__tag">Hosting</span>
                            <h3>{$productGroup->name}</h3>
                            <p>
                                {if $productGroup->tagline}
                                    {$productGroup->tagline}
                                {else}
                                    Reliable hosting designed for teams that want performance and cleaner operations.
                                {/if}
                            </p>
                            <ul class="clean-card__list">
                                <li>Stable service delivery</li>
                                <li>Customer-friendly provisioning flow</li>
                                <li>Billing and support in one system</li>
                            </ul>
                            <a href="{$productGroup->getRoutePath()}" class="clean-card__link">
                                Explore plans
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/foreach}

                    {if $registerdomainenabled}
                        <article class="clean-card clean-card--soft">
                            <span class="clean-card__tag">Domains</span>
                            <h3>{lang key='orderregisterdomain'}</h3>
                            <p>{lang key='secureYourDomain'}</p>
                            <ul class="clean-card__list">
                                <li>Search and register from the same journey</li>
                                <li>Keep digital assets under one roof</li>
                                <li>Cleaner renewal visibility for clients</li>
                            </ul>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="clean-card__link">
                                {lang key='navdomainsearch'}
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}

                    {if $transferdomainenabled}
                        <article class="clean-card">
                            <span class="clean-card__tag">Transfer</span>
                            <h3>{lang key='transferYourDomain'}</h3>
                            <p>{lang key='transferExtend'}</p>
                            <ul class="clean-card__list">
                                <li>Bring domain management into one portal</li>
                                <li>Reduce vendor sprawl</li>
                                <li>Keep support and billing closer together</li>
                            </ul>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="clean-card__link">
                                Transfer now
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}
                </div>
            </div>
        </section>
    {/if}

    <section class="clean-band clean-band--soft">
        <div class="clean-shell">
            <div class="clean-split">
                <div class="clean-split__copy">
                    <span class="clean-kicker">Why This Design</span>
                    <h2>Full width, cleaner spacing, and a quieter layout that feels more credible.</h2>
                    <p>
                        Instead of a crowded hosting storefront, this version uses stronger whitespace, simpler
                        hierarchy, and broad sections that feel more enterprise-friendly on both desktop and mobile.
                    </p>
                </div>

                <div class="clean-feature-list">
                    <article class="clean-feature">
                        <h3>Full-width presentation</h3>
                        <p>Key sections stretch across the viewport while keeping readable inner spacing.</p>
                    </article>
                    <article class="clean-feature">
                        <h3>Cleaner content rhythm</h3>
                        <p>Fewer competing elements and more deliberate spacing make the page easier to trust.</p>
                    </article>
                    <article class="clean-feature">
                        <h3>Safer WHMCS structure</h3>
                        <p>The design stays inside a proper child-theme setup without broken custom wrappers.</p>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="clean-band">
        <div class="clean-shell">
            <div class="clean-heading clean-heading--center">
                <span class="clean-kicker">Support</span>
                <h2>Important help paths stay visible from the homepage.</h2>
                <p>
                    Announcements, network status, documentation, and tickets are all still easy to reach without
                    overloading the landing page.
                </p>
            </div>

            <div class="clean-resource-grid">
                <a href="{routePath('announcement-index')}" class="clean-resource">
                    <span class="clean-resource__icon"><i class="fas fa-bullhorn"></i></span>
                    <strong>{lang key='announcementstitle'}</strong>
                    <p>Service notices and platform updates.</p>
                </a>
                <a href="serverstatus.php" class="clean-resource">
                    <span class="clean-resource__icon"><i class="fas fa-server"></i></span>
                    <strong>{lang key='networkstatustitle'}</strong>
                    <p>Operational visibility for hosted services.</p>
                </a>
                <a href="{routePath('knowledgebase-index')}" class="clean-resource">
                    <span class="clean-resource__icon"><i class="fas fa-book"></i></span>
                    <strong>{lang key='knowledgebasetitle'}</strong>
                    <p>Quick answers for common client questions.</p>
                </a>
                <a href="submitticket.php" class="clean-resource">
                    <span class="clean-resource__icon"><i class="fas fa-life-ring"></i></span>
                    <strong>{lang key='homepage.submitTicket'}</strong>
                    <p>Direct path to account and technical support.</p>
                </a>
            </div>
        </div>
    </section>

    <section class="clean-cta">
        <div class="clean-shell">
            <div class="clean-cta__box">
                <div>
                    <span class="clean-kicker clean-kicker--inverse">Get Started</span>
                    <h2>Launch with a cleaner front end and a smoother client journey.</h2>
                </div>
                <div class="clean-cta__actions">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">Start With Hosting</a>
                    <a href="contact.php" class="btn btn-outline-primary btn-lg">Talk To Sales</a>
                </div>
            </div>
        </div>
    </section>
</div>
