<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");
    
    $name = mysqli_real_escape_string($conn, $_POST["name"]);
    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);

    $email_check_query = "SELECT * FROM login WHERE EMAIL='$email' LIMIT 1";
    $result = mysqli_query($conn, $email_check_query);
    $user = mysqli_fetch_assoc($result);

    if ($user) {    
        header("Location: register.php?error=email_exists");
        exit();
    }

    $hashed_password = password_hash($password,PASSWORD_DEFAULT);

    $insert_query = "INSERT INTO login (NAME, PASSWORD, EMAIL) VALUES ('$name', '$hashed_password', '$email')";

    mysqli_query($conn, $insert_query);
    header("Location: login.php");
    