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
            <li class="buttons" id="mainpage"><a href="index">Main Page</a></li>
|        
            <li class="buttons" id="loginButton"><a href="login">Login</a></li> 
|
            <li class="buttons" id="registerButton"><a href="register">Register</a></li>
|
            <li class="buttons" id="dashboard"><a href="dashboardlogin">Dashboard</a></li>
        </ul>  
</div>

<nav id="navl">

<form id="forml" method="post" action="loginhandler">

<br>
<br>
<br>    
        <label>Email</label>
        <div class="form-control">
        <input class="field" type="text" name="mail" autocomplete="off">
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

<div id="black-rectangle">
                <ul id="tmV_ul">Team Valor</ul>
                <ul id="tmI_ul">Team Instinct</ul>
                <ul id="tmM_ul">Team Mystic</ul>
</div>

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


