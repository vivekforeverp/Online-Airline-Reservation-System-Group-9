package airlines;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import airlines.Entity.Passenger_details;

@Controller
@RequestMapping("/airline")
public class PassengerController {
	
	@RequestMapping(value="/passengerdetails",method=RequestMethod.GET)
	public String passengerdetails() {
		return "Passenger_details";
		
	}
	
	@Autowired(required=true)
	PassengerRepository passengerRepository;
	
	@PostMapping("/passengerdetails")
	public ModelAndView PassengerDetailsMethod(Passenger_details passenger_details) {
		passengerRepository.save(passenger_details);
		ModelAndView modelandview = new ModelAndView();
		modelandview.addObject("message","Data has been Saved Successfully");
		modelandview.setViewName("Passenger_details");
		return modelandview;
		
	}

}
