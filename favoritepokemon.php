<?php
include "db.php";
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$userId = $_SESSION['user_id'];
$searchQuery = "";

if (isset($_POST['submit-search'])) {
    $searchQuery = mysqli_real_escape_string($conn, $_POST['search']);
}
if (isset($_POST['reset-search'])) {
    $searchQuery = "";
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.dex.css">
    <title>Favorite Pokémon</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<h1>Favorite Pokémon</h1>

<div id="menu">
    <ul>
        <li class="buttons" id="mainpage"><a href="index.php">Main Page</a></li>
        <li class="buttons" id="loginButton"><a href="login.php">Login</a></li>
        <li class="buttons" id="registerButton"><a href="register.php">Register</a></li>
        <li class="buttons" id="dashboard"><a href="dashboardlogin.php">Dashboard</a></li>
        <li class="buttons" id="pokedex"><a href="pokedex.php">Pokédex</a></li>

    </ul>
</div>

<br>

<nav id="search">
    <form action="favoritepokemon.php" method="POST">
        <button id="resetbtn" type="submit" name="reset-search">Reset</button>
        <input id="searchbar" type="text" name="search" placeholder="Search for a Pokémon">
        <button id="searchbtn" type="submit" name="submit-search">Search</button>
    </form>
</nav>

<div id="dex">
<?php

$typeMap = [
    0 => '', 1 => 'normal', 2 => 'fire', 3 => 'water', 4 => 'electric',
    5 => 'grass', 6 => 'ice', 7 => 'fighting', 8 => 'poison', 9 => 'ground',
    10 => 'flying', 11 => 'psychic', 12 => 'bug', 13 => 'rock', 14 => 'ghost',
    15 => 'dragon', 16 => 'dark', 17 => 'steel', 18 => 'fairy'
];

$searchCondition = $searchQuery ? "AND pokemon.Pokemon_name LIKE '%$searchQuery%'" : "";

$sql = "SELECT images.image, pokemon.*, stats.*, 
        primary_type.type AS PrimaryType, secondary_type.type AS SecondaryType
        FROM favorites
        INNER JOIN pokemon ON favorites.pokemon_id = pokemon.ID
        INNER JOIN images ON pokemon.ID = images.ID
        INNER JOIN stats ON pokemon.ID = stats.ID
        LEFT JOIN types AS primary_type ON pokemon.Primary_type = primary_type.ID
        LEFT JOIN types AS secondary_type ON pokemon.Secondary_type = secondary_type.ID
        WHERE favorites.user_id = $userId $searchCondition
        ORDER BY images.ID ASC";

$res = mysqli_query($conn, $sql);
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
        $primaryType = $typeMap[$row["Primary_type"]] ?? 'unknown';
        $secondaryType = $typeMap[$row["Secondary_type"]] ?? null;
        $backgroundStyle = $secondaryType
            ? "background: linear-gradient(108deg, var(--primary-color) 50%, var(--secondary-color) 50%);
             --primary-color: var(--{$primaryType}); --secondary-color: var(--{$secondaryType});"
            : "background-color: var(--{$primaryType});";

        $isFavorite = true;
        ?>
        <div class="alb elementToHover" id="<?=$row['ID']?>">
            <img src="uploads/<?=$row['image']?>">
            <div class="elementToPopup">
                <table>
                    <caption>
                        <span class="pokemon-id"><?=$row["ID"]?></span>
                        <span class="pokemon-name"><?=$row["Pokemon_name"]?></span>
                        <span id="star" class="favourite selected" data-id="<?=$row['ID']?>" onclick="toggleFavorite(<?=$row['ID']?>)"><?= $isFavorite ? '★' : '☆' ?></span>
                    </caption>
                    <thead style="background-color: white;">
                        <th style="color: Red;">HP</th>
                        <th style="color: Orange;">Attack</th>
                        <th style="color: rgb(220, 202, 50);">Defense</th>
                        <th style="color: rgb(0, 0, 150)">Special Attack</th>
                        <th style="color: rgb(0, 150, 0);">Special Defense</th>
                        <th style="color: hotpink;">Speed</th>
                    </thead>
                    <tbody style="background-color: white; color: black;">
                        <tr>
                            <td><?=$row["HP"]?></td>
                            <td><?=$row["ATK"]?></td>
                            <td><?=$row["DEF"]?></td>
                            <td><?=$row["SATK"]?></td>
                            <td><?=$row["SDEF"]?></td>
                            <td><?=$row["SPD"]?></td>
                        </tr>
                    </tbody>
                </table>
                <img id="innerpicture" src="uploads/<?=$row['image']?>">
                <div class="description"><?=$row["Description"]; ?></div>
                <section>
                    <div class="type-weight-container">
                        <p>Type:</p>
                        <div class="type" style="<?=$backgroundStyle?>"><?= ucfirst($primaryType) . ($secondaryType ? ' / ' . ucfirst($secondaryType) : '') ?></div>
                        <div class="weight-height">
                            <p>Weight/Height</p>
                            <p id="w-h-numbers"><?= $row["Avg_weight"] / 10 ?>kg/<?= number_format($row["Avg_height"] * 0.3048, 2) ?>m</p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
<?php 
    }
} else {
    echo "<p>No favorite Pokémon found.</p>";
}
?>

</div>

<script src="./js/popup.js"></script>
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
    function toggleFavorite(pokemonId) {
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "toggle_favorite.php", true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            console.log("Response status:", xhr.status);
            console.log("Response text:", xhr.responseText);
            if (xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                console.log("Response JSON:", response);
                const favoriteSpan = document.querySelector(`.favourite[data-id='${pokemonId}']`);
                if (response.success) {
                    if (response.isFavorite) {
                        favoriteSpan.classList.add('selected');
                        favoriteSpan.innerHTML = '★';
                    } else {
                        favoriteSpan.classList.remove('selected');
                        favoriteSpan.innerHTML = '☆';
                    }
                } else {
                    alert(response.message || "An error occurred. Please try again.");
                }
            } else {
                alert("An error occurred. Please try again.");
            }
        }
    };
    xhr.send(JSON.stringify({ pokemonId: pokemonId }));
}
</script>

</body>
</html>
