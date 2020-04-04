package com.org.EmployeeManagement.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.org.EmployeeManagement.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO {

	@Autowired
	SessionFactory factory;
	
	public List<Employee> getAllEmployees() {

		Session session= factory.getCurrentSession();
		Query<Employee> query= session.createQuery("from Employee",Employee.class);
		List<Employee> list= query.getResultList();
		return list;
	}

	public void saveEmployee(Employee emp) {

		Session session= factory.getCurrentSession();
		session.saveOrUpdate(emp);
	}

	public Employee getEmployeeById(int id) {

		Session session= factory.getCurrentSession();
		Employee employee= session.get(Employee.class, id);
		return employee;
	}

	public void deleteEmployee(int id) {

		Session session= factory.getCurrentSession();
		Query<Employee> query= session.createQuery("delete from Employee where employee_id=:theEmployeeId",Employee.class);
		query.setParameter("theEmployeeId", id);
		query.executeUpdate();
	}

	public List<Employee> findEmployee(int theId) {

		Session session= factory.getCurrentSession();
		Query<Employee> query= session.createQuery("from Employee where employee_id=:theEmployeeId",Employee.class);
		query.setParameter("theEmployeeId", theId);
		List<Employee> list= query.getResultList();
		return list;
	}

}
