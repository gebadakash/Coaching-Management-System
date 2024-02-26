package edu.cjc.main.repositary;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.main.model.Student;


@Repository
public interface StudentPagination extends PagingAndSortingRepository<Student, Integer> {
	
	

}
