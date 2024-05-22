<?php
include "db.php";
session_start();

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => 'User not logged in.']);
    exit;
}

$userId = $_SESSION['user_id'];
$input = json_decode(file_get_contents('php://input'), true);
$pokemonId = $input['pokemonId'] ?? null;

if (!$pokemonId) {
    echo json_encode(['success' => false, 'message' => 'No Pokémon ID provided.']);
    exit;
}

$sql = "SELECT * FROM favorites WHERE user_id = ? AND pokemon_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $userId, $pokemonId);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $sql = "DELETE FROM favorites WHERE user_id = ? AND pokemon_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ii", $userId, $pokemonId);
    $stmt->execute();
    echo json_encode(['success' => true, 'message' => 'Favorite removed.']);
} else {
    $sql = "INSERT INTO favorites (user_id, pokemon_id) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ii", $userId, $pokemonId);
    $stmt->execute();
    echo json_encode(['success' => true, 'message' => 'Favorite added.']);
}
?>
