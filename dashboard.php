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
        <h1>Dashboard</h1>
    </header>
    
    <nav>
        <ul>
            <li class="buttons" id="mainpage"><a href="mainpage.php">Main Page</a></li>
            <li class="buttons" id="favorites"><a href="favoritepokemon.php">Favorites</a></li>
            <li class="buttons" id="pokedex"><a href="pokedex">Pokédex</a></li>
        </ul>
    </nav>
    
    <main>
        <section>
            <h2>User Data</h2>
            <ul>
                <li>Name: <?php echo htmlspecialchars($name); ?></li>
                <li>Email: <?php echo htmlspecialchars($email); ?></li>
                <li>Certified Geek</li>
            </ul>
        </section>
        <section>
            <h2>Update Information</h2>
            <form action="accountnamechange.php" method="POST">
                <ul>
                    <li>
                        <label for="newname">New Name:</label>
                        <input type="text" id="newname" name="newname" required>
                    </li>
                </ul>
                <button type="submit">Change Name</button>
            </form>
            <form action="accountemailchange.php" method="POST">
                <ul>
                    <li>
                        <label for="newemail">New Email:</label>
                        <input type="email" id="newemail" name="newemail" required>
                    </li>
                </ul>
                <button type="submit">Change Email</button>
            </form>
        </section>
    </main>

    <div>
        <button type="submit" id="logout">Logout</button>
    </div>
    <div>
        <form action="accountdelete.php" method="POST" onsubmit="return confirm('Are you sure you want to delete your account?');">
            <button id="logout" type="submit" name="deleteAccount">Delete Account</button>
        </form>
    </div>
</body>
</html>

<script type="text/javascript">
    document.getElementById("logout").onclick = function () {
        location.href = "logout";
    };
</script>
