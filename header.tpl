<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body class="primary-bg-color" data-phone-cc-input="{$phoneNumberInputStyle}">
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}

    <header id="header" class="header">
        {if $loggedin}
            <div class="topbar">
                <div class="container">
                    <div class="d-flex">
                        <div class="mr-auto">
                            <button type="button" class="btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                                <i class="far fa-flag"></i>
                                {if count($clientAlerts) > 0}
                                    {count($clientAlerts)}
                                    <span class="d-none d-sm-inline">{lang key='notifications'}</span>
                                {else}
                                    <span class="d-sm-none">0</span>
                                    <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                                {/if}
                            </button>
                            <div id="accountNotificationsContent" class="w-hidden">
                                <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                                </ul>
                            </div>
                        </div>

                        <div class="ml-auto">
                            <div class="input-group active-client" role="group">
                                <div class="input-group-prepend d-none d-md-inline">
                                    <button type="button" class="btn btn-secondary" data-toggle="popover">
                                        <i class="fas fa-plus"></i>
                                        <span class="d-none d-lg-inline">{lang key='quicknavstartnew'}</span>
                                    </button>
                                </div>
                                <div class="input-group-prepend">
                                    <button type="button" class="btn btn-secondary dropdown-toggle split-btn-dropdown" data-toggle="dropdown">
                                        <span class="sr-only">{lang key='toggleDropdown'}</span>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                    </div>
                                </div>
                                <div class="input-group-append">
                                    <a href="{$WEB_ROOT}/logout.php" class="btn btn-secondary">
                                        <i class="fas fa-sign-out-alt"></i>
                                        <span class="d-none d-lg-inline">{lang key='logout'}</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {/if}
        <div class="navbar navbar-expand-xl navbar-light main-navbar">
            <div class="container">
                <a href="{$WEB_ROOT}/" class="navbar-brand">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}" class="logo">
                    {else}
                        {$companyname}
                    {/if}
                </a>

                <form method="post" action="{routePath('knowledgebase-search')}" class="form-inline ml-auto">
                    <div class="input-group search d-none d-xl-flex">
                        <div class="input-group-prepend">
                            <button class="btn btn-default" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                        <input class="form-control appended-form-control font-weight-light" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                    </div>
                </form>

                <ul class="navbar-nav toolbar">
                    <li class="nav-item ml-3">
                        <a class="btn nav-link cart-btn" href="{$WEB_ROOT}/cart.php?a=view">
                            <i class="far fa-shopping-cart fa-fw"></i>
                            <span id="cartItemCount" class="badge badge-info">{$cartitemcount}</span>
                            <span class="sr-only">{lang key="carttitle"}</span>
                        </a>
                    </li>
                    <li class="nav-item ml-3 d-xl-none">
                        <button class="btn nav-link" type="button" data-toggle="collapse" data-target="#mainNavbar">
                            <span class="fas fa-bars fa-fw"></span>
                        </button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar navbar-expand-xl main-navbar-wrapper">
            <div class="container">
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <form method="post" action="{routePath('knowledgebase-search')}" class="d-xl-none">
                        <div class="input-group search w-100 mb-2">
                            <div class="input-group-prepend">
                                <button class="btn btn-default" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                            <input class="form-control prepended-form-control" type="text" name="search" placeholder="{lang key="searchOurKnowledgebase"}...">
                        </div>
                    </form>
                    <ul id="nav" class="navbar-nav mr-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    </ul>
                </div>
            </div>
        </div>
    </header>
