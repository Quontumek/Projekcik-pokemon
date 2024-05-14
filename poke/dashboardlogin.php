<?php
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login.php");
    exit(); 
}
if (isset($_SESSION["mail"])) {
        echo "<script>alert('You are logged in!');</script>";
        sleep(2);
        header("Location: dashboard.php");
}