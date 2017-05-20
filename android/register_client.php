<?php

include_once 'config.php';

$username = $_POST['username'];
$password = $_POST['password'];
$name = $_POST['name'];
$address = $_POST['address'];
$mobile = $_POST['mobile'];
$email = $_POST['email'];
$place = $_POST['place'];

$bill_id_sql = "INSERT INTO `login`(`loginUsername`, `loginPassword`, `utype`) VALUES ('$username','$password','customer')";

if ($con->query($bill_id_sql)) {

    $bill_id_sql2 = "INSERT INTO `customer`(`cutomerID`, `customerame`, `customeraddress`, `customeremail`, `customermobile`, `customerplace`) VALUES ($con->insert_id,'$name','$address','$email','$mobile','$place')";
    if ($con->query($bill_id_sql2)) {

        echo "0";
    } else {
        echo mysqli_error($con);
    }
} else {
    echo mysqli_error($con);
}