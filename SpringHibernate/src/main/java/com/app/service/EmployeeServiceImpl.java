package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.EmployeeDao;
import com.app.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	@Override
	public List<Employee> getAllEmployees() {
		
		return employeeDao.getAllEmployees();
	}

	@Override
	public void saveEmployee(Employee e) {
		employeeDao.saveEmployee(e);
	}

	@Override
	public Employee getEmployeeById(int id) {
		Employee e=employeeDao.getEmployeeById(id);
		return e;
	}

	@Override
	public Employee updateEmployee(Employee e) {
		Employee e1=employeeDao.updateEmployee(e);
			return e1;
	}

	@Override
	public void deleteEmployee(Employee e) {
		employeeDao.deleteEmployee(e);
		
	}

}