<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - Online Airline Reservation System</title>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!--- custome style sheet-->
<link href="/css/style.css" rel="stylesheet" />

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
			<!-- login form -->
			<form method="post" class="login_frm mx-auto" id="login_frm" action="login">
				<!--  email address -->
				<div class="mb-3 mt-1">
					<label for="email" class="form-label">Email : </label> 
					<input
						type="email" name="email" class="form-control"
						placeholder="example@gmail.com" />
				</div>

				<!-- password -->
				<div class="mb-3 mt-3">
					<label for="password" class="form-label">Password</label> 
					<input
						type="password" name="password" class="form-control"
						placeholder="****************" />
				</div>

				<!--  login button -->
				<div class="mb-2 mt-2">
					<span>Don't have an account ? </span> 
					<a href="signup"
						target="_blank" id="sign_up_link">Sign up</a> 						
						<input type="submit" value="Login" class="btn btn-primary" />
				</div>
				
				<div class="mb-2 mt-2 text-danger">
					${message }
				</div>
			</form>			
		</div>

		<div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
			<h1>Online Airline Reservation System</h1>
			<h4 class="text-center">Safety | Security | Punctuality |</h4>
		</div>

	</div>
</body>
</html>