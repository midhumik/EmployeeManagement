package com.org.EmployeeManagement.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.EmployeeManagement.entity.Employee;
import com.org.EmployeeManagement.service.EmployeeService;


@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	
	@RequestMapping("/logout")
	public String logOutPage() {
		return "logout";
	}
	
	@GetMapping("/list")
	public String listEmployees(Model theModel) {
		
		List<Employee> employeeList= employeeService.getAllEmployees();
		theModel.addAttribute("employee", employeeList);
		return "employeeList";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormAdd(Model theModel) {
		
		Employee e= new Employee();
		theModel.addAttribute("employee",e);
		return "employeeForm";
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@Valid @ModelAttribute("employee") Employee theEmployee,BindingResult bind) {
		
		if(bind.hasErrors()) {
			System.out.println(bind);
			return "employeeForm";
		}
		else {
			employeeService.saveEmployee(theEmployee);
			return "redirect:/employee/list";
		}
	}
	
	@GetMapping("/updateEmployee")
	public String showFormForUpdate(@RequestParam("employee_id") int theId, Model theModel) {
		
		Employee employee= employeeService.getEmployeeById(theId);
		theModel.addAttribute("employee", employee);
		return "employeeForm";
	}
	
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employee_id") int theId) {
		
		employeeService.deleteEmployee(theId);
		return "redirect:/employee/list";
	}
	
	@PostMapping("/search")
	public String searchEmployee(@RequestParam("id") int theId,Model theModel) {
		
		Employee emp= employeeService.getEmployeeById(theId);
		if( emp == null) {
			theModel.addAttribute("id", theId);
			return "search-error";
		}
		else {
			List<Employee> empList= employeeService.findEmployee(theId);
			System.out.println(empList);
			theModel.addAttribute("emplist",empList);
			return "search-display";
		}
			
	}
	
}
