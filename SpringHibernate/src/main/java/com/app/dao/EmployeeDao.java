package com.app.dao;

import java.util.List;

import com.app.entity.Employee;

public interface EmployeeDao {
	public List<Employee> getAllEmployees();
	public void saveEmployee(Employee e);
	public Employee getEmployeeById(int id);
	public Employee updateEmployee(Employee e);
	public void deleteEmployee(Employee e);
}