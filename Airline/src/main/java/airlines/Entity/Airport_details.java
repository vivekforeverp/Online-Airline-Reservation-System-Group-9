package airlines.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="airport_details")
public class Airport_details {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int airport_id;
	
	@Column(name="airport_name")
	private String airport_name;
	
	@Column(name="iata_code")
	private String iata_code;
	
	@Column(name="icao_code")
	private String icao_code;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="airport_city_id")
	private city_details cityDetails;

	public int getAirport_id() {
		return airport_id;
	}

	public void setAirport_id(int airport_id) {
		this.airport_id = airport_id;
	}

	public String getAirport_name() {
		return airport_name;
	}

	public void setAirport_name(String airport_name) {
		this.airport_name = airport_name;
	}

	public String getIata_code() {
		return iata_code;
	}

	public void setIata_code(String iata_code) {
		this.iata_code = iata_code;
	}

	public String getIcao_code() {
		return icao_code;
	}

	public void setIcao_code(String icao_code) {
		this.icao_code = icao_code;
	}

	public city_details getCityDetails() {
		return cityDetails;
	}

	public void setCityDetails(city_details cityDetails) {
		this.cityDetails = cityDetails;
	}

	@Override
	public String toString() {
		return "Airport_details [airport_id=" + airport_id + ", airport_name=" + airport_name + ", iata_code="
				+ iata_code + ", icao_code=" + icao_code + ", cityDetails=" + cityDetails + "]";
	}
	
}
