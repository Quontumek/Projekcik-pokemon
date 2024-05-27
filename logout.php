<?php
session_start();
unset($_SESSION["mail"]);
header("Location:mainpage?message=logout?success");
