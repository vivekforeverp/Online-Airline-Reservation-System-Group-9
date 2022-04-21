package airlines;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import airlines.Entity.Flight_details;
import airlines.Entity.User;

@Controller
@RequestMapping("/airline")
public class IndexController {
	
	@RequestMapping({"/","/home","/index"})
	public String index() {		
		return "index";
	}
	
	@GetMapping("/signup")
	public String Sign_Up() {
		return "signup";
	}
	
	@Autowired(required=true)
	UserRepository usrRepository;
	
	@PostMapping("/signup")
	public String signup(Model model, User usr) {
		usrRepository.save(usr);
		model.addAttribute("message", "You are Registered successfully...<br/> <a href='/airline/login' class='btn btn-link'> Login </a>");
		return "signup";
	}	
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	/*
	 * @RequestMapping("/test") public String test(Model model) {
	 * model.addAttribute("message", "This is simple test file"); return "test"; }
	 */
	
  @PostMapping("/login") 
  public ModelAndView loginProcess(Model model, @RequestParam("email") String email, @RequestParam("password") String password) { 
	  User usr = usrRepository.findByEmailAndPassword(email, password);
	  ModelAndView modelandview = new ModelAndView();
	  
	  if(usr!=null) {
		  modelandview.addObject("message","Your are loged in successfully..");
		  modelandview.setViewName("index");
	  }else {
		  modelandview.addObject("message", "Invalid credential");
		  modelandview.setViewName("/login");
	  } 
	  return modelandview;
  }
}
