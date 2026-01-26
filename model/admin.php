<?php
require_once __DIR__ . '/DataBase.php';

function AdminCounts()
{
    global $conn;

    $totalUsers = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM users"))['c'];
    $totalBuyers = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM users WHERE user_type='buyer'"))['c'];
    $totalSellers = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM users WHERE user_type='seller'"))['c'];
    $totalAdmins = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM users WHERE user_type='admin'"))['c'];

    $totalCows = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM cows"))['c'];
    $approvedCows = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM cows WHERE is_approved=1"))['c'];
    $pendingCows = (int)mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) AS c FROM cows WHERE is_approved=0"))['c'];

    return [
        'totalUsers' => $totalUsers,
        'totalBuyers' => $totalBuyers,
        'totalSellers' => $totalSellers,
        'totalAdmins' => $totalAdmins,
        'totalCows' => $totalCows,
        'approvedCows' => $approvedCows,
        'pendingCows' => $pendingCows,
    ];
}

function AdminGetUsers()
{
    global $conn;
    $result = mysqli_query($conn, "SELECT * FROM users ORDER BY id DESC");

    $users = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $users[] = $row;
    }
    return $users;
}

function AdminUpdateUserType($id, $type)
{
    global $conn;
    $id = (int)$id;
    $type = mysqli_real_escape_string($conn, $type);

    return mysqli_query($conn, "UPDATE users SET user_type='$type' WHERE id=$id");
}

function AdminSetUserBanned($id, $is_banned)
{
    global $conn;
    $id = (int)$id;
    $is_banned = (int)$is_banned;

    return mysqli_query($conn, "UPDATE users SET is_banned=$is_banned WHERE id=$id");
}

function AdminGetCows()
{
    global $conn;
    $result = mysqli_query($conn, "SELECT * FROM cows ORDER BY id DESC");

    $cows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $cows[] = $row;
    }
    return $cows;
}

function AdminSetCowApproved($id, $is_approved)
{
    global $conn;
    $id = (int)$id;
    $is_approved = (int)$is_approved;

    return mysqli_query($conn, "UPDATE cows SET is_approved=$is_approved WHERE id=$id");
}

function AdminDeleteCow($id)
{
    global $conn;
    $id = (int)$id;

    // get photo to delete file
    $res = mysqli_query($conn, "SELECT photo_url FROM cows WHERE id=$id LIMIT 1");
    $row = mysqli_fetch_assoc($res);

    $ok = mysqli_query($conn, "DELETE FROM cows WHERE id=$id");

    if ($ok && $row && !empty($row['photo_url'])) {
        $photo = $row['photo_url'];
        $path = dirname(__DIR__) . '/upload/' . $photo;
        if (file_exists($path)) {
            @unlink($path);
        }
    }

    return $ok;
}
?>
