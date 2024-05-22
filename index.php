<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.index.css?v=1">
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

<h1>Pokémon dex-pass</h1>

<div id="menu">
    
        <ul>
            <li class="buttons" id="mainpage"><a href="index.php">Main Page</a></li>
            <li class="buttons" id="loginButton"><a href="login.php">Login</a></li>
            <li class="buttons" id="registerButton"><a href="register.php">Register</a></li>
            <li class="buttons" id="dashboard"><a href="dashboardlogin.php">Dashboard</a></li>
            <li class="buttons" id="favorites"><a href="favoritepokemon.php">Favorites</a></li>        
        </ul> 


</div>


<div id="block">
    <h3 style="text-align: center;">
            <li class="lowerbuttons"><a href="pokedex">Poké-Dex</a></li>  
</div>



     
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

