package com.employee.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employee.dao.EmployeesDoa;
import com.employee.model.EmployeesModel;

@Controller
public class EmployeesController {
	
	// dependency injection
	@Autowired
	private EmployeesDoa employeesDoa;
	
@PostMapping("/saveEmployees")	

public String SaveEmployees(HttpServletRequest request) {
String empFirstName =	request.getParameter("fristName");
String empLastName = request.getParameter("lastName");
	
	EmployeesModel theModel =  new EmployeesModel();
	theModel.setFirstName(empFirstName);
	theModel.setLastName(empLastName);
	
	Timestamp theTimestamp = new Timestamp(new Date().getTime());
	theModel.setDoh(theTimestamp);
	
	employeesDoa.save(theModel);
	
	request.setAttribute("successeSaveMessage", "The employee information is save successfully");
	
	
	return "leaders";
	
}


	// this method getsAllEmployee info list
	@GetMapping("/getEmployees")
	public String getAllEmployees(HttpServletRequest request, Model theModel) {
	List<EmployeesModel> employeesList = 	employeesDoa.getAllEmployee();
		
		if(employeesList != null) {
			request.setAttribute("noemployeesExits", "there is not employees in database");
			
			theModel.addAttribute("employees", employeesList);
		}
		
		return "employeesList";
	}


	
		@GetMapping("/removeEmployee")
		
		public String deleteEmloyee(HttpServletRequest request, Model model) {
	    String EmployeeFirstName  =	request.getParameter("firstName");
	    
	    List<EmployeesModel> emplyeeList = employeesDoa.getAllEmployee();
			
	    employeesDoa.deleteEmployeeByFirstName(EmployeeFirstName);
	    
	    request.setAttribute("deleteMessage", "the employee is deleted");
	    
	    model.addAttribute("employees", emplyeeList);
			
			return "employeesList";
			
		}
		
		
		
		
		
		@GetMapping("/updateEmployee")
		public String showUpatePate(@RequestParam int eid, Model model) {
			
		EmployeesModel theEmployee	 =   employeesDoa.findById(eid);
		model.addAttribute("updateEmployee", theEmployee);
			return "updatePate";
		}
		
		
		
		@PostMapping("/updateEmployee")
		public String updateEmployee(@RequestParam String firstName, @RequestParam String lastName, int eid, Model model) {
			
			EmployeesModel theEmployeesModel = new EmployeesModel();
			theEmployeesModel.setFirstName(firstName);
			theEmployeesModel.setLastName(lastName);
			theEmployeesModel.setId(eid);
			
			employeesDoa.updateEmployee(theEmployeesModel);
			
			
			model.addAttribute("updateMessage", "the employee updated successfully");
			
			
			
			return "updatePate";
		}
		

}
