<?php
session_start();
if (!isset($_SESSION['UNIQUE_ID'])) {
    header("location: ../login.php");
}
include_once "config.php";
$outgoing_id = $_SESSION['UNIQUE_ID'];
if ($_SESSION['UNIQUE_ID'] != 607444104) {

    $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = 607444104 ");
    $output = "";

    if (mysqli_num_rows($sql) === 1) {
        include "data.php";
    }
} else {
    $sql = mysqli_query($conn, "SELECT users.*, MAX(messages.timestamp) AS latest_timestamp FROM users JOIN messages ON users.unique_id = messages.outgoing_msg_id or users.unique_id = messages.incoming_msg_id WHERE NOT users.unique_id = 607444104 GROUP BY users.unique_id ORDER BY latest_timestamp DESC;");
    $output = "";
    if (mysqli_num_rows($sql) == 0) { //If there is only one row in the database then definitely this is a current logged in user.so we tell there is no user to chat if users is equal to 1
        $output .= "No users are available to chat";
    } elseif (mysqli_num_rows($sql) > 0) { //We'll show all users
        include "data.php";
    }
}
echo $output;
