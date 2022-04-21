package airlines;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import airlines.Entity.Flight_details;

import airlines.Entity.Airport_details;

import airlines.Entity.city_details;

public interface FlightRepository extends JpaRepository<Flight_details, String> {
	
	//List<String> findByCity();
	
	@Query("select c.city_name from city_details c where c.city_name like :city%")
	List<String> findByCity(String city);

	@Query("select f from flight_details f where arrival_id=(select a.airport_id from Airport_details a where a.cityDetails=(select c.city_id from city_details c where c.city_name=:source)) and departure_id=(select a.airport_id from Airport_details a where a.cityDetails=(select c.city_id from city_details c where c.city_name=:destination)) and flight_date=:traveling_date")
	List<Flight_details> findFlight(String source, String destination, String traveling_date);

	/*
	 * @Query() List<Flight_details> findFlight(String source, String destination);
	 */

}
