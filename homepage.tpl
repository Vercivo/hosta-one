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

<div class="enterprise-landing">
    <section class="enterprise-hero">
        <div class="enterprise-shell">
            <div class="enterprise-hero__frame">
                <div class="enterprise-hero__grid">
                    <div class="enterprise-hero__copy">
                        <span class="enterprise-kicker">Managed Cloud Operations</span>
                        <h1 class="enterprise-hero__title">
                            Infrastructure that stays calm when your business gets complicated.
                        </h1>
                        <p class="enterprise-hero__desc">
                            {$companyname} gives growing companies a steadier platform: resilient hosting,
                            disciplined support, and a cleaner operational layer for services, billing, and domains.
                        </p>

                        <div class="enterprise-hero__actions">
                            <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">
                                Explore Solutions
                            </a>
                            {if $loggedin}
                                <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-outline-primary btn-lg">
                                    Open Client Area
                                </a>
                            {else}
                                <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-primary btn-lg">
                                    Client Login
                                </a>
                            {/if}
                        </div>

                        <div class="enterprise-proof">
                            <article class="enterprise-proof__item">
                                <strong>99.99%</strong>
                                <span>SLA-backed uptime posture</span>
                            </article>
                            <article class="enterprise-proof__item">
                                <strong>24/7</strong>
                                <span>Support coverage with accountable escalation</span>
                            </article>
                            <article class="enterprise-proof__item">
                                <strong>1 View</strong>
                                <span>Services, domains, invoices, and tickets together</span>
                            </article>
                        </div>
                    </div>

                    <aside class="enterprise-console">
                        <div class="enterprise-console__top">
                            <span class="enterprise-console__label">Operations Snapshot</span>
                            <span class="enterprise-console__status">
                                <i class="fas fa-circle"></i>
                                Stable
                            </span>
                        </div>

                        <div class="enterprise-console__surface">
                            <div class="enterprise-console__metric">
                                <span>Traffic orchestration</span>
                                <strong>Multi-region delivery lanes</strong>
                            </div>
                            <div class="enterprise-console__metric">
                                <span>Recovery posture</span>
                                <strong>Backups, failover, and alerting aligned</strong>
                            </div>
                            <div class="enterprise-console__metric">
                                <span>Service desk</span>
                                <strong>Operational support with ownership</strong>
                            </div>
                        </div>

                        <div class="enterprise-console__stack">
                            <div class="enterprise-console__stack-item">
                                <small>Security</small>
                                <strong>WAF, DDoS mitigation, SSL, backups</strong>
                            </div>
                            <div class="enterprise-console__stack-item">
                                <small>Performance</small>
                                <strong>Modern caching, SSD storage, optimized delivery</strong>
                            </div>
                            <div class="enterprise-console__stack-item">
                                <small>Control</small>
                                <strong>Client portal, billing workflows, support history</strong>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>

    <section class="enterprise-trustbar">
        <div class="enterprise-shell">
            <div class="enterprise-trustbar__grid">
                <article class="enterprise-trustbar__item">
                    <span>Governance</span>
                    <strong>Clear ownership across support, billing, and provisioning.</strong>
                </article>
                <article class="enterprise-trustbar__item">
                    <span>Performance</span>
                    <strong>Hosting built for dependable response under real workloads.</strong>
                </article>
                <article class="enterprise-trustbar__item">
                    <span>Security</span>
                    <strong>Protective layers designed into the operating model.</strong>
                </article>
                <article class="enterprise-trustbar__item">
                    <span>Continuity</span>
                    <strong>Fewer blind spots when teams, sites, and services expand.</strong>
                </article>
            </div>
        </div>
    </section>

    {if !empty($productGroups) || $registerdomainenabled || $transferdomainenabled}
        <section class="enterprise-section enterprise-section--surface">
            <div class="enterprise-shell">
                <div class="enterprise-heading">
                    <span class="enterprise-kicker">Solution Portfolio</span>
                    <h2>Choose the operating model that matches your next phase.</h2>
                    <p>
                        Every offer is designed to reduce operational drag while giving your team a sharper,
                        more trustworthy front door for infrastructure and account management.
                    </p>
                </div>

                <div class="enterprise-solution-grid">
                    {foreach $productGroups as $productGroup}
                        <article class="solution-card">
                            <span class="solution-card__index">0{$productGroup@iteration}</span>
                            <h3>{$productGroup->name}</h3>
                            <p>
                                {if $productGroup->tagline}
                                    {$productGroup->tagline}
                                {else}
                                    Enterprise-ready hosting with clear service boundaries and room to grow.
                                {/if}
                            </p>
                            <ul class="solution-card__list">
                                <li>Predictable performance baselines</li>
                                <li>Managed provisioning and rollout support</li>
                                <li>Security, billing, and support in one flow</li>
                            </ul>
                            <a href="{$productGroup->getRoutePath()}" class="solution-card__link">
                                Review plans
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/foreach}

                    {if $registerdomainenabled}
                        <article class="solution-card solution-card--accent">
                            <span class="solution-card__index">DNS</span>
                            <h3>{lang key='orderregisterdomain'}</h3>
                            <p>{lang key='secureYourDomain'}</p>
                            <ul class="solution-card__list">
                                <li>Domain search and registration workflows</li>
                                <li>Unified management beside hosting services</li>
                                <li>Cleaner ownership over digital assets</li>
                            </ul>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="solution-card__link">
                                {lang key='navdomainsearch'}
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}

                    {if $transferdomainenabled}
                        <article class="solution-card">
                            <span class="solution-card__index">XFR</span>
                            <h3>{lang key='transferYourDomain'}</h3>
                            <p>{lang key='transferExtend'}</p>
                            <ul class="solution-card__list">
                                <li>Consolidate domain operations in one portal</li>
                                <li>Reduce handoffs between vendors and teams</li>
                                <li>Keep renewal visibility close to the account view</li>
                            </ul>
                            <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer" class="solution-card__link">
                                Transfer now
                                <i class="fas fa-arrow-right"></i>
                            </a>
                        </article>
                    {/if}
                </div>
            </div>
        </section>
    {/if}

    <section class="enterprise-section">
        <div class="enterprise-shell">
            <div class="enterprise-operating">
                <div class="enterprise-operating__copy">
                    <span class="enterprise-kicker">Operating Model</span>
                    <h2>Built for teams that need clarity across performance, risk, and support.</h2>
                    <p>
                        The experience is intentionally split into two layers: a polished public-facing landing page
                        for trust and conversion, and a structured client workspace for day-to-day operations.
                    </p>

                    <div class="enterprise-capability-list">
                        <article class="capability-card">
                            <span class="capability-card__mark">01</span>
                            <div>
                                <h3>Architecture with headroom</h3>
                                <p>Support current demand while leaving room for traffic growth, service expansion, and cleaner migrations.</p>
                            </div>
                        </article>
                        <article class="capability-card">
                            <span class="capability-card__mark">02</span>
                            <div>
                                <h3>Support that owns outcomes</h3>
                                <p>Escalations, account requests, and service issues all route through a more coherent operating surface.</p>
                            </div>
                        </article>
                        <article class="capability-card">
                            <span class="capability-card__mark">03</span>
                            <div>
                                <h3>Enterprise presentation</h3>
                                <p>A calmer visual system builds trust faster than cluttered layouts and generic hosting storefront patterns.</p>
                            </div>
                        </article>
                    </div>
                </div>

                <div class="enterprise-architecture">
                    <div class="enterprise-architecture__header">
                        <span>Platform Control Plane</span>
                        <strong>Designed for reliability and customer confidence</strong>
                    </div>
                    <div class="enterprise-architecture__row">
                        <span>Edge Delivery</span>
                        <p>Fast request handling, SSL coverage, and cleaner first impressions.</p>
                    </div>
                    <div class="enterprise-architecture__row">
                        <span>Core Hosting</span>
                        <p>Services organized around predictable provisioning and performance.</p>
                    </div>
                    <div class="enterprise-architecture__row">
                        <span>Support Layer</span>
                        <p>Tickets, knowledge, and announcements available from every stage of the journey.</p>
                    </div>
                    <div class="enterprise-architecture__row">
                        <span>Client Workspace</span>
                        <p>Billing, renewals, domains, and account operations gathered into one dependable portal.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="enterprise-section enterprise-section--warm">
        <div class="enterprise-shell">
            <div class="enterprise-heading enterprise-heading--center">
                <span class="enterprise-kicker">Launch Pattern</span>
                <h2>A landing page experience that feels structured from the first scroll.</h2>
                <p>
                    The homepage now behaves like a proper commercial front door: credibility first, offers second,
                    operations narrative third, and support access close at hand.
                </p>
            </div>

            <div class="enterprise-steps">
                <article class="enterprise-step">
                    <span class="enterprise-step__index">01</span>
                    <h3>Establish trust</h3>
                    <p>Lead with reliability, support posture, and an interface that feels deliberate.</p>
                </article>
                <article class="enterprise-step">
                    <span class="enterprise-step__index">02</span>
                    <h3>Present solutions</h3>
                    <p>Make product groups and domain actions feel like part of one enterprise offering.</p>
                </article>
                <article class="enterprise-step">
                    <span class="enterprise-step__index">03</span>
                    <h3>Guide next action</h3>
                    <p>Move visitors toward purchase, login, or support without cluttering the page.</p>
                </article>
            </div>
        </div>
    </section>

    <section class="enterprise-section enterprise-section--surface">
        <div class="enterprise-shell">
            <div class="enterprise-heading">
                <span class="enterprise-kicker">Support Surface</span>
                <h2>Every high-friction task has a clear route.</h2>
                <p>
                    Keep announcements, status, documentation, and ticket creation visible so customers do not have
                    to hunt for help when urgency is high.
                </p>
            </div>

            <div class="enterprise-resource-grid">
                <a href="{routePath('announcement-index')}" class="resource-card">
                    <span class="resource-card__icon"><i class="fas fa-bullhorn"></i></span>
                    <strong>{lang key='announcementstitle'}</strong>
                    <p>Platform news, maintenance notices, and account-wide communication.</p>
                </a>
                <a href="serverstatus.php" class="resource-card">
                    <span class="resource-card__icon"><i class="fas fa-server"></i></span>
                    <strong>{lang key='networkstatustitle'}</strong>
                    <p>Operational visibility for the services your customers rely on.</p>
                </a>
                <a href="{routePath('knowledgebase-index')}" class="resource-card">
                    <span class="resource-card__icon"><i class="fas fa-book"></i></span>
                    <strong>{lang key='knowledgebasetitle'}</strong>
                    <p>Self-service answers that reduce friction before support is needed.</p>
                </a>
                <a href="submitticket.php" class="resource-card">
                    <span class="resource-card__icon"><i class="fas fa-life-ring"></i></span>
                    <strong>{lang key='homepage.submitTicket'}</strong>
                    <p>Fast access to support for account, billing, and hosting issues.</p>
                </a>
            </div>
        </div>
    </section>

    <section class="enterprise-cta">
        <div class="enterprise-shell">
            <div class="enterprise-cta__content">
                <div>
                    <span class="enterprise-kicker enterprise-kicker--inverse">Ready To Launch</span>
                    <h2>Turn the homepage into a sharper sales surface without sacrificing WHMCS stability.</h2>
                </div>
                <div class="enterprise-cta__actions">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg">
                        Start With Hosting
                    </a>
                    <a href="contact.php" class="btn btn-outline-primary btn-lg">
                        Talk To Sales
                    </a>
                </div>
            </div>
        </div>
    </section>
</div>
