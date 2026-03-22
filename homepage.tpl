<div class="hosta-home">
    <section class="enterprise-hero">
        <div class="enterprise-hero__bg">
            <div class="enterprise-hero__grid"></div>
            <div class="enterprise-hero__glow"></div>
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="enterprise-hero__badge">
                        <span class="enterprise-badge">
                            <i class="fas fa-shield-alt"></i>
                            Enterprise-Grade Hosting
                        </span>
                    </div>
                    <h1 class="enterprise-hero__title">
                        Scale Your Business with <span class="text-gradient">Confidence</span>
                    </h1>
                    <p class="enterprise-hero__desc">
                        High-performance infrastructure built for enterprise demands. 
                        99.99% uptime, military-grade security, and 24/7 dedicated support.
                    </p>
                    <div class="enterprise-hero__actions">
                        <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg btn-glow">
                            <span>Get Started</span>
                            <i class="fas fa-arrow-right ms-2"></i>
                        </a>
                        {if $loggedin}
                            <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-white btn-lg">
                                <i class="fas fa-user me-2"></i>Client Area
                            </a>
                        {else}
                            <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-white btn-lg">
                                <i class="fas fa-sign-in-alt me-2"></i>Login
                            </a>
                        {/if}
                    </div>
                    <div class="enterprise-hero__trust">
                        <span>Trusted by 10,000+ businesses worldwide</span>
                        <div class="enterprise-hero__logos">
                            <span><i class="fas fa-check-circle"></i> ISO 27001 Certified</span>
                            <span><i class="fas fa-check-circle"></i> SOC 2 Compliant</span>
                            <span><i class="fas fa-check-circle"></i> GDPR Ready</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 d-none d-lg-block">
                    <div class="enterprise-hero__visual">
                        <div class="enterprise-card-float">
                            <div class="enterprise-card-float__icon">
                                <i class="fas fa-server"></i>
                            </div>
                            <div class="enterprise-card-float__content">
                                <div class="enterprise-card-float__title">99.99% Uptime</div>
                                <div class="enterprise-card-float__subtitle">Guaranteed SLA</div>
                            </div>
                            <div class="enterprise-card-float__pulse"></div>
                        </div>
                        <div class="enterprise-card-float enterprise-card-float--2">
                            <div class="enterprise-card-float__icon">
                                <i class="fas fa-shield-virus"></i>
                            </div>
                            <div class="enterprise-card-float__content">
                                <div class="enterprise-card-float__title">DDoS Protection</div>
                                <div class="enterprise-card-float__subtitle">Always Active</div>
                            </div>
                        </div>
                        <div class="enterprise-card-float enterprise-card-float--3">
                            <div class="enterprise-card-float__icon">
                                <i class="fas fa-headset"></i>
                            </div>
                            <div class="enterprise-card-float__content">
                                <div class="enterprise-card-float__title">24/7 Support</div>
                                <div class="enterprise-card-float__subtitle">Enterprise Desk</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="enterprise-stats">
        <div class="container">
            <div class="row">
                <div class="col-6 col-lg-3">
                    <div class="enterprise-stat">
                        <div class="enterprise-stat__number" data-target="99.99">0</div>
                        <div class="enterprise-stat__label">% Uptime SLA</div>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="enterprise-stat">
                        <div class="enterprise-stat__number" data-target="150">0</div>
                        <div class="enterprise-stat__label">+ Global Locations</div>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="enterprise-stat">
                        <div class="enterprise-stat__number" data-target="10">0</div>
                        <div class="enterprise-stat__label">K+ Active Clients</div>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="enterprise-stat">
                        <div class="enterprise-stat__number" data-target="24">0</div>
                        <div class="enterprise-stat__label">/7 Support</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <section class="enterprise-products">
            <div class="container">
                <div class="enterprise-section__header">
                    <span class="enterprise-eyebrow">Solutions</span>
                    <h2>Enterprise Hosting Solutions</h2>
                    <p>Choose from our range of scalable solutions designed to meet the demands of modern businesses</p>
                </div>

                <div class="row">
                    {foreach $productGroups as $productGroup}
                        <div class="col-md-6 col-lg-4 mb-4">
                            <article class="enterprise-product-card">
                                <div class="enterprise-product-card__header">
                                    <div class="enterprise-product-card__icon">
                                        <i class="fas fa-hdd"></i>
                                    </div>
                                    <h3>{$productGroup->name}</h3>
                                </div>
                                <div class="enterprise-product-card__body">
                                    <p>{if $productGroup->tagline}{$productGroup->tagline}{else}Enterprise-grade performance with scalable resources.{/if}</p>
                                    <ul class="enterprise-product-card__features">
                                        <li><i class="fas fa-check"></i> High Performance SSDs</li>
                                        <li><i class="fas fa-check"></i> Auto-Scaling</li>
                                        <li><i class="fas fa-check"></i> Free SSL Certificates</li>
                                        <li><i class="fas fa-check"></i> Priority Support</li>
                                    </ul>
                                </div>
                                <div class="enterprise-product-card__footer">
                                    <a href="{$productGroup->getRoutePath()}" class="btn btn-outline-primary btn-block">
                                        View Plans <i class="fas fa-arrow-right ms-2"></i>
                                    </a>
                                </div>
                            </article>
                        </div>
                    {/foreach}

                    {if $registerdomainenabled}
                        <div class="col-md-6 col-lg-4 mb-4">
                            <article class="enterprise-product-card">
                                <div class="enterprise-product-card__header">
                                    <div class="enterprise-product-card__icon enterprise-product-card__icon--domain">
                                        <i class="fas fa-globe-americas"></i>
                                    </div>
                                    <h3>{lang key='orderregisterdomain'}</h3>
                                </div>
                                <div class="enterprise-product-card__body">
                                    <p>{lang key='secureYourDomain'}</p>
                                    <ul class="enterprise-product-card__features">
                                        <li><i class="fas fa-check"></i> 500+ TLDs Available</li>
                                        <li><i class="fas fa-check"></i> Free DNS Management</li>
                                        <li><i class="fas fa-check"></i> Domain Privacy</li>
                                        <li><i class="fas fa-check"></i> Instant Setup</li>
                                    </ul>
                                </div>
                                <div class="enterprise-product-card__footer">
                                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-outline-primary btn-block">
                                        {lang key='navdomainsearch'} <i class="fas fa-arrow-right ms-2"></i>
                                    </a>
                                </div>
                            </article>
                        </div>
                    {/if}

                    {if $transferdomainenabled}
                        <div class="col-md-6 col-lg-4 mb-4">
                            <article class="enterprise-product-card">
                                <div class="enterprise-product-card__header">
                                    <div class="enterprise-product-card__icon enterprise-product-card__icon--transfer">
                                        <i class="fas fa-exchange-alt"></i>
                                    </div>
                                    <h3>Domain Transfer</h3>
                                </div>
                                <div class="enterprise-product-card__body">
                                    <p>{lang key='transferExtend'}</p>
                                    <ul class="enterprise-product-card__features">
                                        <li><i class="fas fa-check"></i> Free Extension Year</li>
                                        <li><i class="fas fa-check"></i> Zero Downtime</li>
                                        <li><i class="fas fa-check"></i> Expert Assistance</li>
                                        <li><i class="fas fa-check"></i> Secure Process</li>
                                    </ul>
                                </div>
                                <div class="enterprise-product-card__footer">
                                    <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="btn btn-outline-primary btn-block">
                                        Transfer Domain <i class="fas fa-arrow-right ms-2"></i>
                                    </a>
                                </div>
                            </article>
                        </div>
                    {/if}
                </div>
            </div>
        </section>
    {/if}

    <section class="enterprise-features">
        <div class="container">
            <div class="enterprise-section__header enterprise-section__header--light">
                <span class="enterprise-eyebrow enterprise-eyebrow--light">Why Choose Us</span>
                <h2>Enterprise-Grade Infrastructure</h2>
                <p>Built for businesses that demand reliability, security, and performance</p>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-bolt"></i>
                        </div>
                        <h4>Lightning Fast</h4>
                        <p>NVMe SSD storage with global CDN integration ensures your content loads instantly, anywhere in the world.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-lock"></i>
                        </div>
                        <h4>Bank-Level Security</h4>
                        <p>Enterprise DDoS protection, WAF, and automated backups keep your data safe and compliant.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h4>Scalable Resources</h4>
                        <p>Seamlessly scale your resources up or down as your business grows, with no downtime.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-cloud"></i>
                        </div>
                        <h4>Cloud Native</h4>
                        <p>Built on enterprise cloud infrastructure with automatic failover and redundancy.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <h4>99.99% Uptime</h4>
                        <p>Industry-leading SLA with financially backed uptime guarantee. Your services stay online.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="enterprise-feature">
                        <div class="enterprise-feature__icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <h4>Dedicated Support</h4>
                        <p>Enterprise support team available 24/7/365. Knowledgeable experts ready to help.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="enterprise-cta">
        <div class="container">
            <div class="enterprise-cta__content">
                <h2>Ready to Scale Your Infrastructure?</h2>
                <p>Join thousands of enterprises that trust {$companyname} for their critical infrastructure needs.</p>
                <div class="enterprise-cta__actions">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-white btn-lg">
                        Start Your Journey <i class="fas fa-arrow-right ms-2"></i>
                    </a>
                    <a href="{routePath('knowledgebase-index')}" class="btn btn-outline-white btn-lg">
                        Explore Documentation
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="enterprise-support">
        <div class="container">
            <div class="enterprise-section__header">
                <span class="enterprise-eyebrow">Support</span>
                <h2>We're Here to Help</h2>
                <p>Get the support you need, when you need it</p>
            </div>

            <div class="row">
                <div class="col-6 col-lg-3 mb-4">
                    <a href="{routePath('announcement-index')}" class="enterprise-support-card">
                        <div class="enterprise-support-card__icon">
                            <i class="fas fa-bullhorn"></i>
                        </div>
                        <span>{lang key='announcementstitle'}</span>
                        <i class="fas fa-arrow-right enterprise-support-card__arrow"></i>
                    </a>
                </div>
                <div class="col-6 col-lg-3 mb-4">
                    <a href="serverstatus.php" class="enterprise-support-card">
                        <div class="enterprise-support-card__icon">
                            <i class="fas fa-server"></i>
                        </div>
                        <span>{lang key='networkstatustitle'}</span>
                        <i class="fas fa-arrow-right enterprise-support-card__arrow"></i>
                    </a>
                </div>
                <div class="col-6 col-lg-3 mb-4">
                    <a href="{routePath('knowledgebase-index')}" class="enterprise-support-card">
                        <div class="enterprise-support-card__icon">
                            <i class="fas fa-book"></i>
                        </div>
                        <span>{lang key='knowledgebasetitle'}</span>
                        <i class="fas fa-arrow-right enterprise-support-card__arrow"></i>
                    </a>
                </div>
                <div class="col-6 col-lg-3 mb-4">
                    <a href="submitticket.php" class="enterprise-support-card">
                        <div class="enterprise-support-card__icon">
                            <i class="fas fa-life-ring"></i>
                        </div>
                        <span>Submit Ticket</span>
                        <i class="fas fa-arrow-right enterprise-support-card__arrow"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>
</div>
