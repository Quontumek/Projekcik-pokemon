<?php
require "db.php";
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login");
    exit(); 
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $newname = trim($_POST["newname"]);
    $newemail = trim($_POST["newemail"]);
    $currentEmail = $_SESSION["mail"];

    $errors = [];

    if (empty($newname)) {
        $errors[] = "Name cannot be empty.";
    }

    if (empty($newemail)) {
        $errors[] = "Email cannot be empty.";
    }

    if (empty($errors)) {
        $sql = "SELECT EMAIL FROM login WHERE EMAIL = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $newemail);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0 && $newemail != $currentEmail) {
            $_SESSION['error_message'] = "This email is already in use.";
        } else {
            $sql = "UPDATE login SET NAME = ?, EMAIL = ? WHERE EMAIL = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $newname, $newemail, $currentEmail);

            if ($stmt->execute()) {
                $_SESSION["mail"] = $newemail;
                $_SESSION['success_message'] = "Information updated successfully!";
            } else {
                $_SESSION['error_message'] = "Error updating information.";
            }
        }

        $stmt->close();
    } else {
        $_SESSION['error_message'] = implode("<br>", $errors);
    }
}

header("Location: dashboard.php");
exit();
?>
