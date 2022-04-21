<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign UP - Online Airline Reservation System</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!--- custome style sheet-->
    <link href="/css/style.css" rel="stylesheet" />

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <div class="container-fluid">
        <form method="post" class="reg_frm">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
                    <!-- name -->
                    <div class="mb-1 mt-1">
                        <label for="user_name" class="form-label">Enter name : </label>
                        <input type="text" class="form-control" name="Name" placeholder="enter your name" />
                    </div>
    
                    <!-- father name -->
                    <div class="mb-3 mt-3">
                        <label for="user_f_name" class="form-label">Father's name : </label>
                        <input type="text" class="form-control" name="Father_name" placeholder="enter your father's name" />
                    </div>
    
                    <!-- <!--- user email-->
                    <div class="mb-3 mt-3">
                        <label for="email" class="form-label">Email : </label>
                        <input type="email" class="form-control" name="Email" placeholder="enter your email" />
                    </div> 
    
                    <!-- user address-->
                    <div class="mb-3 mt-3">
                        <label for="address" class="form-label">Address: </label>
                        <textarea class="form-control" rows="2" name="Address">
    
                        </textarea>
                    </div>
                </div>
    
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
                    <!--- select user type -->
                    <!-- <div class="mb-1 mt-1">
                        <label for="user type" class="form-label">User Type: </label>
                        <select class="form-select">
                            <option value="">Select user type</option>
                            <option value="1">Admin</option>
                            <option value="2">Employee</option>
                            <option value="3">Vendor</option>
                            <option value="4">Customer</option>
                        </select>
                    </div> -->
    				
    				<!--  id type -->
    				<div class="mb-3 mt-3">
                        <label for="id_type" class="form-label">Select Id type : </label>
                        <select class="form-select" name="Id_type">
                        	<option value="">Select id type </option>
                        	<option value="1"> Aadhar </option>
                        	<option value="2"> Pan </option>
                        	<option value="3"> Voter Card</option>
                        </select>
                    </div>
                    
                    <!-- id number-->
                    <div class="mb-3 mt-3">
                        <label for="id_number" class="form-label">Enter id number: </label>
                       <input type="number" class="form-control" name="Id_no" placeholder="XXXX-XXXX-XXXX" />
                    </div>
    
                    <!--Government id type -->
                    <!-- <div class="mb-3 mt-3">
                        <label for="Government_id_img" class="form-label">Upload Id Image : </label>
                       <input type="file" class="form-control" name="id_img" />
                    </div> -->
    
                    <!-- mobile number-->
                    <div class="mb-3 mt-3">
                        <label for="mobile_no" class="form-label">Enter mobile number : </label>
                       <input type="number" class="form-control" name="Mobile_no" placeholder="9876543212" />
                    </div>

                    <!-- password-->
                    <div class="mb-3 mt-3">
                        <label for="password" class="form-label">Enter Password : </label>
                       <input type="password" class="form-control" name="Password" placeholder="***********" />
                    </div>
                </div>
            </div>

            <!-- submit button-->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <input type="submit" class="btn btn-primary" value="Submit" />
                    <input type="reset" class="btn btn-danger" value="Cancel" />
                </div>
            </div>
            
            <!-- - message -->
            <div class="row mt-3">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                   <span class="text-success"> ${message }</span>                  
                </div>
            </div>
        </form>
    </div>
</body>
</html>