package com.employee.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.employee.model.EmployeesModel;

@Repository
public class EmployeesDoa {
	
	// DI depency injection
	@Autowired
	private JdbcTemplate JdbcTemplate;
	
	
	// this method save the employees 
	public void save(EmployeesModel empDodel) {
		
		String sqlScript = "insert into employee_table(firstName, lastName, doh) values(?,?,?)";
			Object[] data = { empDodel.getFirstName(),empDodel.getLastName(), empDodel.getDoh()    };
			
			JdbcTemplate.update(sqlScript,data);
	}
	
	
	// this method get all Employees info list
	
	public List<EmployeesModel> getAllEmployee() {
		
		List<EmployeesModel> emplist  = JdbcTemplate.query("select id, firstName,  lastName,doh from employee_table",
			new BeanPropertyRowMapper(EmployeesModel.class)	
				);
		 
		
		return emplist;
		
	}
	
	
	
	// delete an employee
	
	public String deleteEmployeeByFirstName(String firstName) {
		int rows = JdbcTemplate.update("delete from employee_table where firstName = ? " , firstName);
		String result = "the Number of row deleted is = " + rows;
		
		return result;
	}
	
	
	public EmployeesModel findById(int eid) {
		
	String sql = 	"select id, firstName,  lastName,doh from employee_table where id =  " + eid;
		
	List<EmployeesModel> employeeList = JdbcTemplate.query(sql, new BeanPropertyRowMapper(EmployeesModel.class));
		return employeeList.size() == 1 ?  employeeList.get(0) : null;
	}
	
	
	public void updateEmployee(EmployeesModel employeeModel) {
		
	 String sql ="update employee_table set firstName = ?, lastName = ?, id = ? ";
	
			Object[] data = {employeeModel.getFirstName(),  employeeModel.getLastName(), employeeModel.getId() };
 		
		
			JdbcTemplate.update(sql, data);
		
	}
	
	
	
	

}
