package airlines.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="flight_details")
@Table(name="flight_details")
public class Flight_details {

	@Id
	@Column(name="flight_number")
	private String flight_number;
	
	@Column(name="airline_name", nullable=false)
	private String airline_name;
	
	@Column(name="arrival_airport_id", nullable=false)
	private int arrival_id;
	
	@Column(name="departure_airport_id", nullable=false)
	private int departure_id;
	
	@Column(name="flight_date", nullable=false)
	private String flight_date;
	
	@Column(name="duration", nullable=false)
	private long duration;
	
	@Column(name="arrival_time")
	private String arrival_time;
	
	
	private String departure_time;

	public String getFlight_number() {
		return flight_number;
	}

	public void setFlight_number(String flight_number) {
		this.flight_number = flight_number;
	}

	public String getAirline_name() {
		return airline_name;
	}

	public void setAirline_name(String airline_name) {
		this.airline_name = airline_name;
	}

	public int getArrival_id() {
		return arrival_id;
	}

	public void setArrival_id(int arrival_id) {
		this.arrival_id = arrival_id;
	}

	public int getDeparture_id() {
		return departure_id;
	}

	public void setDeparture_id(int departure_id) {
		this.departure_id = departure_id;
	}

	public String getFlight_date() {
		return flight_date;
	}

	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}

	public long getDuration() {
		return duration;
	}

	public void setDuration(long duration) {
		this.duration = duration;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}
	
	
	
	  @Override public String toString() { return "Flight_details [flight_number="
	  + flight_number + ", airline_name=" + airline_name + ", arrival_id=" +
	  arrival_id + ", departure_id=" + departure_id + ", flight_date=" +
	  flight_date + ", duration=" + duration + ", arrival_time=" + arrival_time +
	  ", departure_time=" + departure_time + "]"; }
	 

}
