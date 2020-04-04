package com.org.EmployeeManagement.service;

import java.util.List;

import com.org.EmployeeManagement.entity.Employee;

public interface EmployeeService {

	public List<Employee> getAllEmployees();

	public void saveEmployee(Employee emp);

	public Employee getEmployeeById(int id);

	public void deleteEmployee(int id);

	public List<Employee> findEmployee(int theId);
	
}
