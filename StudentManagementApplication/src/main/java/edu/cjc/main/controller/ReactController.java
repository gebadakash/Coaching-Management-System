package edu.cjc.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.cjc.main.model.Student;
import edu.cjc.main.servicei.serviceStudentI;

@RestController
@CrossOrigin
@RequestMapping("/api")
public class ReactController {
	
	
	@Autowired
	serviceStudentI serviceI;
	
	
	@PostMapping("/frontRegister")
	public ResponseEntity<?> register(@RequestBody Student student){
		
		serviceI.registerData(student);
		
		return ResponseEntity.ok("Registration successful!");
	}
	

}
