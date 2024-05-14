<?php
require "db.php";

session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login.php");
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
</head>
<body>
    <header>
        <h1>Your Dashboard <button type="submit" id="logout">Logout</button><img src="./Images/pokemonbanner.jpg" alt="Banner Pokemon"></h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="#">The List</a></li>
                <li><a href="#">Settings</a></li>
                
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Ulubione</h2>
            <ul>
                <li>Pokemon1</li>
                <li>pokemon2</li>
                <li>etc</li>
            </ul>
        </section>

        <section>
            <h2>Dane Użytkownika</h2>
            <ul>
                <li>Name: <?php echo("$name")?></li>
                <li>Email: <?php echo("$email")?></li>
                <li>Notification 3</li>
            </ul>
        </section>
    </main>
</body>
</html>


<script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "logout.php";
    };



</script>