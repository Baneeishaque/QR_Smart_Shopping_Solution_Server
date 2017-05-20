<?php

include_once 'config.php';

$id = $_POST['id'];
$code = $_POST['code'];

$bill_id_sql = "UPDATE `cart` SET `code`='$code' WHERE `userID`=$id";

if ($con->query($bill_id_sql)) {
    echo "0";
} else {
    echo mysqli_error($con);
}