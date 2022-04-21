<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>City details- Online Airline Reservation System</title>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!--- custome style sheet-->
<link href="/css/style.css" rel="stylesheet" type="text/css" />

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div class="container-fluid">
        <form method="post" class="reg_frm">
        	<div class="row">
        		<div class="col-sm-12 col-md-12 col-xs-12 col-lg-12">
        			<div class="mb-3 mt-3">
        				<h2> Airport Details :- </h2>
        				<hr style="height:4px; background-color: dodgerble;"/>
        			</div>
        		</div>
        	</div>
        	
        	<div class="row">
        		<div class="col-sm-12 col-md-12 col-xs-12 col-lg-12">
        			<div class="mb-3 mt-3">
        				<label for="airport_name" class="form-label"> Airport Name : </label>
        				<input type="text" class="form-control" name="airport_name" placeholder="enter airport detail" />
        			</div>
        		</div>
        	</div>
            <div class="row">
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">			    
				    <!-- iata code -->
				    <div class="mb-3 mt-3">
					    <label for="iata_code" class="form-label">iata code</label> 
					    <input type="text" name="iata_code" class="form-control" placeholder="iata code" />
				    </div>

                	<!-- icao code -->
				    <div class="mb-3 mt-3">
					    <label for="icao_code" class="form-label">icao code</label> 
					    <input type="text" name="icao_code" class="form-control" placeholder="icao code" />
				    </div>
				</div>

			    <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
			    	<!-- City id-->
				    <!-- <div class="mb-3 mt-1">
					    <label for="city_id" class="form-label">City id : </label> <input
						type="text" name="city id" class="form-control"
						placeholder="city id" />
				    </div> -->

				    <!-- City name -->
				    <div class="mb-3 mt-3">
					    <label for="city name" class="form-label">City name</label> 
					    <input type="text" name="city_name" class="form-control" placeholder="city name" />
				    </div>
				
					<!-- State -->
				    <div class="mb-3 mt-3">
					
						<label for="state" class ="form-label">Choose a State:</label>
						    <select class="form-select" name="state">
                                <option value=" ">choose a State</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Puducherry">Puducherry</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="West Bengal">West Bengal</option>
					        </select>
					</div>
                </div>

			 <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
				<!--  login button -->
				<div class="mb-3 mt-3" style="text-align:center">				
						<input type="submit" value="Submit" class="btn btn-primary" />
						<input type="reset" value="Clear" class="btn btn-primary" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-12 col-xs-12 col-lg-12">
					${airport }
					<br/>
					${city_details }
				</div>
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