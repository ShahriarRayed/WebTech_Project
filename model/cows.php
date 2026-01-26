<?php
require_once __DIR__ . '/DataBase.php';

function InsertCow($name, $price, $breed, $age, $weight, $photo_url, $description)
{
    global $conn;

    // Simple query
    $query = "INSERT INTO cows (name, price, breed, age, weight, photo_url, description) 
              VALUES ('$name', '$price', '$breed', '$age', '$weight', '$photo_url', '$description')";

    // Execute the query
    $result = mysqli_query($conn, $query);

    // Return true if successful, false otherwise
    if ($result) {
        return true;
    } else {
        return false;
    }
}
// see all cows
function GetAllCows()
{
    global $conn;

    // Ordered by ID DESC (Newest ID appears first)
    $sql = "SELECT * FROM cows ORDER BY id DESC";
    $result = mysqli_query($conn, $sql);

    $cows = [];
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $cows[] = $row;
        }
    }
    return $cows;
}
//Get single cow by ID
function GetCowById($id)
{
    global $conn;

    // Prevent SQL Injection using Prepared Statement
    $sql = "SELECT * FROM cows WHERE id = ?";

    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $id); // "i" means integer
    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        return $row;
    } else {
        return null;
    }
}

function GetApprovedCows()
{
    global $conn;

    $sql = "SELECT * FROM cows WHERE is_approved = 1 ORDER BY id DESC";
    $result = mysqli_query($conn, $sql);

    $cows = [];
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $cows[] = $row;
        }
    }
    return $cows;
}
