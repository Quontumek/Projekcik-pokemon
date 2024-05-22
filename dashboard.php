<?php
require "db.php";
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login");
    exit(); 
}

$email = $_SESSION["mail"];
$sql = "SELECT NAME, EMAIL FROM login WHERE EMAIL = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $name = $row["NAME"];
    $email = $row["EMAIL"];
} else {
    $name = "Unknown";
    $email = "Unknown";
}

$stmt->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.dash.css?v=1">
    <title>Dashboard</title>
    <link rel="icon" href="./Images/pikachuicon.png" />
</head>
<body>
    <header>
        <h1>Your Dashboard</h1>
    </header>
    
    <nav>
        <ul>
            <li class="buttons" id="mainpage"><a href="index.php">Main Page</a></li>
            <li class="buttons" id="loginButton"><a href="login.php">Login</a></li>
            <li class="buttons" id="registerButton"><a href="register.php">Register</a></li>
            <li class="buttons" id="dashboard"><a href="dashboardlogin.php">Dashboard</a></li>
            <li class="buttons" id="favorites"><a href="favoritepokemon.php">Favorites</a></li>
            <li class="buttons" id="wouldwouldnt"><a href="wouldwouldnt">The Game</a></li>
            <li class="buttons" id="pokedex"><a href="pokedex">Dex</a></li>
        </ul>
    </nav>
    
    <main>
        <section>
            <h2>Favorite Pokemon</h2>
            <ul>
                <li class="buttons" id="favorites"><a href="favoritepokemon.php" class="no-underline">Favorites</a></li>
            </ul>
        </section>

        <section>
            <h2>User Data</h2>
            <ul>
                <li>Name: <?php echo("$name")?></li>
                <li>Email: <?php echo("$email")?></li>
                <li>Certified Geek</li>
            </ul>
        </section>
    </main>
    
    <button type="submit" id="logout">Logout</button>
</body>
</html>

<script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "logout";
    };
</script>
