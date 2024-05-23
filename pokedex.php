<?php
include "db.php";
session_start();


//=======================================================================================================

// to funkcje do searcha

$searchQuery = "";
if (isset($_POST['submit-search'])) {
    $searchQuery = mysqli_real_escape_string($conn, $_POST['search']);
}
if (isset($_POST['reset-search'])) {
    $searchQuery = "";
}

//=======================================================================================================

// to funkcje do sortowania

$validSortColumns = ['ID', 'HP', 'ATK', 'DEF', 'SATK', 'SDEF', 'SPD', 'Avg_weight', 'Avg_height'];
$sortColumn = "ID";
$sortOrder = "ASC";
if (isset($_POST['sort-submit'])) {
    $sortColumnInput = mysqli_real_escape_string($conn, $_POST['sort-column']);
    $sortOrderInput = mysqli_real_escape_string($conn, $_POST['sort-order']);
    if (in_array($sortColumnInput, $validSortColumns)) {
        $sortColumn = $sortColumnInput;
    }
    if (in_array($sortOrderInput, ['ASC', 'DESC'])) {
        $sortOrder = $sortOrderInput;
    }
}

//=======================================================================================================

// to funkcje do filtrowania
$validTypes = ['all', 'normal', 'grass', 'fire', 'water', 'electric', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'ice', 'dragon', 'dark', 'steel', 'fairy'];
$filterType = "all";
if (isset($_POST['filter-submit'])) {
    $filterTypeInput = mysqli_real_escape_string($conn, $_POST['sort-type']);
    if (in_array($filterTypeInput, $validTypes)) {
        $filterType = $filterTypeInput;
    }
}

//=======================================================================================================

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
            <li class="buttons" id="mainpage"><a href="index.php">Main Page</a></li>
            <li class="buttons" id="loginButton"><a href="login.php">Login</a></li>
            <li class="buttons" id="registerButton"><a href="register.php">Register</a></li>
            <li class="buttons" id="dashboard"><a href="dashboardlogin.php">Dashboard</a></li>
            <li class="buttons" id="favorites"><a href="favoritepokemon.php">Favorites</a></li>        
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
        <select name="sort-column">
            <option value="HP">HP</option>
            <option value="ATK">Attack</option>
            <option value="DEF">Defense</option>
            <option value="SATK">Special Attack</option>
            <option value="SDEF">Special Defense</option>
            <option value="SPD">Speed</option>
            <option value="Avg_weight">Weight</option>
            <option value="Avg_height">Height</option>
        </select>
        <select name="sort-order">
            <option value="ASC">Ascending</option>
            <option value="DESC">Descending</option>
        </select>
        <select name="sort-type">
            <option value="all">All</option>
            <option value="normal">Normal</option>
            <option value="grass">Grass</option>
            <option value="fire">Fire</option>
            <option value="water">Water</option>
            <option value="electric">Electric</option>
            <option value="fighting">Fighting</option>
            <option value="poison">Poison</option>
            <option value="ground">Ground</option>
            <option value="flying">Flying</option>
            <option value="psychic">Psychic</option>
            <option value="bug">Bug</option>
            <option value="rock">Rock</option>
            <option value="ghost">Ghost</option>
            <option value="ice">Ice</option>
            <option value="dragon">Dragon</option>
            <option value="dark">Dark</option>
            <option value="steel">Steel</option>
            <option value="fairy">Fairy</option>
        </select>
        <button type="submit" name="filter-submit">Filter</button>
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

if ($searchQuery) {
    $sql = "SELECT images.image, pokemon.*, stats.*, 
            primary_type.type AS PrimaryType, 
            secondary_type.type AS SecondaryType
            FROM images
            INNER JOIN pokemon ON images.ID = pokemon.ID
            INNER JOIN stats ON pokemon.ID = stats.ID
            LEFT JOIN types AS primary_type ON pokemon.Primary_type = primary_type.ID
            LEFT JOIN types AS secondary_type ON pokemon.Secondary_type = secondary_type.ID
            WHERE pokemon.Pokemon_name LIKE '%$searchQuery%'
            ORDER BY images.ID ASC";
} else {
    $sql = "SELECT images.image, pokemon.*, stats.*, primary_type.type AS PrimaryType, 
            secondary_type.type AS SecondaryType
            FROM images
            INNER JOIN pokemon ON images.ID = pokemon.ID
            INNER JOIN stats ON pokemon.ID = stats.ID
            LEFT JOIN types AS primary_type ON pokemon.Primary_type = primary_type.ID
            LEFT JOIN types AS secondary_type ON pokemon.Secondary_type = secondary_type.ID
            ORDER BY images.ID ASC";
}


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

    if ($filterType !== 'all') {
        if ($searchQuery) {
            $sql .= " AND primary_type.type = '$filterType'";
        } else {
            $sql .= " WHERE primary_type.type = '$filterType'";
        }
    }

    $sql .= " ORDER BY pokemon.ID $sortOrder";

echo "SQL Query: $sql<br>";

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


