<?php
include "db.php";

session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.dex.css">
    <title>PokeDex</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<h1>Pokédex</h1>

<div id="menu">
    
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

<div id="dex">

<?php
    $sql = "SELECT * FROM images ORDER BY ID ASC";
    $res = mysqli_query($conn,$sql);
    $pokeid = 0;
    if(mysqli_num_rows($res)> 0){
        while($images = mysqli_fetch_assoc($res)){ 
            $pokeid = $pokeid + 1;
         ?>
        <div class="alb elementToHover" id="<?=$pokeid?>">
            <img src="uploads/<?=$images['image']?>">
            <p class="elementToPopup">Tu będzie popup</p>
        </div>
            <?php 
    }
}?>
    

   
</div>


<script
        src="./js/popup.js">
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



