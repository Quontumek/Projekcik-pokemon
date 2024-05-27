<?php
echo "Waiting page accessed";
$target = isset($_GET['target']) ? $_GET['target'] : 'mainpage.php';
sleep(5);
echo "Redirecting...";
header("Location: $target");
exit();