<?php

while ($row = mysqli_fetch_assoc($sql)) {
    $sql2 = "SELECT * FROM messages WHERE (incoming_msg_id = {$row['unique_id']} OR outgoing_msg_id = {$row['unique_id']}) 
             AND (outgoing_msg_id = {$outgoing_id} OR incoming_msg_id = {$outgoing_id}) ORDER BY msg_id DESC LIMIT 1";
    $query2 = mysqli_query($conn, $sql2);
    $row2 = mysqli_fetch_assoc($query2);

    if (mysqli_num_rows($query2)) {
        $result = $row2['msg'];
        $read_status = $row2['read_status'];
    } else {
        $result = "No message available";
        $read_status = "";
    }

    //trimming message if word are more than 28
    (strlen($result) > 32) ? $msg = substr($result, 0, 32) . '...' : $msg = $result;

    // adding you: text before msg if login id send msg
    $row_date = date('Y-m-d', strtotime($row2['timestamp']));
    $current_date = date('Y-m-d');
    $chatlist = "";
    if ($row_date === $current_date) {
        $date = date("h:i A", strtotime($row2['timestamp']));
    } else {
        $date = date("M j", strtotime($row2['timestamp']));
    }
    if (!empty($row2['outgoing_msg_id'])) {
        if ($outgoing_id) {
            if ($outgoing_id == $row2['outgoing_msg_id']) {
                $you = "You: ";

                $chatlist =  $you . $msg . " " . '<span>' . $date  . '</span>';
            } else {
                $you = $row['fname'] . ": ";
                if ($read_status) {
                    $chatlist = '<b>' . $you . $msg . " " . '<span>' . $date . '</span></b>';
                } else {
                    $chatlist =  $you . $msg . " " . '<span>' . $date  . '</span>';
                }
            }
        }
    } else {
        $you = $row['fname'] . ": ";
    }




    // Check if user is online or offline
    ($row['status'] == "Offline now") ? $offline = "offline" : $offline = "";

    $output .= '<a href="chat.php?user_id=' . $row['unique_id'] . '">
                <div class="content">
                    <img src="php/images/' . $row['img'] . '" alt="">
                    <div class="details">
                        <span>' . $row['fname'] . " " . $row['lname'] . '</span>
                        <p>' . $chatlist . '</p>
                    </div>
                </div>
                <div class="status-dot ' . $offline . '"><i class="fas fa-circle"></i></div>
            </a>';
}
