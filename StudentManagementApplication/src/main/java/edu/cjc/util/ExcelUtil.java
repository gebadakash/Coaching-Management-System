package edu.cjc.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import edu.cjc.main.model.Student;

public class ExcelUtil {

	
	public static String HEADER[] = {
			
			
			"StudentId",
			"studentFullName",
			"studentEmail",
			"studentAge",
			"studentcontact",
			"studentCollegeName",
			"studentCourse",
			"batchNumber",
			"batchMode",
			"feesPaid",
			"Totalfees",
			"studentAddress"
	};
	
	
	
	public static String SHEET_NAME = "sheetForStudentData";
	
	
	public static ByteArrayInputStream datatoExcel(List<Student> studentList)throws IOException  {
		
		Workbook workbook = new XSSFWorkbook();
		
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
		
		try {
		
		Sheet sheet = workbook.createSheet(SHEET_NAME);
		
		Row row = sheet.createRow(0);
		 
		
		
		for(int i=0; i<HEADER.length; i++) {
			
			
			Cell cell = row.createCell(i);
			cell.setCellValue(HEADER[i]);
		}
		
		
		int rowIndex = 1;
		
		for(Student s: studentList) {
			
			Row row1 = sheet.createRow(rowIndex);
			
			rowIndex++;
			
			row1.createCell(0).setCellValue(s.getStudentId());
			row1.createCell(1).setCellValue(s.getStudentFullName());
			row1.createCell(2).setCellValue(s.getStudentEmail());
			row1.createCell(3).setCellValue(s.getStudentAge());
			row1.createCell(4).setCellValue(s.getStudentcontact());
			row1.createCell(5).setCellValue(s.getStudentCollegeName());
			row1.createCell(6).setCellValue(s.getStudentCourse());
			row1.createCell(7).setCellValue(s.getBatchNumber());
			row1.createCell(8).setCellValue(s.getBatchMode());
			row1.createCell(9).setCellValue(s.getTotalfees());
			row1.createCell(10).setCellValue(s.getFeesPaid());
			row1.createCell(11).setCellValue(s.getStudentAddress());
			
			
		}
		
			workbook.write(byteArrayOutputStream);
			return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
		} catch (IOException e) {
			
			throw new RuntimeException(e);
		}
		
		finally {
			
			workbook.close();
			byteArrayOutputStream.close();
		}
		
		
		
		
		
	}
	
}
