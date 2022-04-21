package airlines.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity(name="city_details")
@Table(name="city_details")
public class city_details {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private int city_id;
	
	@Column(nullable=false)
	private String city_name;
	
	@Column(nullable=false)
	private String state;

	/*
	 * @OneToOne(targetEntity=Airport_details.class, cascade = CascadeType.ALL)
	 * private Airport_details airport_details;
	 */

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "city_details [city_id=" + city_id + ", city_name=" + city_name + ", state=" + state + "]";
	}

	/*
	 * public Airport_details getAirport_details() { return airport_details; }
	 * 
	 * public void setAirport_details(Airport_details airport_details) {
	 * this.airport_details = airport_details; }
	 */
	
	
}
