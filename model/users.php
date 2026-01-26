<?php
require_once __DIR__ . '/DataBase.php';

function InsertUser($fullName, $pass, $email, $phone, $user_type)
{
    global $conn;

    $checkQuery = "SELECT * FROM users WHERE email = '$email'";
    $checkResult = mysqli_query($conn, $checkQuery);

    if (mysqli_num_rows($checkResult) > 0) {
        return "email_exists";
    }

    $query = "INSERT INTO users (name, email, password, phone, user_type, is_banned)
              VALUES ('$fullName', '$email', '$pass', '$phone', '$user_type', 0)";

    $result = mysqli_query($conn, $query);
    return $result ? true : false;
}

function Login($email, $pass)
{
    global $conn;

    $query = "SELECT id, name, email, user_type 
              FROM users
              WHERE email = '$email'
                AND password = '$pass'
                AND is_banned = 0
              LIMIT 1";

    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        return mysqli_fetch_assoc($result);
    }

    return false;
}
