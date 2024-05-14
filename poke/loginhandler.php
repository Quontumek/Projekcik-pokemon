<?php
require "db.php";

session_start();


$email = mysqli_real_escape_string($conn, $_POST["mail"]);
$query = "SELECT * FROM login WHERE EMAIL = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

$password = mysqli_real_escape_string($conn, $_POST["password"]);


if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_assoc($result);
    if (password_verify($password, $row["PASSWORD"])) {
        $_SESSION["mail"] = $email;
        header("Location: dashboard.php");
        exit();
    } else {
        header("Location: wrong_pass.php");
    }
} else {
    header("Location: wrong_pass.php");
}

