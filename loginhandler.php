<?php
require "db.php";


var_dump($_POST);
echo $_POST["password"];


$query = "SELECT * FROM login WHERE EMAIL = {$_POST["email"]}";

$result = mysqli_query( $conn, $query );

$row = mysqli_fetch_assoc($result);
if ($row['EMAIL'] == $_POST["email"]) {

    session_start();
    $_SESSION["email"]

};