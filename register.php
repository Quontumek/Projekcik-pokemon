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
        <div class="form-control">
                <label for="email">E-mail</label>
                <input type="text" id="email" placeholder="Enter e-mail" data-validate="email">
                <div class="error-holder"></div>
        </div>
        <div class="form-control">
                <label for="nip">Name</label>
                <input type="text" id="name" placeholder="Enter name" data-validate="name">
                <div class="error-holder"></div>
        </div>
            <div class="form-control">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter password" data-validate="password">
        <div class="error-holder"></div>
        </div>
        <div class="form-control">
                <label for="password2">Confirm password</label>
                <input type="password" id="password2" placeholder="Confirm password" data-validate="password-repeat">
                <div class="error-holder"></div>
        </div>
<br>
        <button type="submit" name="regsubmit">Submit</button>

</form>    
</nav>

<script>
    <script src="./validation.js"></script>
</script>


</body>
</html>