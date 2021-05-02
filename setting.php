<?php
require_once "controllerUserData.php";
$getinfo = "select * from prise";
    $query = mysqli_query($con , $getinfo);
$row = mysqli_fetch_assoc($query);
  $prize= $row['prize'];
  $ordernumber = $row['ordernumber'];
// Change Info From Here
$pid = $ordernumber;
$epay_url = "https://uat.esewa.com.np/epay/main";
$successurl = "https://localhost/my\success.php ?q=su";
$failedurl = "https://localhost/my\ff-esewa\failed.php ?q=fu";
$merchant_code = "epay_payment"; 
$fraudcheck_url = "https://uat.esewa.com.np/epay/transrec";


 // For Amount Check
$actualamount = $prize;
?>