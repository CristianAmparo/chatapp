<?php
session_start();

if (isset($_SESSION['UNIQUE_ID'])) {
    include_once "config.php";
    $outgoing_id = mysqli_real_escape_string($conn, $_POST['outgoing_id']);
    $incoming_id = mysqli_real_escape_string($conn, $_POST['incoming_id']);
    $output = "";

    //Now I'm selecting all chat that matched to incoming_msg_id and outgoing_msg_id
    $sql = "SELECT * FROM messages 
        LEFT JOIN users ON users.unique_id = messages.outgoing_msg_id
        WHERE (outgoing_msg_id = {$outgoing_id} AND incoming_msg_id = {$incoming_id})
        OR (outgoing_msg_id = {$incoming_id} AND incoming_msg_id = {$outgoing_id}) 
        ORDER BY msg_id";

    $query = mysqli_query($conn, $sql);

    $sql2 = "UPDATE messages
            SET read_status = 0
            WHERE (incoming_msg_id = {$outgoing_id} or outgoing_msg_id = {$incoming_id} )";
    $query2 = mysqli_query($conn, $sql2);
    if (mysqli_num_rows($query) > 0) {
        while ($row = mysqli_fetch_assoc($query)) {

            $row_date = date('Y-m-d', strtotime($row['timestamp']));
            $current_date = date('Y-m-d');

            if ($row_date === $current_date) {
                $date = date("h:i A", strtotime($row['timestamp']));
            } else {
                $date = date("M j", strtotime($row['timestamp']));
            }

            if ($row['outgoing_msg_id'] === $outgoing_id) { //if this is equal to then he is a msg sender
                $output .= '<div class="chat outgoing">
                                    <div class="details">
                                        <p>' . $row['msg'] . '</p>
                                        <span>' . $date . '</span>
                                    </div>
                                </div>';
            } else { //he is a msg receiver
                $output .= '<div class="chat incoming">
                                    <img src="php/images/' . $row['img'] . '" alt="">
                                    <div class="details">
                                        <p>' . $row['msg'] . '</p>
                                        <span>' . $date . '</span>
                                    </div>
                                </div>';
            }
        }
    } else {
        $output .= '<div class="text">No messages are available. Once you send message they will appear here.</div>';
    }
    echo $output;
} else {
    header("location: ../login.php");
}
