<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.login.register.css?v=1">
    <title>Register</title>
</head>
<body id="bodyl" style="background-image: url('./Images/paski-tlo.jpg')">

<div id="pasekL">
<img src="./Images/valor.png" alt="Team Valor">
</div>
<div id="pasekR">
<img src="./Images/instinct.png" alt="Team Instinct">
</div>

<h1 id="h1register"><img src="./Images/HEY_YOU.png" alt="HEY YOU">Register<img src="./Images/REGISTER_NOW.png" alt="REGISTER_NOW"></h1>

<div id="menul">
        <ul>
            <li><a href="index.php">Main Page</a></li> 
|   
            <li><a href="wouldwouldnt.php">Would, wouldn't<li>
|
            <li><a href="login.php">Login</a><li>
        </ul>  
</div>


<nav id="navl">



<form id="forml" method="post" action="registerhandler.php">
<br>
<br>
<br>
        <label>Name</label>
        <input type="text" name="name">
        <label>Email</label>
        <input type="text" name="mail">
        <label>Password</label>
        <input type="password" name="password">
        <label>Confirm Password</label>
        <input type="password" name="confirmpassword">
        <br>
        <button type="submit" name="regsubmit">Submit</button>
    </form>    

    
</nav>

</body>
</html>