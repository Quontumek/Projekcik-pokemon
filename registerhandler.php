<?php
require "db.php";
    
$name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);

$email_check_query = "SELECT * FROM login WHERE EMAIL = ? LIMIT 1";
$stmt = mysqli_prepare($conn, $email_check_query);

if ($stmt === false) {
    die('MySQL prepare statement error: ' . mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

if ($result && mysqli_num_rows($result) > 0) {
    mysqli_stmt_close($stmt);
    header("Location: register.php?error=email_exists");
    exit();
}
mysqli_stmt_close($stmt);

    $hashed_password = password_hash($password,PASSWORD_DEFAULT);

    $insert_query = "INSERT INTO login (NAME, PASSWORD, EMAIL) VALUES (?, ?, ?)";
    $stmt = mysqli_prepare($conn, $insert_query);
    
    if ($stmt === false) {
        die('MySQL prepare statement error: ' . mysqli_error($conn));
    }
    
    mysqli_stmt_bind_param($stmt, "sss", $name, $hashed_password, $email);
    mysqli_stmt_execute($stmt);
    
    if (mysqli_stmt_affected_rows($stmt) > 0) {
        header("Location: login.php?success=insert_success");
    } else {
        header("Location: register.php?error=insert_failed");
    }
    
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
    