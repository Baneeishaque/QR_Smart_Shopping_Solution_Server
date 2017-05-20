<?php

include_once 'config.php';

$id = $_POST['id'];

$bill_id_sql = "SELECT * FROM `product` WHERE `ProductID`='$id'";
//echo $bill_id_sql;

$result = $con->query($bill_id_sql);

$emptyarray = array();
$emptyarray[] = mysqli_fetch_assoc($result);

echo json_encode($emptyarray);

