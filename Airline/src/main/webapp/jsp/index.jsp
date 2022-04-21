<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<link href="/css/style.css" rel="stylesheet" type="text/css" />

<!-- Latest compiled JavaScript -->
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!--  jQuery cnd link -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
			<!--  search form -->
			<form method="post" class="search_frm mx-auto" id="search_frm" action="searchflight">
				<!-- srouce city -->
				<div class="mb-3 mt-1">
					<label for="source" class="form-label">Where from : </label> 
					<input	list="from_city" class="form-control" name="source" placeholder="where from" id="from_city_input"/>
					
					<datalist id="from_city"></datalist>
				</div>

				<!-- destination city-->
				<div class="mb-3 mt-3">
					<label for="destination" class="form-label">Where to : </label> 
					<input list="destination_city" class="form-control" name="destination" placeholder="where to" id="to_city_input" />
					<datalist id="destination_city"></datalist>
				</div>

				<!-- date -->
				<div class="mb-3 mt-3">
					<label for="traving_date" class="form-label">Select Date :
					</label> <input type="date" class="form-control" name="traveling_date" />
				</div>

				<!-- search button -->
				<div class="mt-1 mb-1">
					<input type="submit" value="Search" class="btn btn-primary" />
					
					<a href="/airline/login" class="btn btn-link">Login</a>
				</div>
			</form>

		</div>

		<div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
			<h1>Online Airline Reservation System</h1>
			<h4 class="text-center">Safety | Security | Punctuality |</h4>
		</div>
	</div>

<!--  custome javascript -->
<script>
	$(document).ready(function(){
		
		function searchCity(city, id){
			var city_list = "";
			$.ajax({
				type: "POST",
				url: "/airline/searchCity", 
				data: {city: city},
				dataType: "json",
				success: function(response){
					console.log(response);
					
					response.forEach(function(item){
						city_list +="<option>"+item+"</option>";
					}); 
					
					id.html(city_list);
				}
			});
		}
		//source city
		$("#from_city_input").on("keyup", function(){
			var sourceCity = $("#from_city_input").val(); // city input value
			
			var id = $("#from_city");
			searchCity(sourceCity, id);
			
			//alert(sourceCity);
			// ajax call
			/* $.ajax({
				type: "POST",
				url: "/searchCity", 
				data: {sourceCity: sourceCity},
				dataType: "json",
				success: function(response){
					console.log(response);
					
					response.forEach(function(item){
						city_list +="<option>"+item+"</option>";
					}); 
					
					$("#from_city").html(city_list);
				}
			}); */
		});
		
		// destination city
		$("#to_city_input").on("keyup",function(){
			var toCity = $("#to_city_input").val();
			var id = $("#destination_city");
			searchCity(toCity, id);
					
			/* $.ajax({
				type: "POST",
				url: "/searchCity", 
				data: {sourceCity: sourceCity},
				dataType: "json",
				success: function(response){
					console.log(response);
					
					response.forEach(function(item){
						city_list +="<option> <span class='iata'>"+item+"</option>";
					}); 
					
					$("#from_city").html(city_list);
				}
			}); */
		});
	});
</script>
</body>
</html>