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
