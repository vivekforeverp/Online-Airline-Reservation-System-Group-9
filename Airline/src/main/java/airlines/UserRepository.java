package airlines;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import airlines.Entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	@Query("select u FROM user u where u.Email=:email AND u.Password=:password")
	User findByEmailAndPassword(@Param("email") String email, @Param("password") String password);	
}

