package edu.cjc.main.servicei;

import java.util.List;

import edu.cjc.main.model.Login;
import edu.cjc.main.model.Student;

public interface serviceAdminI {

	Login checkCred(String username, String password);

	List<Login> getId();

	Login checkUsername(String username);

	void updatepassword(String userId, String password);




}
