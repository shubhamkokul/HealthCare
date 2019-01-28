<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="login.css">

		<!-- Website Font style -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

	</head>
	<body>
            <div class="container">
            <div class="row main">
                <div class="panel-heading">
                <div class="panel-title text-center">
                <h1 class="title">Medical Record System</h1>
                <h2>Doctor Login</h2>
                <hr />
                </div>
            </div> 
                <div class="main-login main-center">
                        <form class="form-horizontal" method="post" action="#">
                                <div class="form-group">
                                 <label for="username" class="cols-sm-2 control-label">Username</label>
                                 <div class="cols-sm-10">
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
                                </div>
                                </div>
                                </div>

                                <div class="form-group">
                                <label for="password" class="cols-sm-2 control-label">Password</label>
                                <div class="cols-sm-10">
                                <div class="input-group">
                                     <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                     <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                                </div>
                                </div>
                                </div>

                                <div class="form-group ">
                                        <button type="button" class="btn btn-primary btn-lg btn-block login-button">Sign in</button>
                                </div>
                                <div class="login-register">
                            <a href="resetpswd.html">reset password</a>
                         </div>
                        </form>
                </div>
                </div>
            </div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>