package edu.cjc.main.serviceimpl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import edu.cjc.main.model.Student;
import edu.cjc.main.repositary.StudentPagination;
import edu.cjc.main.repositary.StudentRepositary;
import edu.cjc.main.servicei.serviceStudentI;
import edu.cjc.util.ExcelUtil;

@Service
public class serviceStudentimpl implements serviceStudentI {
	
	@Autowired
	StudentRepositary studentrepo;
	
	@Autowired
	StudentPagination stuPaginate;

	@Override
	public void saveStudent(Student student) {
		
		studentrepo.save(student);
		
	}

	@Override
	public List<Student> viewAllStudent() {
		
		
		return (List<Student>) studentrepo.findAll();
	}
	
	
	
	@Override
	public List<Student> getDatabyBatchNumber(String batchNumber) {
		
		return studentrepo.findAllByBatchNumber(batchNumber);
	}

	@Override
	public List<Student> deleteStudent(Integer studentId) {
		
		 studentrepo.deleteById(studentId);
		 
		 return (List<Student>) studentrepo.findAll();
	}


	@Override
	public Student getSingleStudent(int id) {
		
		Optional<Student> opStudent = studentrepo.findById(id);
		
		return opStudent.get();
	}

	@Override
	public void updateStudentFees(int id, int amount) {
		
		Optional<Student> opStudent = studentrepo.findById(id);
		
		Student stu =  opStudent.get();
		
		stu.setFeesPaid(stu.getFeesPaid()+amount);
		
		studentrepo.save(stu);
		
	}

	@Override
	public void updateStudentDetails(Student student) {
	    Optional<Student> opStudent = studentrepo.findById(student.getStudentId());
	    if (opStudent.isPresent()) {
	        Student stu = opStudent.get();
	        System.out.println("Existing Student: " + stu); // Log existing student details
	        // Set values from the parameter student
	        stu.setStudentId(student.getStudentId());
	        stu.setStudentFullName(student.getStudentFullName());
	        stu.setStudentEmail(student.getStudentEmail());
	        stu.setStudentCourse(student.getStudentCourse());
	        stu.setStudentCollegeName(student.getStudentCollegeName());
	        stu.setStudentAge(student.getStudentAge());
	        stu.setFeesPaid(student.getFeesPaid());
	        stu.setBatchNumber(student.getBatchNumber());
	        stu.setBatchMode(student.getBatchMode());
	        stu.setStudentAddress(student.getStudentAddress());
	        stu.setStudentcontact(student.getStudentcontact());
	        stu.setTotalfees(student.getTotalfees());
	        // Save the updated student
	        studentrepo.save(stu);
	        System.out.println("Updated Student: " + stu); // Log updated student details
	    } else {
	        System.out.println("Student with id " + student.getStudentId() + " not found."); // Log if student not found
	    }
	}

	@Override
	public Page<Student> getStubyPaginate(Pageable pageable) {
		
		return stuPaginate.findAll(pageable);
	}

	@Override
	public ByteArrayInputStream getDataDownload() throws IOException {
		
		
		List<Student> students = studentrepo.findAll();
		
		ByteArrayInputStream data = ExcelUtil.datatoExcel(students);
		
		return data;
	
		
	}

	@Override
	public void registerData(Student student) {
		
		studentrepo.save(student);
		
	}
	
	
	
	



}
