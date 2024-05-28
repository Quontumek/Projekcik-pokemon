<?php
    $conn = mysqli_connect("localhost","root","","pokedatabase");
    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }
