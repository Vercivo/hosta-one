<!-- Essential SEO Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

{if $templatefile == 'homepage'}
    <!-- Homepage SEO -->
    <title>Reliable Web Hosting Services | Fast & Secure Hosting</title>
    <meta name="description" content="Premium web hosting with 99.9% uptime, fast SSD storage, and 24/7 expert support. Perfect for businesses of all sizes. Get started today!">
    <meta name="keywords" content="web hosting, shared hosting, VPS hosting, dedicated servers, domain registration, SSL certificates, website hosting">
{elseif $templatefile == 'login'}
    <title>Client Login | Web Hosting Account Access</title>
    <meta name="description" content="Login to your web hosting account. Manage your domains, hosting plans, billing, and support tickets.">
{elseif $templatefile == 'register'}
    <title>Create Account | Get Started with Web Hosting</title>
    <meta name="description" content="Create your web hosting account in minutes. Choose from shared, VPS, or dedicated hosting plans.">
{elseif $templatefile == 'cart'}
    <title>Shopping Cart | Web Hosting Plans</title>
    <meta name="description" content="Review your selected hosting plans and complete your order. Secure checkout with multiple payment options.">
{elseif $templatefile == 'knowledgebase'}
    <title>Knowledge Base | Web Hosting Help & Tutorials</title>
    <meta name="description" content="Find answers to common web hosting questions. Browse tutorials, guides, and troubleshooting articles.">
{elseif $templatefile == 'contact'}
    <title>Contact Us | Web Hosting Support</title>
    <meta name="description" content="Get in touch with our support team. We're here to help 24/7 with any web hosting questions or issues.">
{else}
    <!-- Default SEO -->
    <title>Web Hosting Services | Fast, Reliable & Secure Hosting</title>
    <meta name="description" content="Premium web hosting with 99.9% uptime, SSD storage, and 24/7 support. Shared, VPS, and dedicated hosting available.">
{/if}

<!-- Robots Meta -->
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">

<!-- Canonical URL -->
<link rel="canonical" href="{
    if $seourls
        {$systemurl}{if $smarty.server.REQUEST_URI != '/'}{$smarty.server.REQUEST_URI|ltrim:'/'}{/if}
    else
        {$systemurl}{if $smarty.server.REQUEST_URI != '/'}{$smarty.server.REQUEST_URI}{/if}
    /if}">

<!-- Author and Publisher -->
<meta name="author" content="Web Hosting Company">
<meta name="publisher" content="Web Hosting Company">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Web Hosting Services">
<meta property="og:title" content="{if $templatefile == 'homepage'}Reliable Web Hosting Services{else}Web Hosting{/if}">
<meta property="og:description" content="Premium web hosting with 99.9% uptime, fast SSD storage, and 24/7 expert support.">
<meta property="og:image" content="{$systemurl}assets/img/logo.png">
<meta property="og:url" content="{$systemurl}">
<meta property="og:locale" content="en_US">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:title" content="{if $templatefile == 'homepage'}Reliable Web Hosting Services{else}Web Hosting{/if}">
<meta property="twitter:description" content="Premium web hosting with 99.9% uptime, fast SSD storage, and 24/7 expert support.">
<meta property="twitter:image" content="{$systemurl}assets/img/logo.png">

<!-- Mobile App Meta -->
<meta name="theme-color" content="#2563eb">
<meta name="msapplication-TileColor" content="#2563eb">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

<!-- Geo Tags -->
<meta name="geo.region" content="US">
<meta name="geo.placename" content="United States">

<!-- Preconnect for Performance -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="dns-prefetch" href="//cdnjs.cloudflare.com">

<!-- Styling -->
{\WHMCS\View\Asset::fontCssInclude('open-sans-family.css')}
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome-solid.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome-regular.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome-light.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome-brands.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/fonts/css/fontawesome-duotone.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<style>
    :root {
        --hosta-box-max: none;
    }

    .container,
    .minimal-wrap,
    .minimal-dashboard,
    .minimal-dashboard-links,
    .client-home-cards {
        width: 100%;
        max-width: var(--hosta-box-max) !important;
        margin-left: auto !important;
        margin-right: auto !important;
    }

    @media (max-width: 767.98px) {
        .container,
        .minimal-wrap,
        .minimal-dashboard,
        .minimal-dashboard-links,
        .client-home-cards {
            max-width: none !important;
        }
    }
</style>

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang|addslashes key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang|addslashes key="markdown.saved"}',
        saving = '{lang|addslashes key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
    {if $captcha}{$captcha->getPageJs()}{/if}
</script>

<!-- Fix logo link to point to homepage without /index -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Find logo link and fix it
    var logoLink = document.querySelector('.navbar-brand, .logo a, a.navbar-brand, header .brand, .header-logo a');
    if (logoLink) {
        var currentHref = logoLink.getAttribute('href') || '';
        // If link ends with /index or /index.php, change to just /
        if (currentHref.match(/\/index(\.php)?$/i)) {
            logoLink.setAttribute('href', '/');
        }
    }
    
    // Also fix any links with /index in them
    document.querySelectorAll('a[href*="/index"]').forEach(function(link) {
        var href = link.getAttribute('href');
        if (href && href.match(/\/index(\.php)?$/i)) {
            link.setAttribute('href', '/');
        }
    });
});
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
