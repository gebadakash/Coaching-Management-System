package edu.cjc.main.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.main.model.Login;
import edu.cjc.main.repositary.adminService;
import edu.cjc.main.servicei.serviceAdminI;

@Service
public class serviceAdminimpl implements serviceAdminI {
	@Autowired
	adminService adminCheck;

	@Override
	public Login checkCred(String username, String password) {
		
		Login adminDetails = adminCheck.findByUsernameAndPassword(username, password);
		
		return adminDetails;
	}

	@Override
	public List<Login> getId() {
		
		return adminCheck.findAll();
	}

	@Override
	public Login checkUsername(String username) {
		
		return  adminCheck.findByUsername(username);
		
	}

	@Override
	public void updatepassword(String userId, String password) {
	    Optional<Login> opPassword = adminCheck.findById(userId);

	    if (opPassword.isPresent()) {
	        Login pass = opPassword.get();
	        pass.setPassword(password);
	        adminCheck.save(pass);
	    } else {
	        throw new RuntimeException("User with ID " + userId + " not found");
	    }
	}



}
