package com.app.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.entity.Employee;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.transaction.Transactional;
@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		Query query=entityManager.createQuery("from Employee");
		List<Employee> list=query.getResultList();
		return list;
	}

	@Override
	@Transactional
	public void saveEmployee(Employee e) {
		// TODO Auto-generated method stub
		entityManager.persist(e);
		
	}

	@Override
	public Employee getEmployeeById(int id) {
		Employee e=entityManager.find(Employee.class, id);
		// TODO Auto-generated method stub
		return e;
	}

	@Override
	@Transactional
	public Employee updateEmployee(Employee e) {
		// TODO Auto-generated method stub
		
		return entityManager.merge(e);
	}

	@Override
	@Transactional
	public void deleteEmployee(Employee e) {
		// TODO Auto-generated method stub
		entityManager.remove(e);
		
	}

}