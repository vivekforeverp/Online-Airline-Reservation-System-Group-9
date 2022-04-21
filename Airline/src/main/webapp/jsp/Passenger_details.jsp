<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger Details - Online Airline Reservation System</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!--- custome style sheet-->
    <link href="/css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		.container{
			width: 100vh;
			height: 100vw;
			display: flex;
			align-items: center;
			justify-content: center;
		}
		
		table.table{
			width: 60%;
		}
	</style>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>  
   $(document).ready(function(){
	   $("#DOB").on("change",function(){
		   //var pg_t = $("#pg_t").val();
		   var dob = $("#DOB").val();
		   //alert(dob);
	        var dobYear = dob.getYear();
	        var currentYear = now.getYear(); 
	        var yearAge = currentYear - dobYear;  
	       //alert(yearAge);
	   });
   });
							/* function ageCalculator() {  
							    var userinput = document.getElementById("DOB").value;  
							    var dob = new Date(userinput);  
							    if(userinput==null || userinput=='') 
							    {  
							      //document.getElementById("message").innerHTML = "**Choose a date please!";    
							      return false;   
							    }
							    else 
							    {  
							    	//extract the year, month, and date from user date input  
							        var dobYear = dob.getYear();  
							        var dobMonth = dob.getMonth();  
							        var dobDate = dob.getDate();  
							          
							        //get the current date from the system  
							        var now = new Date();  
							        //extract the year, month, and date from current date  
							        var currentYear = now.getYear();  
							        var currentMonth = now.getMonth();  
							        var currentDate = now.getDate();   
							        var yearAge = currentYear - dobYear;  
							    	
							        
							       // var record = "<option value='1'>Infant</option>";
							   		alert(yearAge);
							   		if(yearAge<=5)
							   			{
							   			document.getElementById("pg_t").innerHTML = "<option value="1">Infant</option>";    
							   			}
							   		if(yearAge>5 && yearAge<18)
							   			{
							   			document.getElementById("pg_t").innerHTML = "<option value='2'> Teenager </option>";    
							   			}
							   		if(yearAge>=18)
						   				{
						   				document.getElementById("pg_t").innerHTML = "<option value="3">Adult</option>";
						   				}
							   		
							    }
							} */
</script>
</head>
<body>
    <div class="container-fluid">    	
        <form method="post" class="reg_frm">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
    				
    				 <!--- passenger name-->
					 <div class="mb-3 mt-3">
                        <label for="Passenger_name" class="form-label">Passenger_name : </label>
                        <input type="text" class="form-control" name="passenger_name" placeholder="Enter passenger_name" />
                    </div>
    
                    <!-- Date of birth-->
                    <div class="mb-3 mt-3">
                    
					  <label for="Date of Birth" class="form-Label">Date Of Birth:</label>
					  <input type="date" id="DOB" class="form-control" name="date_of_birth">
					  
                    </div>
                    <!--passenger type -->
                    <!-- <div class="mb-3 mt-3">
                        <label for="passenger_type" class="form-label">Passenger Type : </label>
                        <select class="form-select" id="pg_t" name="passenger_type">
							
						</select>
                    </div> -->                    
               </div>
				
				
				
                <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
                    <!--- Gender --->
                    <div class="mb-3 mt-3">
                        <label for="Gender" class ="form-label">Choose a Gender:</label>
						<select class="form-select" name="gender">
						<option value="0">choose a Gender</option>
						<option value="1">Male</option>
						<option value="2">Female</option>
						<option value="3">Transgender</option>
						</select>
                    </div>
					
    
                    <!-- Mobile number-->
                    <div class="mb-3 mt-3">
                        <label for="mobile_no" class="form-label">mobile_no: </label>
						<input type="text" id ="mobile no" class="form-control" name="mobile_no" placeholder="mobile_no" />
                    </div>
					
					
    
                    <!--Email_ID -->
                    <div class="mb-3 mt-3">
                        <label for="Email_ID" class="form-label">Email_ID : </label>
						<input type="text" class="form-control" name="email_id" placeholder="Email_ID" />
                    </div>
    
                   
                </div>
            </div>

            <!-- submit button-->
			 <!-- Clear button-->
            <div class="row"> 
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <input type="submit" class="btn btn-primary" value="Submit" />
					<input type="Reset" class="btn btn-primary" value="Clear" />
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