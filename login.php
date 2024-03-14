<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.login.register.css?v=1">
    <title>Login</title>
</head>
<body id="bodyl">

<div id="pasekL">
</div>
<div id="pasekR">
</div>    

<div id="menul">
        <ul>
            <li><a href="index.php">Main Page</a></li> 
|   
            <li><a href="wouldwouldnt.php">Would, wouldn't</a><li>
        </ul>  
</div>

<nav id="navl">

<form id="forml" method="post" action="loginhandler.php">
        <label>Email</label>
        <input type="text" name="mail">
        <label>Password</label>
        <input type="password" name="password">
        <br>
        <button type="submit" name="logsubmit">Submit</button>
        <br>
        <br>
        <br>
        <a href="register.php">I dont have an account yet</a>
    </form>    

</nav>

</body>
</html>