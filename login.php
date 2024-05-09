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
</head>
<body id="bodyl" style="background-image: url('./Images/paski-tlo.jpg')">

<div id="pasekL">
<img src="./Images/valor.png" alt="Team Valor">
</div>
<div id="pasekR">
<img src="./Images/instinct.png" alt="Team Instinct">
</div>


<h1>Login</h1>

<div id="menul">
        <ul>
                <li><a href="index.php">Main Page</a></li> 
|   
                <li><a href="wouldwouldnt.php"></a>Would, wouldn't</a><li>
|
                <li id="dashlink"><a href="dashboardlogin.php">Dashboard</a><li>
        </ul>  
</div>

<nav id="navl">

<form id="forml" method="post" action="loginhandler.php">

<br>
<br>
<br>
        <label>Email</label>
        <input type="text" name="mail" autocomplete="off">
        <label>Password</label>
        <input type="password" name="password" autocomplete="off">
<br>
        <button class="btn" type="submit" name="logsubmit">Submit</button>
<br>
<br>
<br>
        <a id="a"href="register.php">Sorry im stupid. I dont have an account yet</a>
    </form>    

</nav>

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