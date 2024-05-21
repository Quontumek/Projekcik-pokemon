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
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<h1>Pokédex</h1>

<div id="menu">
    
        <ul>
            <li class="buttons" id="mainpage"><a href="index.php">Main Page</a></li>
|        
            <li class="buttons" id="loginButton"><a href="login.php">Login</a></li> 
|
            <li class="buttons" id="registerButton"><a href="register.php">Register</a></li>
|
            <li class="buttons" id="dashboard"><a href="dashboardlogin.php">Dashboard</a></li>
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
            <div class="elementToPopup">
                    
                    <?php
                       $sql2 = "SELECT pokemon.*, 
                       stats.*, 
                       primary_type.type AS PrimaryType, 
                       secondary_type.type AS SecondaryType
                FROM pokemon
                INNER JOIN stats ON pokemon.ID = stats.ID
                LEFT JOIN types AS primary_type ON pokemon.Primary_type = primary_type.ID
                LEFT JOIN types AS secondary_type ON pokemon.Secondary_type = secondary_type.ID
                WHERE pokemon.ID = $pokeid;
                ";
                       $result = $conn->query($sql2);
                       while($row = $result->fetch_assoc()){
                        echo "<table>
                        <caption>
                            ".$row["ID"].". ".$row["Pokemon_name"]."
                        </caption>
                        <thead>
                            <th>HP</th>
                            <th>Attack</th>
                            <th>Defense</th>
                            <th>Special Attack</th>
                            <th>Special Defense</th>
                            <th>Speed</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>".$row["HP"]."</td>
                                <td>".$row["ATK"]."</td>
                                <td>".$row["DEF"]."</td>
                                <td>".$row["SATK"]."</td>
                                <td>".$row["SDEF"]."</td>
                                <td>".$row["SPD"]."</td>
                            </tr>
                        </tbody>
                        </table>
                        <section><p>Type:</p>
                        ";
                        $types = [
                            0 => '',
                            1 => 'normal',
                            2 => 'fire',
                            3 => 'water',
                            4 => 'electric',
                            5 => 'grass',
                            6 => 'ice',
                            7 => 'fighting',
                            8 => 'poison',
                            9 => 'ground',
                            10 => 'flying',
                            11 => 'psychic',
                            12 => 'bug',
                            13 => 'rock',
                            14 => 'ghost',
                            15 => 'dragon',
                            16 => 'dark',
                            17 => 'steel',
                            18 => 'fairy'
                        ];
                        
                        $typeClass = $types[$row["Primary_type"]] ?? 'unknown';
                        $typeClass2 = $types[$row["Secondary_type"]] ?? 'unknown';
                        echo "<div class=\"$typeClass type\">" . ucfirst($typeClass) . "</div>";
                        if($row["Secondary_type"] == 0){
                            echo "";
                        } else{
                        echo "<div class=\"$typeClass2 type\">" . ucfirst($typeClass2) . "</div>";
                        }



                        echo "</section>";
                       }
                    ?>
                </div>
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
            window.location.href = "dashboardlogin.php";
        }
    }
</script>

</body>
</html>



