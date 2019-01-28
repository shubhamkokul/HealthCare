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
                <h2>Book an Appointment</h2>
                <hr />
                </div>
            </div> 
    <!-- <Form start -->
   
<form name="appointmentForm" method="post" action="Schedule_jsp.jsp">
    <div class="image2">
    	<div class="row">
    <div class="col-md-6">
    <div class="form-group">
	 <label class="control-label" for="name">Name</label>
        <input id="name" name="pname" type="text" placeholder="Name" class="form-control input-md">
    </div>
    </div>
    <div class="col-md-6">
<div class="form-group">
<label class="control-label" for="email">Email</label>
<input id="email" name="pemail" type="text" placeholder="E-Mail" class="form-control input-md">
</div>
</div><br>
<!-- Text input-->
<div class="col-md-12">
<div class="form-group">
     
<label class="control-label" for="appointmentfor">Appointment For</label>
<select id="appointmentfor" name="doctorName" class="form-control">
<option value="1">Dr.Mounika</option>
<option value="2">Dr.Kaveri</option>
<option value="3">Dr.Shravani</option>
<option value="4">Dr.Aditya</option>
</select>
</div>
    <br>
<div class="col-md-6">
 <div class="form-group">
<label for="Date" class="control-label">Appointment Date</label> <input type="date" id="Date" class="form-control">
                    
</div><br>

<!-- Select Basic -->
<div class="col-md-6">
<div class="form-group">
<label class="control-label" for="time">Preferred Time</label>
<select id="time" name="appointmentTime" class="form-control">
<option value="8:00 to 9:00">8:00 to 9:00</option>
<option value="9:00 to 10:00">9:00 to 10:00</option>
<option value="10:00 to 1:00">10:00 to 1:00</option>
</select>
</div>
</div>
<!-- Select Basic -->
</div><br>
<!-- Button -->
<div class="col-md-12">
<div class="form-group">
<button id="singlebutton" name="singlebutton" class="btn btn-primary btn-lg btn-block login-button" >Make An Appointment</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>  
</div>
</div>
</body>
</html>
