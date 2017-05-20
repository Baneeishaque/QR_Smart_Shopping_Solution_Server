<?php

include_once 'config.php';

$id = $_POST['id'];

$bill_id_sql = "SELECT `cartID`, `ItemID`, `Quantity`, `Unitamount`, `Total`, `userID`, `code`,`name` FROM `cart`,`product` WHERE `product`.`ProductID`=`cart`.`ItemID` AND `userID`=$id";
//echo $bill_id_sql;

$result = $con->query($bill_id_sql);

$emptyarray=array();
while ($row = mysqli_fetch_assoc($result))
{
    $emptyarray[]=$row;
}
echo json_encode($emptyarray);