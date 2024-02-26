package edu.cjc.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer StudentId;
	
	private String studentFullName;
	
	private String studentEmail;
	
	private byte studentAge;
	
	private Long studentcontact;
	
	private String studentCollegeName;
	
	private String studentCourse;
	
	private String batchNumber;
	
	private String batchMode;
	
	private Integer feesPaid;
	
	private Integer Totalfees;
	
	private String studentAddress;
	

	public Integer getTotalfees() {
		return Totalfees;
	}

	public void setTotalfees(Integer totalfees) {
		Totalfees = totalfees;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}
	
	public int getStudentId() {
		return StudentId;
	}

	public void setStudentId(int studentId) {
		StudentId = studentId;
	}

	public String getStudentFullName() {
		return studentFullName;
	}

	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public byte getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(byte studentAge) {
		this.studentAge = studentAge;
	}

	public String getStudentCollegeName() {
		return studentCollegeName;
	}

	public void setStudentCollegeName(String studentCollegeName) {
		this.studentCollegeName = studentCollegeName;
	}

	public String getStudentCourse() {
		return studentCourse;
	}

	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}

	public String getBatchNumber() {
		return batchNumber;
	}

	public void setBatchNumber(String batchNumber) {
		this.batchNumber = batchNumber;
	}

	public String getBatchMode() {
		return batchMode;
	}

	public void setBatchMode(String batchMode) {
		this.batchMode = batchMode;
	}

	public Integer getFeesPaid() {
		return feesPaid;
	}

	public void setFeesPaid(Integer feesPaid) {
		this.feesPaid = feesPaid;
	}
	
	public Long getStudentcontact() {
		return studentcontact;
	}

	public void setStudentcontact(Long studentcontact) {
		this.studentcontact = studentcontact;
	}
	
	

}
