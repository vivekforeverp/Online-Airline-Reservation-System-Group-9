package airlines;

import org.springframework.data.jpa.repository.JpaRepository;

import airlines.Entity.city_details;

public interface CityRepository extends JpaRepository<city_details, Integer>{

}
