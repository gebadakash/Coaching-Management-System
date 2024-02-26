package edu.cjc.main.servicei;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import edu.cjc.main.model.Student;

public interface serviceStudentI {

	void saveStudent(Student student);

	List<Student> viewAllStudent();

	List<Student> getDatabyBatchNumber(String batchNumber);

	List<Student> deleteStudent(Integer studentId);

	Student getSingleStudent(int id);

	void updateStudentFees(int id, int amount);

	void updateStudentDetails(Student student);

	Page<Student> getStubyPaginate(Pageable pageable);
	
	ByteArrayInputStream getDataDownload() throws IOException;

	void registerData(Student student);


}
