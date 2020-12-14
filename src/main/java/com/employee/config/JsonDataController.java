package com.employee.config;

 

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.employee.dao.EmployeesDoa;
import com.employee.model.EmployeesModel;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {
	
	@Autowired
	EmployeesDoa employeesDoa;
	
	
	@GetMapping("/all/employees")
	@ResponseBody
	public List <EmployeesModel> getAllEmployee(){
		
		return employeesDoa.getAllEmployee();
	}
	
	
	@GetMapping("/single/{id}")
	@ResponseBody
		public EmployeesModel getEmployeesById(@PathVariable int id){
			
			
			return employeesDoa.findById(id);
			
			
			
		}
 
	
	
	
	
}
