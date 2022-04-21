package airlines;

import org.springframework.data.jpa.repository.JpaRepository;

import airlines.Entity.Passenger_details;

public interface PassengerRepository extends JpaRepository<Passenger_details, String>{

}
