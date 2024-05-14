<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");
    

    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $hashed_password = password_hash($password,PASSWORD_DEFAULT);

    mysqli_query($conn, "INSERT INTO login (NAME,PASSWORD,EMAIL) VALUES ('{$_POST['name']}','{$hashed_password}','{$_POST['email']}')");
    header("Location: login.php");