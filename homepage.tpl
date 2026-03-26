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
        width: 100% !important;
        max-width: none !important;
        padding: 0 !important;
        margin-left: auto !important;
        margin-right: auto !important;
        margin-top: 0 !important;
    }
</style>

<div class="minimal-landing">
    <section class="interactive-hero">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="interactive-hero__content">
                        <h1>Experience the <span>Future</span> of Web Hosting</h1>
                        <p>
                            Enterprise-grade infrastructure with 99.99% uptime guarantee. 
                            Deploy in seconds with our intuitive platform designed for scale.
                        </p>
                        <div class="interactive-hero__actions">
                            <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">Get Started</a>
                            {if $loggedin}
                                <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-primary btn-lg">Dashboard</a>
                            {else}
                                <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-primary btn-lg">Sign In</a>
                            {/if}
                        </div>
                        <div class="interactive-hero__trust">
                            <span class="interactive-hero__trust-label">Trusted by 10,000+ businesses</span>
                            <div class="interactive-hero__trust-badges">
                                <div class="interactive-hero__trust-badge">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                                <span class="interactive-hero__trust-badge">4.9/5 Rating</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="interactive-animation">
                        <div class="hero-visual">
                            <div class="hero-card hero-card--1">
                                <div class="hero-card__icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg>
                                </div>
                                <div class="hero-card__content">
                                    <span>Lightning Fast</span>
                                    <strong>99.9% Uptime</strong>
                                </div>
                            </div>
                            <div class="hero-card hero-card--2">
                                <div class="hero-card__icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                                </div>
                                <div class="hero-card__content">
                                    <span>Secure</span>
                                    <strong>DDoS Protection</strong>
                                </div>
                            </div>
                            <div class="hero-card hero-card--3">
                                <div class="hero-card__icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>
                                </div>
                                <div class="hero-card__content">
                                    <span>24/7</span>
                                    <strong>Expert Support</strong>
                                </div>
                            </div>
                            <div class="hero-float hero-float--1"></div>
                            <div class="hero-float hero-float--2"></div>
                            <div class="hero-float hero-float--3"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="icon-grid">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                            </svg>
                        </div>
                        <h5>Fast Setup</h5>
                        <p>Start quickly with cleaner onboarding.</p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                        </div>
                        <h5>Unified Management</h5>
                        <p>Keep services and billing in one view.</p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M12 19l7-7 3 3-7 7-3-3z"></path>
                                <path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path>
                                <path d="M2 2l7.586 7.586"></path>
                                <circle cx="11" cy="11" r="2"></circle>
                            </svg>
                        </div>
                        <h5>Professional Look</h5>
                        <p>Modern and minimal instead of crowded.</p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                            </svg>
                        </div>
                        <h5>Support Ready</h5>
                        <p>Key help paths stay visible and simple.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
    <section class="pricing-table-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="minimal-heading minimal-heading--center">
                        <span class="minimal-kicker">Pricing</span>
                        <h2>Find the Perfect Plan for Your Business</h2>
                        <p>
                            We offer a variety of plans to fit your needs and budget.
                            All plans come with our 30-day money-back guarantee.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                {foreach $productGroups as $productGroup}
                    <div class="col-lg-4">
                        <div class="pricing-table">
                            <div class="pricing-table__header">
                                <h3>{$productGroup.name}</h3>
                                <p>{$productGroup.tagline}</p>
                            </div>
                            <div class="pricing-table__price">
                                <span class="price">{$productGroup.order}</span>
                                <span class="period">/mo</span>
                            </div>
                            <div class="pricing-table__features">
                                <ul>
                                    <li><i class="fas fa-check"></i> Feature 1</li>
                                    <li><i class="fas fa-check"></i> Feature 2</li>
                                    <li><i class="fas fa-check"></i> Feature 3</li>
                                    <li><i class="fas fa-check"></i> Feature 4</li>
                                </ul>
                            </div>
                            <div class="pricing-table__footer">
                                <a href="{$productGroup->getRoutePath()}" class="btn btn-primary">Sign Up</a>
                            </div>
                        </div>
                    </div>
                {/foreach}
                {if $registerdomainenabled}
                    <div class="col-lg-4">
                        <div class="pricing-table">
                            <div class="pricing-table__header">
                                <h3>{lang key='orderregisterdomain'}</h3>
                                <p>{lang key='secureYourDomain'}</p>
                            </div>
                            <div class="pricing-table__price">
                                <span class="price"></span>
                                <span class="period"></span>
                            </div>
                            <div class="pricing-table__features">
                                <ul>
                                    <li><i class="fas fa-check"></i> 500+ TLDs</li>
                                    <li><i class="fas fa-check"></i> Free DNS Management</li>
                                    <li><i class="fas fa-check"></i> ID Protection</li>
                                    <li><i class="fas fa-check"></i> Easy Transfers</li>
                                </ul>
                            </div>
                            <div class="pricing-table__footer">
                                <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-primary">{lang key='navdomainsearch'}</a>
                            </div>
                        </div>
                    </div>
                {/if}
                {if $transferdomainenabled}
                    <div class="col-lg-4">
                        <div class="pricing-table">
                            <div class="pricing-table__header">
                                <h3>{lang key='transferYourDomain'}</h3>
                                <p>{lang key='transferExtend'}</p>
                            </div>
                            <div class="pricing-table__price">
                                <span class="price"></span>
                                <span class="period"></span>
                            </div>
                            <div class="pricing-table__features">
                                <ul>
                                    <li><i class="fas fa-check"></i> Free 1-Year Extension</li>
                                    <li><i class="fas fa-check"></i> No Downtime</li>
                                    <li><i class="fas fa-check"></i> Keep Existing Nameservers</li>
                                    <li><i class="fas fa-check"></i> Simple & Fast</li>
                                </ul>
                            </div>
                            <div class="pricing-table__footer">
                                <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-primary">Transfer Domain</a>
                            </div>
                        </div>
                    </div>
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
                        structure, and a more polished rhythm across the homepage and client area.
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
