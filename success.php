<?php
include 'setting.php';
require_once "controllerUserData.php";

$getvalue = "SELECT * FROM products WHERE amount = '$prize'";
    $check = mysqli_query($con , $getvalue);
    $fetch_data = mysqli_fetch_assoc($check);
  $products= $fetch_data['product'];

$ref = $_GET['refId'];

$data =[
    'amt'=>$actualamount,
    'rid'=> $ref,
    'pid'=>$pid,
    'scd'=> $merchant_code
];

      $curl = curl_init($fraudcheck_url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($curl);
 
    curl_close($curl);
    if(strpos(  $response, "Success") !== false){
               $email = $_SESSION['email'];
               $name = $_SESSION['name'];
         $subject = "TopUp Nepal Order complete";
            $message = "

Dear $name

Thank you for Topup From our site.
Your order will deliver within 24hour.
if you not received then message us:-https://localhost/my/order-complete.php

Order Detail:
Name:- $name
Email:- $email
Order number:- $pid
Product:- $products
Price:- $prize



             Thank you";
            $sender = "From: litegamer249@gmail.com";
            if(mail($email, $subject, $message, $sender)){mail($email, $subject, $message, $sender);
        header("Location: https://localhost/my\order-complete.php");
     exit();
            }
        } 
    else{
         header("Location: https://localhost/my/");
    }
  
    
    

?>