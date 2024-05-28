<?php
include "db.php";
session_start();


$searchQuery = "";
$filter1 = "";
$filter2 = "";
$filter3 = "";

if (isset($_POST['submit-search'])) {
    $searchQuery = mysqli_real_escape_string($conn, $_POST['search']);
}

if (isset($_POST['reset-search'])) {
    $searchQuery = "";
}

if (isset($_POST['filter-submit'])) {
    $filter1 = $_POST['filter1'];
    $filter2 = $_POST['filter2'];
    $filter3 = $_POST['filter3'];
}

$isLoggedIn = isset($_SESSION['user_id']);
$userId = $isLoggedIn ? $_SESSION['user_id'] : null;
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.dex.css">
    <title>PokeDex - Gen 1</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body style="background-image: url('./Images/paski-tlo.jpg')">

<h1>Pokédex - Gen 1</h1>

<div id="menu">
    
        <ul>
            <li class="buttons" id="mainpage"><a href="mainpage">Main Page</a></li>
            <li class="buttonsl" id="loginButton"><a href="login">Login</a></li>
            <li class="buttonsr" id="registerButton"><a href="register">Register</a></li>
            <li class="buttonsl" id="dashboard"><a href="dashboardlogin">Dashboard</a></li>
            <li class="buttonsp" id="pokedex"><a href="pokedex">Pokédex</a></li>
            <li class="buttonsp" id="favorites"><a href="favoritepokemon">Favorites</a></li> 
        </ul> 
</div>

<br>

<nav id="search">
    <form action="pokedex.php" method="POST">
        <button id="resetbtn" type="submit" name="reset-search">Reset</button>
        <input id="searchbar" type="text" name="search" placeholder="Search for a Pokémon">
        <button id="searchbtn" type="submit" name="submit-search">Search</button>
    </form>
</nav>
<nav id="sort">
    <form action="pokedex.php" method="POST">

        <label>Sort by:</label>
        <label for="filter1">Stat</label>
            <select name="filter1">
            <option value="HP" <?php if($filter1 == 'HP') echo 'selected'; ?>>HP</option>
            <option value="ATK" <?php if($filter1 == 'ATK') echo 'selected'; ?>>Attack</option>
            <option value="DEF" <?php if($filter1 == 'DEF') echo 'selected'; ?>>Defense</option>
            <option value="SATK" <?php if($filter1 == 'SATK') echo 'selected'; ?>>Special Attack</option>
            <option value="SDEF" <?php if($filter1 == 'SDEF') echo 'selected'; ?>>Special Defense</option>
            <option value="SPD" <?php if($filter1 == 'SPD') echo 'selected'; ?>>Speed</option>
            </select>

        <label for="filter2">Order</label>
            <select name="filter2">
                <option value="ASC" <?php if($filter2 == 'ASC') echo 'selected'; ?>>Ascending</option>
                <option value="DESC" <?php if($filter2 == 'DESC') echo 'selected'; ?>>Descending</option>
            </select>
        
        <label for="filter3">Type</label>
            <select name="filter3">
                <option value="all" <?php if($filter3 == 'all') echo 'selected'; ?>>All</option>
                <option value="Normal" <?php if($filter3 == 'Normal') echo 'selected'; ?>>Normal</option>
                <option value="Fire" <?php if($filter3 == 'Fire') echo 'selected'; ?>>Fire</option>
                <option value="Water" <?php if($filter3 == 'Water') echo 'selected'; ?>>Water</option>
                <option value="Electric" <?php if($filter3 == 'Electric') echo 'selected'; ?>>Electric</option>
                <option value="Grass" <?php if($filter3 == 'Grass') echo 'selected'; ?>>Grass</option>
                <option value="Ice" <?php if($filter3 == 'Ice') echo 'selected'; ?>>Ice</option>
                <option value="Fighting" <?php if($filter3 == 'Fighting') echo 'selected'; ?>>Fighting</option>
                <option value="Poison" <?php if($filter3 == 'Poison') echo 'selected'; ?>>Poison</option>
                <option value="Ground" <?php if($filter3 == 'Ground') echo 'selected'; ?>>Ground</option>
                <option value="Flying" <?php if($filter3 == 'Flying') echo 'selected'; ?>>Flying</option>
                <option value="Psychic" <?php if($filter3 == 'Psychic') echo 'selected'; ?>>Psychic</option>
                <option value="Bug" <?php if($filter3 == 'Bug') echo 'selected'; ?>>Bug</option>
                <option value="Rock" <?php if($filter3 == 'Rock') echo 'selected'; ?>>Rock</option>
                <option value="Ghost" <?php if($filter3 == 'Ghost') echo 'selected'; ?>>Ghost</option>
                <option value="Dragon" <?php if($filter3 == 'Dragon') echo 'selected'; ?>>Dragon</option>
                <option value="Dark" <?php if($filter3 == 'Dark') echo 'selected'; ?>>Dark</option>
                <option value="Steel" <?php if($filter3 == 'Steel') echo 'selected'; ?>>Steel</option>
                <option value="Fairy" <?php if($filter3 == 'Fairy') echo 'selected'; ?>>Fairy</option>
            </select>
        <button id="filterbtn" type="submit" name="filter-submit">Filter</button>
    </form>
