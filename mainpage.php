<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.mainpage.css?v=1">
    <title>Pokémon projekt</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<div id="pasekL">
<img src="./Images/valor.png" alt="Team Valor">
</div>
<div id="pasekR">
<img src="./Images/instinct.png" alt="Team Instinct">
</div>

<h1>Pokédex - ZSK</h1>

<div id="menu">   
        <ul>
            <li class="buttons" id="mainpage"><a href="mainpage">Main Page</a></li>
            <li class="buttonsl" id="loginButton"><a href="login">Login</a></li>
            <li class="buttonsr" id="registerButton"><a href="register">Register</a></li>
            <li class="buttonsl" id="dashboard"><a href="dashboardlogin">Dashboard</a></li>
            <li class="buttonsp" id="pokedex"><a href="pokedex">Pokédex</a></li>
            <li class="buttonsp" id="favorites"><a href="favoritepokemon">Favorites</a></li> 
        </ul> 
</div>


<div id="block">
    <h3 style="text-align: center;">
            <li class="lowerbuttons"><a>Witaj na stronie poświęconej Pokémonom.</a>
            <br>
            <a>Stronka ta, to Pokédex Gen I / Informator o teamach z gry Pokémon GO</a></li>  
    </h3>
</div>

<a id="podpis">Strona stworzona w ramach projektu PHP w klasie IV przez Phillipa Christensena i Aleksandra Jankowskiego</a>

     
<div id="black-rectangle">
                <ul id="tmV_ul"><a href="valor">Team Valor</a></ul>
                <ul id="tmI_ul"><a href="instinct">Team Instinct</a></ul>
                <ul id="tmM_ul"><a href="mystic">Team Mystic</a></ul>
</div>

<script type="text/javascript">
    document.getElementById("dashboard").onclick = function () {
        if(!"<?php echo isset($_SESSION['mail']); ?>") {
            alert("You need to be logged in to access this page!");
            return false;
        }
        if ("<?php echo isset($_SESSION['mail']); ?>") {
            window.location.href = "dashboardlogin";
        }
    }
    document.getElementById("loginButton").onclick = function () {
        setTimeout(function() {
            window.location.href = "login";
        }, 2000);
    }

    document.getElementById("registerButton").onclick = function () {
        setTimeout(function() {
            window.location.href = "register";
        }, 2000);
    }

</script>
</body>
</html>

