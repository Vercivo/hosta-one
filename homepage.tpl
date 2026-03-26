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
                            Modern hosting infrastructure built for reliability and performance. 
                            We're a new hosting provider committed to earning your trust through exceptional service.
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
                            <span class="interactive-hero__trust-label">Ready to Serve Your Business</span>
                            <div class="interactive-hero__trust-badges">
                                <div class="interactive-hero__trust-badge">
                                    <i class="fas fa-shield-alt"></i>
                                    Secure Infrastructure
                                </div>
                                <span class="interactive-hero__trust-badge">Enterprise-Grade</span>
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
            <div class="icon-grid__header">
                <span class="icon-grid__kicker">Why Choose Us</span>
                <h2>Everything you need to succeed</h2>
                <p>Powerful features designed to help you build, launch, and grow your online presence.</p>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                            </svg>
                        </div>
                        <h5>Lightning Fast</h5>
                        <p>SSD-powered servers with global CDN for blazing fast performance.</p>
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
                        <h5>Scalable Infrastructure</h5>
                        <p>Easily scale resources up or down as your business grows.</p>
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
                        <h5>Enterprise Security</h5>
                        <p>Advanced DDoS protection, SSL certificates, and daily backups.</p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="icon-grid__item">
                        <div class="icon-grid__icon">
                            <svg viewBox="0 0 24 24" aria-hidden="true" focusable="false" stroke="currentColor" fill="none" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                            </svg>
                        </div>
                        <h5>24/7 Expert Support</h5>
                        <p>Our technical team is always available to help you succeed.</p>
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

    <section class="testimonials-section">
        <div class="container">
            <div class="testimonials-header">
                <span class="testimonials-kicker">Testimonials</span>
                <h2>Trusted by thousands of businesses worldwide</h2>
                <p>See what our customers have to say about their experience with our platform.</p>
            </div>
            
            <div class="testimonials-grid">
                <article class="testimonial-card">
                    <div class="testimonial-stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <blockquote class="testimonial-quote">
                        "We've reduced our server downtime by 99% since switching. The support team is incredibly responsive and knowledgeable."
                    </blockquote>
                    <div class="testimonial-author">
                        <div class="testimonial-avatar">
                            <span>SC</span>
                        </div>
                        <div class="testimonial-info">
                            <strong>Sarah Chen</strong>
                            <span>CTO at TechCorp</span>
                        </div>
                    </div>
                </article>

                <article class="testimonial-card testimonial-card--featured">
                    <div class="testimonial-badge">
                        <i class="fas fa-check-circle"></i>
                        Verified Customer
                    </div>
                    <div class="testimonial-stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <blockquote class="testimonial-quote">
                        "The migration was seamless and our website performance improved immediately. I wish we had made the switch sooner."
                    </blockquote>
                    <div class="testimonial-author">
                        <div class="testimonial-avatar">
                            <span>MJ</span>
                        </div>
                        <div class="testimonial-info">
                            <strong>Michael Johnson</strong>
                            <span>Founder at StartupXYZ</span>
                        </div>
                    </div>
                </article>

                <article class="testimonial-card">
                    <div class="testimonial-stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <blockquote class="testimonial-quote">
                        "Outstanding uptime and the customer support team goes above and beyond. Best hosting experience we've had."
                    </blockquote>
                    <div class="testimonial-author">
                        <div class="testimonial-avatar">
                            <span>ER</span>
                        </div>
                        <div class="testimonial-info">
                            <strong>Emily Rodriguez</strong>
                            <span>Director at CloudScale</span>
                        </div>
                    </div>
                </article>
            </div>
            
            <div class="testimonials-stats">
                <div class="testimonials-stat">
                    <strong>10,000+</strong>
                    <span>Active Customers</span>
                </div>
                <div class="testimonials-stat">
                    <strong>4.9/5</strong>
                    <span>Average Rating</span>
                </div>
                <div class="testimonials-stat">
                    <strong>99.99%</strong>
                    <span>Uptime SLA</span>
                </div>
                <div class="testimonials-stat">
                    <strong>24/7</strong>
                    <span>Expert Support</span>
                </div>
            </div>
        </div>
    </section>

    <section class="minimal-section minimal-section--soft">
        <div class="container">
            <div class="minimal-split">
                <div class="minimal-split__copy">
                    <span class="minimal-kicker">Why Choose Us</span>
                    <h2>Designed for modern businesses that demand excellence.</h2>
                    <p>
                        Our platform combines enterprise-grade infrastructure with an intuitive interface, 
                        delivering the performance, security, and reliability your business deserves.
                    </p>
                </div>

                <div class="minimal-feature-grid">
                    <article class="minimal-feature">
                        <h3>Premium Experience</h3>
                        <p>Clean, modern design with intuitive navigation that makes managing your services effortless.</p>
                    </article>
                    <article class="minimal-feature">
                        <h3>Enterprise Security</h3>
                        <p>Advanced protection with DDoS mitigation, SSL certificates, and continuous monitoring.</p>
                    </article>
                    <article class="minimal-feature">
                        <h3>24/7 Expert Support</h3>
                        <p>Our technical team is always available to help you resolve any issues quickly.</p>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <section class="minimal-support-section">
        <div class="container">
            <div class="minimal-heading minimal-heading--center">
                <span class="minimal-kicker">Support</span>
                <h2>We're here to help you succeed</h2>
                <p>
                    Get the help you need, when you need it. Our comprehensive support resources ensure you're never alone.
                </p>
            </div>

            <div class="minimal-support-grid">
                <a href="{routePath('announcement-index')}" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-bullhorn"></i></span>
                    <strong>{lang key='announcementstitle'}</strong>
                    <p>Stay informed with the latest platform updates, news, and important announcements.</p>
                </a>
                <a href="serverstatus.php" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-server"></i></span>
                    <strong>{lang key='networkstatustitle'}</strong>
                    <p>Real-time visibility into system status, uptime, and performance across all services.</p>
                </a>
                <a href="{routePath('knowledgebase-index')}" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-book"></i></span>
                    <strong>{lang key='knowledgebasetitle'}</strong>
                    <p>Comprehensive guides, tutorials, and answers to help you get the most from our platform.</p>
                </a>
                <a href="submitticket.php" class="minimal-support">
                    <span class="minimal-support__icon"><i class="fas fa-life-ring"></i></span>
                    <strong>{lang key='homepage.submitTicket'}</strong>
                    <p>Our expert support team is ready to assist you with any questions or technical issues.</p>
                </a>
            </div>
        </div>
    </section>

    <section class="minimal-cta">
        <div class="container">
            <div class="minimal-cta__box">
                <div>
                    <span class="minimal-kicker">Get Started Today</span>
                    <h2>Ready to transform your hosting experience?</h2>
                </div>
                <div class="minimal-cta__actions">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">Start Your Journey</a>
                    <a href="contact.php" class="btn btn-outline-primary btn-lg">Contact Sales</a>
                </div>
            </div>
        </div>
    </section>
</div>
