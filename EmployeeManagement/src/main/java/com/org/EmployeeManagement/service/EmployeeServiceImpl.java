package com.org.EmployeeManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.org.EmployeeManagement.dao.EmployeeDAO;
import com.org.EmployeeManagement.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDao;
	
	@Transactional
	public List<Employee> getAllEmployees() {

		return employeeDao.getAllEmployees();
	}

	@Transactional
	public void saveEmployee(Employee emp) {

		employeeDao.saveEmployee(emp);
	}

	@Transactional
	public Employee getEmployeeById(int id) {

		return employeeDao.getEmployeeById(id);
	}

	@Transactional
	public void deleteEmployee(int id) {

		employeeDao.deleteEmployee(id);
	}

	@Transactional
	public List<Employee> findEmployee(int theId) {

		return employeeDao.findEmployee(theId);
	}

	
	
}
