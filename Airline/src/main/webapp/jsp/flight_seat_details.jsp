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
                <div class="col-sm-12 col-md-4 col-xs-12 col-lg-4">
                    <!-- flight number -->
                    <div class="mb-1 mt-1">
                        <label for="Flight Number" class="form-label">Flight Number : </label>
                        <input type="text" class="form-control" name="flight_number" placeholder="Flight Number" />
                    </div>
    
                    <!-- Fst Seat -->
                    <div class="mb-3 mt-3">
                        <label for="fst Seat" class="form-label">fst Seat : </label>
                        <input type="text" class="form-control" name="fst_seat" placeholder="fst Seat" />
                    </div>
    
                    <!--- fst seat price-->
                    <div class="mb-3 mt-3">
                        <label for="fst seat price" class="form-label">fst seat price : </label>
                        <input type="Departure Airprt Id" class="form-control" name="fst_seat_price" placeholder="fst seat price" />
                    </div>
    			</div>
    			<div class="col-sm-12 col-md-4 col-xs-12 col-lg-4">
                    <!-- Business seat -->
                    <div class="mb-3 mt-3">
                        <label for="Business seat" class="form-label">Business seat: </label>
                        <input type="text" class="form-control" name="Business_seat" placeholder="Business seat" />
                    </div>
               
                    <!--- Business seat price -->
                    <div class="mb-1 mt-1">
                        <label for="Business seat price" class="form-label">Business seat price: </label>
                        <input type="text" class="form-control" name="Business_seat_price" placeholder="Business seat price" />
                    </div>
    
                    <!-- Premium economy seat-->
                    <div class="mb-3 mt-3">
                        <label for="Premium economy seat" class="form-label">Premium economy seat : </label>
                       <input type="text" class="form-control" name="Premium_economy_seat" placeholder="Premium economy seat" />
                    </div>
    			</div>
    			<div class="col-sm-12 col-md-4 col-xs-12 col-lg-4">
                    <!--Premium economy seat price -->
                    <div class="mb-3 mt-3">
                        <label for="Premium economy seat price" class="form-label">Premium economy seat price : </label>
                       <input type="text" class="form-control" name="Premium_economy_seat_price" placeholder="Premium economy seat price" />
                    </div>
					
					<!--economy seat -->
                    <div class="mb-3 mt-3">
                        <label for="economy seat" class="form-label">economy seat : </label>
                       <input type="text" class="form-control" name="economy_seat" placeholder="economy seat" />
                    </div>
					
					<!--economy seat price -->
                    <div class="mb-3 mt-3">
                        <label for="economy seat price" class="form-label">economy seat price : </label>
                       <input type="text" class="form-control" name="economy_seat_price" placeholder="economy seat price" />
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
            
            <!--  message -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center text-success">
                    ${message }
                </div>				
            </div>
        </form>
    </div>
</body>
</html>