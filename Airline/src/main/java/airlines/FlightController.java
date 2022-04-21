package airlines;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import airlines.Entity.Airport_details;
import airlines.Entity.Flight_details;
import airlines.Entity.Passenger_details;
import airlines.Entity.city_details;

@Controller
@RequestMapping("/airline")
public class FlightController {

	@RequestMapping("/flight_details")
	public String flightDetailsPage() {
		return "flight_details";
	}

	@Autowired(required = true)
	FlightRepository flightRepository;
	
	@Autowired(required=true)
	AirportRepository airportRepository;
	
	@Autowired(required=true)
	CityRepository cityRepository;
	
	@Autowired(required=true)
	PassengerRepository passengerRepository;
	
	 @GetMapping("/passenger_details")
	  public String displayPassenger() {
		  return "Passenger_details";
	  }

	 @PostMapping("/passenger_details")
	 public ModelAndView savePassenger(Passenger_details passenger_details) {
		 passengerRepository.save(passenger_details);
		 ModelAndView modelandview = new ModelAndView();
		 modelandview.addObject("message","Data has been Saved Successfully");
		 modelandview.setViewName("Passenger_details");
		 return modelandview;
	 }
	@PostMapping("/flight_details")
	public ModelAndView FlightDetailsMethod(Model model, Flight_details flight_details) {
		System.out.println("This is flight details .....");
		flightRepository.save(flight_details);
		ModelAndView modelandview = new ModelAndView();
		modelandview.addObject("message", "Flight record added successfully...");
		modelandview.setViewName("flight_details");
		return modelandview;
	}

	@PostMapping("/searchCity")
	public @ResponseBody List<String> searchSourceCity(@RequestParam("city") String city) {
		return flightRepository.findByCity(city);
	}

	@GetMapping("/airport_details")
  	public String showAirport() {
  		return "airport_details";
  	}
	
	@PostMapping("/airport_details")
	public ModelAndView saveAirport(Airport_details airport_details, city_details city_details) {
		cityRepository.save(city_details);
		airport_details.setCityDetails(city_details);
		airportRepository.save(airport_details);		
		ModelAndView modelandview = new ModelAndView();
		
		/*
		 * modelandview.addObject("airport",airport_details);
		 * modelandview.addObject("city_details",city_details);
		 */
		
		modelandview.addObject("message","Recrod inserted succussfully...");
		modelandview.setViewName("/airport_details");
		return modelandview;
	}
	
	
	  @PostMapping("/searchflight") 
	  public ModelAndView searchFlight(@RequestParam("source") String source, @RequestParam("destination") String destination, @RequestParam("traveling_date") @DateTimeFormat(pattern="yyyy-mm-dd") String traveling_date){ 
		  ModelAndView modelandview = new ModelAndView();	  
		  modelandview.addObject("source", source);
		  modelandview.addObject("destination", destination);
		  modelandview.setViewName("searchflight");
		  modelandview.addObject("flight_date",traveling_date);
		  //System.out.println("flight_date : "+traveling_date);
		 
		  List<Flight_details> flight = flightRepository.findFlight(source, destination, traveling_date); 
			  String record = "";
			  String message = "";
			  Iterator itr = flight.iterator(); 
			 
			  //System.out.println(record);
			  if(itr.hasNext()) {
				  while(itr.hasNext()) {
					  //System.out.println(itr.next());
					  Flight_details flight_dt = (Flight_details) itr.next();
					  //System.out.println("Flight number : "+flight_dt.getFlight_number());					 
						 //record += "<tr class='mt-4 p-5 bg-primary text-white rounded'><td>"+flight_dt.getAirline_name()+"</td><td>"+flight_dt.getArrival_time()+"</td><td>"+source+"</td><td>"+flight_dt.getDuration()+"</td><td>"+flight_dt.getDeparture_time()+"</td><td>"+destination+"</td><td><a href='#' class='btn btn-primary'>Book Now</a></td></tr>";
						 record += "<tr class='mt-4 p-5 bg-light text-dark rounded'><td>"+flight_dt.getAirline_name()+"</td><td>"+flight_dt.getArrival_time()+"<br/>"+source+"</td><td>"+flight_dt.getDuration()+"</td><td>"+flight_dt.getDeparture_time()+"<br/>"+destination+"</td><td><a href='/airline/passenger_details' class='btn btn-primary'>Book Now</a></td></tr>";

				  }
				  modelandview.addObject("record",record);
			  }else {
				  message += "<div class='mb-3 mt-3 display-4'> Not any Flight Available <a href='/airline/index' class='btn btn-primary btn-sm'>Go Back</a></div>";
				  modelandview.addObject("record",message);
				  
			  }		  	
		  	
		  // modelandview.addObject("flights",flight);
		  return modelandview; 
		}
	  
	 
	 
}
