<?php
require_once "controllerUserData.php";
include 'setting.php';
   $getinfo = "select * from prise";
    $query = mysqli_query($con , $getinfo);
$row = mysqli_fetch_assoc($query);
  $prize= $row['prize'];
  $prise= ($prize - 10);
$getvalue = "SELECT * FROM products WHERE amount = '$prize'";
    $check = mysqli_query($con , $getvalue);
    $fetch_data = mysqli_fetch_assoc($check);
  $products= $fetch_data['product'];
   $image= $fetch_data['image'];
//}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Checkout Page</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="icon"  href="https://i.ibb.co/hVBPy8g/icon.jpg">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="css/checkout.css">
	</head>
	<body>
		<div class="container">
			<div class="pt-md-5">
				<div class="col-md-12">
					<h2>Order Details</h2>
					<div class="row">
						
						
						<div class="col-md-4">
							<div class="card" stylea="width: 18rem;">
								<div class="imagecontainer" style="height: 400px;">
									<img src="image/<?php echo ($image)?>" class="card-img-top" alt="..." style="width: 100%; height: 100%;">
								</div>
							
								<div class="card-body">
									<p class="card-text"><?php echo($products) ?></p>
									<p class="card-text">Rs.<?php echo($prize) ?></p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<h3>Pay With</h3>
<form action="https://uat.esewa.com.np/epay/main" method="POST">
<input value="<?php echo( $prize); ?>" name="tAmt" type="hidden">
<input value="<?php echo( $prise); ?>" name="amt" type="hidden">
<input value="0" name="txAmt" type="hidden">
<input value="10" name="psc" type="hidden">
<input value="0" name="pdc" type="hidden">
<input value="<?php echo($merchant_code); ?>" name="scd" type="hidden">
<input value="<?php echo($pid); ?>" name="pid" type="hidden">
<input value="<?php echo($successurl); ?>" type="hidden" name="su">
<input value="<?php echo($failedurl); ?>" type="hidden" name="fu">
<input type="image" value="esewa" src="image/esewa.png">
</form>
<input type="button" value="Other available soon">
								</div>
							</div>

						</div>
					</div>
					</div>
			</body>
		</html>