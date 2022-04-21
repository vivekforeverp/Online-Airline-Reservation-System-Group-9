package airlines.Entity;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name="Flight_Seat_Details")
@Table(name="flight_seat_details")

public class Flight_Seat_Details {

	@Id
	@Column(name="flight_number")	
	private String flight_number;

	
	@Column(name="fst_seat")
	private String fst_seat;
	
	@Column(name="fst_seat_price")
	private String fst_seat_price;
	
	@Column(name="business_seat")
	private String business_seat;
	
	@Column(name="business_seat_price")
	private String business_seat_price;
	
	@Column(name="premium_economy_seat")
	private String premium_economy_seat;
	
	@Column(name="premium_economy_seat_price")
	private String premium_economy_seat_price;
	
	@Column(name="economy_seat")
	private String economy_seat;
	
	@Column(name="economy_seat_price")
	private String economy_seat_price;
	
	public String getFlight_number() {
		return flight_number;
	}

	public void setFlight_number(String flight_number) {
		this.flight_number = flight_number;
	}

	public String getFst_seat() {
		return fst_seat;
	}

	public void setFst_seat(String fst_seat) {
		this.fst_seat = fst_seat;
	}

	public String getFst_seat_price() {
		return fst_seat_price;
	}

	public void setFst_seat_price(String fst_seat_price) {
		this.fst_seat_price = fst_seat_price;
	}

	public String getBusiness_seat() {
		return business_seat;
	}

	public void setBusiness_seat(String business_seat) {
		this.business_seat = business_seat;
	}

	public String getBusiness_seat_price() {
		return business_seat_price;
	}

	public void setBusiness_seat_price(String business_seat_price) {
		this.business_seat_price = business_seat_price;
	}

	public String getPremium_economy_seat() {
		return premium_economy_seat;
	}

	public void setPremium_economy_seat(String premium_economy_seat) {
		this.premium_economy_seat = premium_economy_seat;
	}

	public String getPremium_economy_seat_price() {
		return premium_economy_seat_price;
	}

	public void setPremium_economy_seat_price(String premium_economy_sesat_price) {
		this.premium_economy_seat_price = premium_economy_sesat_price;
	}

	public String getEconomy_seat() {
		return economy_seat;
	}

	public void setEconomy_seat(String economy_seat) {
		this.economy_seat = economy_seat;
	}

	public String getEconomy_seat_price() {
		return economy_seat_price;
	}

	public void setEconomy_seat_price(String economy_seat_price) {
		this.economy_seat_price = economy_seat_price;
	}

}
