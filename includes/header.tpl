<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$pagetitle} - {$companyname}</title>

    <link href="{$WEB_ROOT}/templates/{$template}/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>

<header class="enterprise-header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="{$WEB_ROOT}/index.php">{$companyname}</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="main-nav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{$WEB_ROOT}/index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{$WEB_ROOT}/cart.php">Store</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{$WEB_ROOT}/knowledgebase">Knowledgebase</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{$WEB_ROOT}/submitticket.php">Contact</a>
                    </li>
                    {if $loggedin}
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="account-dropdown" data-bs-toggle="dropdown">
                                Account
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php">Dashboard</a></li>
                                <li><a class="dropdown-item" href="{$WEB_ROOT}/logout.php">Logout</a></li>
                            </ul>
                        </li>
                    {else}
                        <li class="nav-item">
                            <a class="nav-link" href="{$WEB_ROOT}/login.php">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-primary" href="{$WEB_ROOT}/register.php">Register</a>
                        </li>
                    {/if}
                </ul>
            </div>
        </div>
    </nav>
</header>
