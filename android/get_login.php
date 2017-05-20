<?php

include_once 'config.php';

$username = $_POST['username'];
$password = $_POST['password'];

$bill_id_sql = "SELECT COUNT(`loginUsername`) AS `count`, `cutomerID`, `customerame`, `customeraddress`, `customeremail`, `customermobile`, `customerplace` FROM `customer`,`login` WHERE `cutomerID`=`lodID` AND `loginUsername`='$username' AND `loginPassword`='$password' AND `utype`='customer'";
//echo $bill_id_sql;

$result = $con->query($bill_id_sql);

$emptyarray = array();
$emptyarray[] = mysqli_fetch_assoc($result);

echo json_encode($emptyarray);

