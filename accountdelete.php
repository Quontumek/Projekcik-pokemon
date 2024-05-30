<?php
require "db.php";
session_start();

if (!isset($_SESSION["mail"])) {
    header("Location: login");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_SESSION["mail"];
    $conn->begin_transaction();

    try {
        $sql = "DELETE FROM favorites WHERE user_id = (SELECT ID FROM login WHERE EMAIL = ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->close();
        $sql = "DELETE FROM login WHERE EMAIL = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->close();
        $conn->commit();
            session_unset();
            session_destroy();
            header("Location: login");
        exit();
    } catch (Exception $e) {
        $conn->rollback();
        echo "Error deleting account: " . $e->getMessage();
    }
}
?>