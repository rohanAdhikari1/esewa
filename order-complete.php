<?php require_once "controllerUserData.php";
?>
<?php 
$email = $_SESSION['email'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: ff.login/reset-code.php');
            }
        }else{
            header('Location: ff.login/user-otp.php');
        }
    }
}else{
    header('Location: ff.login/login-user.php');
}
?> 
<!DOCTYPE html>
<html>
<head>
	<title>Thank you for topup</title>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
  crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="icon"  href="https://i.postimg.cc/MHzjt71v/icon.jpg">
</head>
<body>
<div class="container">
        <div class="bg-img">
      <div class="content">
        <header>Your order was succesfull.</header>
<form method="POST">
                    <div class="field">
                        <input class="form-control button" type="submit" name="email" value="Message Us">
                    </div>
                    <br>
                    <br>
                </form>
                <form method="POST">
                	<div class="field">
                <input class="form-control button" type="submit" name="home" value="GO TO HOME">
            </div>
            </form>
            </div>
        </div>
    </div>
</form>
</body>
</html>