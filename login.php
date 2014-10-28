<?php include_once 'header.php'; ?>

    <div class="container">
      <div class="margin-top-login">
        <form class="form-signin" role="form" method="POST" action="checklogin.php">
          <h2 class="form-signin-heading">Please sign in</h2>
          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
            <input name="myusername" id="myusername" class="form-control" type="text" placeholder="Email address">
          </div>
          <div class="input-group het">
            <span class="input-group-addon het"><i class="fa fa-key fa-fw"></i></span>
            <input name="mypassword" id="mypassword" class="form-control" type="password" placeholder="Password">
          </div>
          <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
          </label>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
      </div><!-- /margin-top-login -->
    </div> <!-- /container -->

<?php include_once 'footer.php'; ?>


