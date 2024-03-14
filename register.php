<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.login.register.css?v=1">
    <title>Register</title>
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
            <li><a href="wouldwouldnt.php">Would, wouldn't<li>
|
            <li><a href="login.php">Login</a><li>
        </ul>  
</div>


<nav id="navl">

<form id="forml" method="post" action="registerhandler.php">
        <label>Name</label>
        <input type="text" name="name">
        <label>Email</label>
        <input type="text" name="mail">
        <label>Password</label>
        <input type="password" name="password">
        <br>
        <button type="submit" name="regsubmit">Submit</button>
    </form>    

</nav>

</body>
</html>