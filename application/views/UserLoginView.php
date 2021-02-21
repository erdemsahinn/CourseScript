<!DOCTYPE html>
<html lang="tr">
<?php $this->load->view('includes/head')?>
<style type="text/css">


  #login .container #login-row #login-column #login-box {
    margin-top: 15%;
    max-width: 600px;
    height: 100%;
    background-color: white;
    box-shadow: 5px 10px 8px #888888;
    border-radius: 20px;
  }

  #login .container #login-row #login-column #login-box #login-form {
    padding: 20px;
  }

  /* .navbar {
    box-shadow: 2px 3px 4px 4px #888888;
    position: relative;
  }

  .bg-orange {
    background-color: orange;
  } */
</style>

<body>
  <?php $this->load->view('includes/sidebar') ?>

  <div id="login">

    <div class="container">
      <div id="login-row" class="row justify-content-center align-items-center">
        <div id="login-column" class="col-md-6">
          <div id="login-box" class="col-md-12">
            <form id="login-form" class="form" action="" method="post">

              <center>
                <button class="btn btn-primary rounded-circle"><i class="fa fa-facebook-square"></i></button>
                <button class="btn btn-danger rounded-circle ml-1"><i class="fa fa-google-plus-square"></i></button>
                <br>
                <button class="btn btn-info rounded-circle"><i class="fa fa-twitter"></i></button>


              </center>

              <div class="form-group">
                <label for="username" class="text-info">Kullanıcı Adı:</label><br>
                <input type="text" name="username" id="username" class="form-control" required>
              </div>

              <div class="form-group">
                <label for="password" class="text-info">Şifre:</label><br>
                <input type="password" name="password" id="password" class="form-control" required>
              </div>

              <div class="form-group">
                <center>
                  <input type="submit" name="submit" class="btn btn-info btn-md" value="Giriş Yap">
                  <input type="reset" name="delete" class="btn btn-danger btn-md" value="Temizle">
                </center>
                <center>
                  <label for="üyedeğilim" class="text-info mt-5">
                    <a href="reset-password.html"> <span>Şifremi Unuttum?</span> 
                    </a>
                  </label>
                </center>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

 
  <?php $this->load->view('includes/footer')?>
</body>

</html>