<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.login.register.css?v=1">
    <title>Login</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body id="bodyl" style="background-image: url('./Images/paski-tlo.jpg')">

<div id="pasekL-log">
<img id="vb" src="./Images/valor.png" alt="Team Valor">
</div>
<div id="pasekR-log">
<img id="ib" src="./Images/instinct.png" alt="Team Instinct">
</div>


<h1>Login</h1>

<div id="menul">
        <ul>
            <li class="buttons" id="mainpage"><a href="mainpage">Main Page</a></li>
            <li class="buttonsl" id="loginButton"><a href="login">Login</a></li>
            <li class="buttonsr" id="registerButton"><a href="register">Register</a></li>
            <li class="buttonsl" id="dashboard"><a href="dashboardlogin">Dashboard</a></li>
            <li class="buttonsp" id="pokedex"><a href="pokedex">Pokédex</a></li>
            <li class="buttonsp" id="favorites"><a href="favoritepokemon">Favorites</a></li> 
        </ul>  
</div>

<nav id="navl">

<form id="forml" method="post" action="loginhandler">


<br>    
        <label>Email</label>
        <div class="form-control">
        <input class="field" type="text" name="mail" autocomplete="on">
        </div>
        <label>Password</label>
        <div class="form-control">
        <input class="field" type="password" name="password" autocomplete="off">
        </div>
<br>
        <div class="form-control">
                <button type="submit" name="logsubmit">Login</button>
                <br>
                You may press this button if already logged in!
        </div>
<br>
<br>
<br>
        <a id="a"href="register">Sorry im stupid. I dont have an account yet..</a>
    </form>    

</nav>


</body>
</html>

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


