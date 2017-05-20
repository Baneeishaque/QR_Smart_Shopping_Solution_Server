<?php

include_once 'config.php';

$id = $_POST['id'];
$mrp = $_POST['mrp'];
$qty = $_POST['qty'];
$user = $_POST['user'];

$bill_id_sql = "INSERT INTO `cart`(`ItemID`, `Quantity`, `Unitamount`, `Total`, `userID`) VALUES ($id,$qty,$mrp,$qty*$mrp,$user)";

if ($con->query($bill_id_sql)) {
    echo "0";
} else {
    echo mysqli_error($con);
}