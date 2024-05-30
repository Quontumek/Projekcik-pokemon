<?php
require "db.php";
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login");
    exit(); 
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["newname"])) {
    $newname = trim($_POST["newname"]);
    $email = $_SESSION["mail"];

    if (!empty($newname)) {
        $sql = "UPDATE login SET NAME = ? WHERE EMAIL = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $newname, $email);

        if ($stmt->execute()) {
            $_SESSION['success_message'] = "Name updated successfully!";
        } else {
            $_SESSION['error_message'] = "Error updating name.";
        }

        $stmt->close();
    } else {
        $_SESSION['error_message'] = "Name cannot be empty.";
    }
}

header("Location: dashboard.php");
exit();
?>
