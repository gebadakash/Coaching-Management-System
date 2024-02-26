package edu.cjc.main.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.main.model.Login;

@Repository
public interface adminService extends JpaRepository<Login, String> {

	public Login findByUsernameAndPassword(String username, String password);
	
	public Login findByUsername(String username);
	

}
