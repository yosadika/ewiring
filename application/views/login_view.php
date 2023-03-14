<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>eWiring | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/dist/css/adminlte.min.css">

<style>
    body{
        margin:auto;
        background-image: url("<?php echo base_url(); ?>assets/front/background/login2-bg.jpg");
        }
    
    .login-title
    {
        color: white;
        display: block;
    }

    .form-group input + .password-icon {
    position: absolute;
    right: 10px;
    top: 15px;
    cursor: pointer;
  }
</style>

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
  <h1 class="text-center login-title"><b>e</b>Wiring</h1>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="<?php echo base_url() ?>" method="post">
        <div class="input-group mb-3">
        <input type="text" class="form-control" name="username" placeholder="Username" autofocus>
          <?php echo form_error('username'); ?>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" id="password" placeholder="Password">
          <?php echo form_error('password'); ?>
          <div class="input-group-append">
            <div class="input-group-text">
            <i class="fa fa-eye-slash password-icon"></i>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember" name="remember" value="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      

      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/adminlte.min.js"></script>

<script>
  $('.password-icon').click(function() {
    var password_input = $('#password');
    if (password_input.attr('type') === 'password') {
      password_input.attr('type', 'text');
      $('.password-icon').removeClass('fa-eye-slash').addClass('fa-eye');
    } else {
      password_input.attr('type', 'password');
      $('.password-icon').removeClass('fa-eye').addClass('fa-eye-slash');
    }
  });
</script>


</body>
</html>
