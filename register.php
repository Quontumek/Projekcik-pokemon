<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.login.register.css?v=1">
    <title>Register</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body id="bodyr" style="background-image: url('./Images/paski-tlo.jpg')">

<div id="pasekL-reg">
<img id="vb" src="./Images/valor.png" alt="Team Valor">
</div>
<div id="pasekR-reg">
<img id="ib" src="./Images/instinct.png" alt="Team Instinct">
</div>

<h1 id="h1register"><img id="lir" src="./Images/HEY_YOU.png" alt="HEY YOU">Register<img id="rir" src="./Images/REGISTER_NOW.png" alt="REGISTER NOW"></h1>

<div id="menur">
<ul>
            <li class="buttons" id="mainpage"><a href="mainpage">Main Page</a></li>
            <li class="buttonsl" id="loginButton"><a href="login">Login</a></li>
            <li class="buttonsr" id="registerButton"><a href="register">Register</a></li>
            <li class="buttonsl" id="dashboard"><a href="dashboardlogin">Dashboard</a></li>
            <li class="buttonsp" id="pokedex"><a href="pokedex">Pokédex</a></li>
            <li class="buttonsp" id="favorites"><a href="favoritepokemon">Favorites</a></li> 
        </ul>  
</div>


<nav id="navr">
<form id="my_form" action="registerhandler" method="post">


                <label for="Email">E-mail</label>
            <div class="form-control">
                <input type="text" id="email" name="email" placeholder="Enter e-mail" data-validate="email">
                <div class="error-holder"></div>
            </div>
<br>
                <label for="Name">Name</label>
            <div class="form-control">
                <input type="text" id="name" name="name" placeholder="Enter name" data-validate="name">
                <div class="error-holder"></div>
            </div>
<br>
                <label for="Password">Password</label>
            <div class="form-control">
                <input type="password" id="password" name="password" placeholder="Enter password" data-validate="password">
                <div class="error-holder"></div>
            </div>
<br>
                <label for="password2">Confirm password</label>
            <div class="form-control">
                <input type="password" id="password2" placeholder="Confirm password" data-validate="password-repeat">
                <div class="error-holder"></div>
            </div>
<br>
            <div id="a" class="form-control">
                <button type="submit" name="regsubmit">Register</button>
            </div>
        </form>
</nav>

<script 
        src="./js/validation.js">
</script>

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
</script>


</body>
</html>