</nav>

<div id="dex">

<?php
    

$typeMap = [
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

// TUTAJ JEST KOD DO WYSWIETLANIA POKEMONOW Z SERCZA

$sql = "SELECT images.image, pokemon.*, stats.*, 
        primary_type.type AS PrimaryType, 
        secondary_type.type AS SecondaryType
        FROM images
        INNER JOIN pokemon ON images.ID = pokemon.ID
        INNER JOIN stats ON pokemon.ID = stats.ID
        LEFT JOIN types AS primary_type ON pokemon.Primary_type = primary_type.ID
        LEFT JOIN types AS secondary_type ON pokemon.Secondary_type = secondary_type.ID";

if ($searchQuery) {
    $sql .= " WHERE pokemon.Pokemon_name LIKE '%$searchQuery%'";
}

if ($filter1 && $filter2 && $filter3 !== 'all') {
    if ($searchQuery || ($filter1 && $filter2)) {
        $sql .= " WHERE (primary_type.ID = (SELECT ID FROM types WHERE `Type` = '$filter3')) OR (secondary_type.ID = (SELECT ID FROM types WHERE `Type` = '$filter3'))";
    } else {
        $sql .= " WHERE (primary_type.ID = (SELECT ID FROM types WHERE `Type` = '$filter3')) OR (secondary_type.ID = (SELECT ID FROM types WHERE `Type` = '$filter3'))";
    }
}

if ($filter1 && $filter2) {
    $sql .= " ORDER BY $filter1 $filter2";
}

$res = mysqli_query($conn, $sql);
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
        $primaryType = $typeMap[$row["Primary_type"]] ?? 'unknown';
        $secondaryType = $typeMap[$row["Secondary_type"]] ?? null;
        $backgroundStyle = $secondaryType
            ? "background: linear-gradient(108deg, var(--primary-color) 50%, var(--secondary-color) 50%);
             --primary-color: var(--{$primaryType}); --secondary-color: var(--{$secondaryType});"
            : "background-color: var(--{$primaryType});";

            $isFavorite = false;
            if ($isLoggedIn) {
                $pokemonId = $row['ID'];
                $favoriteQuery = "SELECT * FROM favorites WHERE user_id = $userId AND pokemon_id = $pokemonId";
                $favoriteResult = mysqli_query($conn, $favoriteQuery);
                if (mysqli_num_rows($favoriteResult) > 0) {
                    $isFavorite = true;
                }
            }
        ?>
        <div class="alb elementToHover" id="<?=$row['ID']?>">
            <img src="uploads/<?=$row['image']?>">
            <div class="elementToPopup">
                <table>
                <caption>
                    <span class="pokemon-id"><?=$row["ID"]?></span>
                    <span class="pokemon-name"><?=$row["Pokemon_name"]?></span>
                    <span id="star" class="favourite" data-id="<?=$row['ID']?>"onclick="toggleFavorite(<?=$row['ID']?>)"><?= $isFavorite ? '★' : '☆' ?>
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

