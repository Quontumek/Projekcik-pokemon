<?php
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login");
    exit(); 
}
if (isset($_SESSION["mail"])) {
        echo "<script>alert('You are logged in!');</script>";
        sleep(1);
        header("Location: dashboard");
}