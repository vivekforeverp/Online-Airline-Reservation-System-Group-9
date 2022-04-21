package airlines;

import org.springframework.data.jpa.repository.JpaRepository;

import airlines.Entity.Airport_details;

public interface AirportRepository extends JpaRepository<Airport_details, Integer> {

}
