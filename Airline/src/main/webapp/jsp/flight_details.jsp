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
        <form method="post" class="reg_frm" action="flight_details">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
                    <!-- flight name -->
                    <div class="mb-1 mt-1">
                        <label for="Flight Name" class="form-label">Flight Name : </label>
                        <input type="text" class="form-control" name="flight_number" placeholder="Enter Flight Name" />
                    </div>
    
                    <!-- Company name -->
                    <div class="mb-3 mt-3">
                        <label for="Company Name" class="form-label">Company Name : </label>
                        <input type="text" class="form-control" name="airline_name" placeholder="Enter Company Name" />
                    </div>
    
    				<!--- Arrival Airport id-->
                    <div class="mb-3 mt-3">
                        <label for="Arrival Airport Id" class="form-label">Departure Airport Id : </label>
                        <input type="text" class="form-control" name="arrival_id" placeholder="Departure Airport Id" />
                    </div>
                    
                    <!--- Departure Airport id-->
                    <div class="mb-3 mt-3">
                        <label for="Departure Airport Id" class="form-label">Departure Airport Id : </label>
                        <input type="text" class="form-control" name="departure_id" placeholder="Departure Airport Id" />
                    </div>
    
                    <!-- Flight Date-->
                    <div class="mb-3 mt-3">
                        <label for="Flight Date" class="form-label">Flight Date: </label>
                        <input type="text" class="form-control" name="flight_date" placeholder="Flight Date" />
                    </div>
                </div>
    
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
                    <!--- Duration -->
                    <div class="mb-1 mt-1">
                        <label for="Duration" class="form-label">Duration: </label>
                        <input type="text" class="form-control" name="duration" placeholder="Duration" />
                    </div>
    
                    <!-- Arrival Time-->
                    <div class="mb-3 mt-3">
                        <label for="Arrival Time" class="form-label">Arrival Time: </label>
                       <input type="text" class="form-control" name="arrival_time" placeholder="Arrival Time" />
                    </div>
    
                    <!--Departure time -->
                    <div class="mb-3 mt-3">
                        <label for="Departure time" class="form-label">Departure time : </label>
                       <input type="text" class="form-control" name="departure_time" placeholder="Departure time" />
                    </div>
    
                   
                </div>
            </div>

            <!-- submit button-->
			 <!-- Clear button-->
            <div class="row"> 
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <input type="submit" class="btn btn-primary" value="Submit" />
					<input type="reset" class="btn btn-primary" value="Clear" />
                </div>		
            </div>
            
            <!--  show status message -->
            <div class="row"> 
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center text-success">
                    ${message }
                </div>		
            </div>
        </form>
    </div>
</body>
</html>