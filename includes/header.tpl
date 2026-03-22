<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$pagename} - {$companyname}</title>

    <link href="{$BASE_PATH_CSS}/bootstrap.min.css" rel="stylesheet">
    <link href="{$BASE_PATH_CSS}/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="{$WEB_ROOT}/index.php">
            {$companyname}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/cart.php">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/support.php">Support</a>
                </li>
                {if $loggedin}
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/clientarea.php">My Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/logout.php">Logout</a>
                </li>
                {else}
                <li class="nav-item">
                    <a class="nav-link" href="{$WEB_ROOT}/login.php">Login</a>
                </li>
                {/if}
            </ul>
        </div>
    </div>
</nav>

<div class="main-content">
