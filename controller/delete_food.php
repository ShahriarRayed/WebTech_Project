<?php
session_start();

if (!isset($_SESSION['status'], $_SESSION['role']) || $_SESSION['status'] !== true || $_SESSION['role'] !== 'seller') {
    header("Location: ../food.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST' || !isset($_POST['food_id'])) {
    header("Location: ../food.php");
    exit();
}

$food_id   = (int)$_POST['food_id'];
$seller_id = (int)$_SESSION['user_id'];

$conn = new mysqli("localhost", "root", "", "cow_kino");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stmt = $conn->prepare("SELECT image FROM cow_foods WHERE id=? AND seller_id=?");
$stmt->bind_param("ii", $food_id, $seller_id);
$stmt->execute();
$stmt->bind_result($image);
$found = $stmt->fetch();
$stmt->close();

if (!$found) {
    $conn->close();
    header("Location: ../food.php");
    exit();
}

if ($image && file_exists("../upload/" . $image)) {
    unlink("../upload/" . $image);
}

$stmt = $conn->prepare("DELETE FROM cow_foods WHERE id=? AND seller_id=?");
$stmt->bind_param("ii", $food_id, $seller_id);
$stmt->execute();
$stmt->close();

$conn->close();

header("Location: ../food.php");
exit();
