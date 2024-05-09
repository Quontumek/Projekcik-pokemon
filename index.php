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
            <li><a href="login.php">Login</a></li> 
|
            <li><a href="register.php">Register</a></li>
|
            <li id="dashlink"><a href="dashboardlogin.php">Dashboard</a><li>
        </ul>  
</div>


<div id="block">
    <h3 style="text-align: center;">
            <li>Poké-Dex</li>  
</div>

<div id="block">
    <h3 style="text-align: center;"> 
            <li><a href="wouldwouldnt.php">Would / Wouldn't</a><li>
</div>


</body>
</html>


<script type="text/javascript">
        document.getElementById("dashlink").onclick = function () {
                if (!isset $_SESSION["mail"])
        alert("You need to be logged in to access this page!");
        header ("Location: login.php");
        };
        if (isset $_SESSION["mail"])
        header ("Location: dashboardlogin.php");
</script>