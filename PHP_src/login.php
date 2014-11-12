<!-- Simple login form -->
<html lang="en">
    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Demo site</title>
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
      <!-- Fontawesome -->
      <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>


    <div class="container">
      <div class="margin-top-login">
        <form class="form-signin" role="form" method="POST" action="checklogin.php">
          <h2 class="form-signin-heading">Please sign in</h2>
          <div class="input-group margin-bottom-sm">
            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
            <input name="myusername" id="myusername" class="form-control" type="text" placeholder="Username">
          </div>
          <div class="input-group margin-bottom-sm">
            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
            <input name="mypassword" id="mypassword" class="form-control" type="password" placeholder="Password">
          </div>
          <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
          </label>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
      </div><!-- /margin-top-login -->
    </div> <!-- /container -->