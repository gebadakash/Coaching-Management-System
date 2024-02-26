package edu.cjc.main.controller;




import java.io.ByteArrayInputStream;
import java.io.IOException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import edu.cjc.main.model.Login;
import edu.cjc.main.model.Student;
import edu.cjc.main.servicei.serviceAdminI;
import edu.cjc.main.servicei.serviceStudentI;


@Controller
public class AdminController {
	

	
	@Autowired
	serviceAdminI adminRepo;
	@Autowired
	serviceStudentI studentRepo;

	
	
	@GetMapping("/")
	public String preLogin() {
		
		return "Login";
		
	}
	
	@PostMapping("/login")
	public String onLogin(@RequestParam String username, @RequestParam String password,Model m) {
		
		Login adminData = adminRepo.checkCred(username,password);
		
		
		if(adminData != null && username.equals(adminData.getUsername()) && password.equals(adminData.getPassword())) {
			
			return "adminscreen";
			
		}else {
			
			m.addAttribute("login_fail", "Sorry, your password was incorrect. Please double-check your password.");
			return "Login";
		}

	}
	
	@GetMapping("/adminscreenPage")
	public String openAdminScreenPage() {
		
		return "adminscreen";
	}
	
	
	@PostMapping("/enroll_student")
	public String saveStudent(@ModelAttribute Student student) {

			
			studentRepo.saveStudent(student);
			
			return "adminscreen";
		
	}
	
	
	@GetMapping("/viewstu")
	public String Paginate(@RequestParam(defaultValue = "0") int page, 
            @RequestParam(defaultValue = "4") int size, 
            Model m) {
		
		Pageable pageable = PageRequest.of(page, size);
		
		Page<Student> stulist = studentRepo.getStubyPaginate(pageable);
		
		m.addAttribute("number", stulist.getNumber());
        m.addAttribute("totalPages", stulist.getTotalPages());
        m.addAttribute("totalElements", stulist.getTotalElements());
        m.addAttribute("size", stulist.getSize());
        m.addAttribute("Data",stulist.getContent());
        
		return "adminview";
		
	}
	
	
	@GetMapping("/showData")
	public String showData(@RequestParam String batchNumber, Model m) {
		
		List<Student> list = studentRepo.getDatabyBatchNumber(batchNumber);
		
		if(batchNumber.equals("#")) {
			
			m.addAttribute("message", "Please Select Any Batch");
			
			List<Student> data = studentRepo.viewAllStudent();
			
			m.addAttribute("Data", data);
			
			return "adminview";
			
		}else if(list.size()>0) {
			
			m.addAttribute("Data", list);
			
			
		}else if(list.isEmpty()) {
			
			m.addAttribute("message", "No Record available for batch no: "+batchNumber+" ");
			
		}
		
		return "adminview";
	}
	
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam Integer studentId, Model m) {
		
		List<Student> list = studentRepo.deleteStudent(studentId);
		
		m.addAttribute("Data", list);
		
		return "adminview";
		
		
	}
	
	
	
	@GetMapping("/fees")
	public String updateStudentFees(@RequestParam int id, Model m) {
		
		
		
		Student singleStudent = studentRepo.getSingleStudent(id);
		m.addAttribute("student", singleStudent);
		
		return "fees";
	}
	
	
	@GetMapping("/payfees")
	public String UpdateFees(@RequestParam Integer id, @RequestParam int amount, Model m) {
		
		
		studentRepo.updateStudentFees(id,amount);
		
		List<Student> data = studentRepo.viewAllStudent();
		
		m.addAttribute("Data", data);
		
		return "adminview";
		
		}
	
	
	@GetMapping("/shiftBatch")
	public String ShiftBatch(@RequestParam Integer id, Model m) {
		
		Student singleStudent = studentRepo.getSingleStudent(id);
		m.addAttribute("student", singleStudent);
			
		return "shiftBatch";
		
	}
	
	
		@PostMapping("/update")
		public String UpdateStudentDetails(@ModelAttribute Student student, Model m) {
		
		studentRepo.updateStudentDetails(student);
		
		List<Student> data = studentRepo.viewAllStudent();
		
		m.addAttribute("Data", data);
		
		return "adminview";
		
		
	}
		
		
		@GetMapping("/forgotpassword")
		public String forgotPass(Model m) {
			
			List<Login> Id = adminRepo.getId();
			
			Id.forEach(list->{
				
				System.out.println(list.getUserId());
				m.addAttribute("UserId", list.getUserId());
			});
			
			return "password";
			
		}
		
		
		@GetMapping("/updatePassword")
		public String updatepass(@RequestParam String userId,@RequestParam String username, @RequestParam String password,Model m) {
			
			Login adminData = adminRepo.checkUsername(username);
			
			System.out.println(adminData);
			
			if(adminData != null && username.equals(adminData.getUsername())) {
				
				adminRepo.updatepassword(userId,password);
				
				return "Login";
				
				
			}else {
				
				m.addAttribute("errorMessage", "Username is not Matched Re-enter Details");
				
				return "password";
			}
			
			
		}
		
		
	
		 	@GetMapping("/download")
		    public ResponseEntity<InputStreamResource> download() throws IOException {
		          String fileName ="students.xlsx";
		         ByteArrayInputStream inputStream = studentRepo.getDataDownload();
		         InputStreamResource    response = new InputStreamResource(inputStream);

		         ResponseEntity<InputStreamResource> responseEntity = ResponseEntity.ok()
		                 .header(org.springframework.http.HttpHeaders.CONTENT_DISPOSITION,"attachment;filename="+fileName)
		                 .contentType(org.springframework.http.MediaType.parseMediaType("application/vnd.ms-excel")).body(response);
		         return responseEntity;
		    }
	
	
		
	}



