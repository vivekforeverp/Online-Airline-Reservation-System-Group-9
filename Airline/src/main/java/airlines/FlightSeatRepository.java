package airlines;

import org.springframework.data.jpa.repository.JpaRepository;

import airlines.Entity.Flight_Seat_Details;

public interface FlightSeatRepository extends JpaRepository<Flight_Seat_Details, String> {

}
