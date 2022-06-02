<?php
session_start();
error_reporting(0);
include('database/databaseConnection.php');
include('auth/auth.php');
if(isset($_POST['signin_btn'])){
  $email = mysqli_real_escape_string($conn, $_POST['email']);
  $password = mysqli_real_escape_string($conn, $_POST['password']);
  $sql = "SELECT empid,email,password,status,role FROM users WHERE email='$email' ";
  $query = mysqli_query($conn, $sql);
  if(mysqli_num_rows($query) > 0){
    while($results = mysqli_fetch_assoc($query)){
      if(password_verify($password,$results['password'])){
        if($results['status'] == 0){
          $_SESSION['error'] = "Your account is suspended!.";
        }else{
          if($results['role'] == 'Admin-GF'){
            $_SESSION['alogin'] = $results['id'];
            header('Location:user/general-fund/dashboard.php');
          }elseif($results['role'] == 'Admin-SF'){
            $_SESSION['alogin'] = $results['id'];
            header('Location:user/sef/dashboard.php');
          }elseif($results['role'] == 'Super-Admin'){
            $_SESSION['alogin'] = $results['id'];
            header('Location:admin/user-management.php');
          }
        }
      }else{
        $_SESSION['error']="Password does not match!";
      }
    }
  }else{
    $_SESSION['error']="Invalid Email!";
  }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Signin | GSO</title>

  <!-- Google Font: Montserrat Sans Pro -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form method="post">
      <div class="form-group mb-2">
        <input type="text" class="form-control" id="email" name="email" placeholder="Email">
      </div>
      <div class="form-group mb-2">
        <input type="text" class="form-control" id="password" name="password" placeholder="Password">
      </div>
      <div class="row">
          <div class="col">
            <button type="submit" name="signin_btn" class="btn btn-primary btn-block mb-3">Log in</button>
          </div>
        </div>
      </form>

      <p class="mb-1">
        <a href="#">I forgot my password</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/dist/js/adminlte.min.js"></script>
</body>
</html>
