<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");
    mysqli_query($conn, "INSERT INTO login (NAME,PASSWORD,EMAIL) VALUES ('{$_POST['name']}','{$_POST['mail']}','{$_POST['password']}')");
    header('Location: ./login.php');