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
    </section>    <section class="feature-grid">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-md-6">
                    <div class="feature-card">
                        <div class="feature-card__icon">
                            <i class="fas fa-rocket"></i>
                        </div>
                        <h4>Fast Setup</h4>
                        <p>Start quickly with cleaner onboarding.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="feature-card">
                        <div class="feature-card__icon">
                            <i class="fas fa-tasks"></i>
                        </div>
                        <h4>Unified Management</h4>
                        <p>Keep services and billing in one view.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="feature-card">
                        <div class="feature-card__icon">
                            <i class="fas fa-paint-brush"></i>
                        </div>
                        <h4>Professional Look</h4>
                        <p>Modern and minimal instead of crowded.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="feature-card">
                        <div class="feature-card__icon">
                            <i class="fas fa-life-ring"></i>
                        </div>
                        <h4>Support Ready</h4>
                        <p>Key help paths stay visible and simple.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <style>
        .feature-grid {
            padding: 4rem 0;
            background: #fff;
        }
        
        .feature-card {
            padding: 2rem;
            border-radius: 12px;
            background: #f8f9fa;
            text-align: center;
            transition: all 0.3s ease;
            height: 100%;
        }
        
        .feature-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.08);
        }
        
        .feature-card__icon {
            width: 64px;
            height: 64px;
            margin: 0 auto 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 16px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: #fff;
            font-size: 1.5rem;
        }
        
        .feature-card h4 {
            font-size: 1.125rem;
            font-weight: 600;
            margin-bottom: 0.75rem;
            color: #1a1a2e;
        }
        
        .feature-card p {
            font-size: 0.9rem;
            color: #6c757d;
            margin: 0;
            line-height: 1.6;
        }
    </style>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
    <section class="pricing-table-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="minimal-heading text-center">
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
