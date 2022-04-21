package airlines;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import airlines.Entity.Flight_Seat_Details;

@Controller
@RequestMapping("/airline")
public class FlightSeatController {
	
	@RequestMapping(value="/flightseat", method=RequestMethod.GET)
	public String flightseat()
	{
		return "flight_seat_details";
	}
	
	@Autowired(required=true)
	FlightSeatRepository flightSeatRepository;
	
	@PostMapping("/flightseat")
	public ModelAndView FlightSeatDetailsMethod(Flight_Seat_Details flight_seat_details)
	{
		//System.out.println("Flight Seat");
		//System.out.println("flight number : "+flight_seat_details.getFlight_number());
		
		 flightSeatRepository.save(flight_seat_details);
		 ModelAndView modelandview = new ModelAndView();
		 System.out.println("first class seat : "+flight_seat_details.getFst_seat());
		 System.out.println("Premium economy seat price : "+flight_seat_details.getPremium_economy_seat_price());
		 modelandview.addObject("message","Data has been Saved Successfully");
		 
		 
		modelandview.setViewName("flight_seat_details");
		return modelandview;	
	}

	/**/
}
