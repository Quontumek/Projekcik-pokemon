<?php
require "db.php";

session_start();

$email = filter_input(INPUT_POST, 'mail', FILTER_VALIDATE_EMAIL);
$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);

$query = "SELECT * FROM login WHERE EMAIL = ?";
$stmt = mysqli_prepare($conn, $query);
if ($stmt === false) {
    die('MySQL prepare statement error: ' . mysqli_error($conn));
}
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_assoc($result);
    if (password_verify($password, $row["PASSWORD"])) {
        $_SESSION["user_id"] = $row["ID"];
        $_SESSION["mail"] = $email;
        sleep(2);
        header("Location: dashboard");
        exit();
    } else {
        header("Location: wrong_pass");
        exit();
    }
} else {
    header("Location: wrong_pass");
    exit();
}
