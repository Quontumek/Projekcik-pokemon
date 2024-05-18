<?php
include "db.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.dex.css">
    <title>PokeDex</title>
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<h1>Pokédex</h1>

<div id="menu">
    
        <ul>
            <li><a href="login.php">Login</a></li> 
|
            <li><a href="index.php">Main page</a></li>
|
            <li id="dashlink"><a href="dashboardlogin.php">Dashboard</a><li>
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
        src="./popup.js">
</script>

</body>
</html>



