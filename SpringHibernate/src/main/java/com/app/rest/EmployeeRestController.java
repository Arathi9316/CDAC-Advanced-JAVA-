package com.app.rest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.entity.Employee;
import com.app.service.EmployeeService;

@RestController
@RequestMapping("/api")
public class EmployeeRestController {
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/employees")
	public List<Employee> getAllEmployees(){
		return employeeService.getAllEmployees();
	}
	@GetMapping("/employees/{id}")
	public ResponseEntity<Employee> getEmpById(@PathVariable int id) {
		Employee e=employeeService.getEmployeeById(id);
		if(e==null) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		else {
			return new ResponseEntity<>(e,HttpStatus.FOUND);
		}
	}
	@PostMapping("/employees")
	public Employee saveEmployee(@RequestBody Employee employee) {
		 employeeService.saveEmployee(employee);
		 return employee;
	}
	@PutMapping("/employees")
	public ResponseEntity<String> updateEmployee(@RequestBody  Employee theEmployee)
	{
		Employee e=employeeService.getEmployeeById(theEmployee.getId());
		if(e==null) {
			return new ResponseEntity<>("Employee not found with id "+theEmployee.getId(),HttpStatus.NOT_FOUND);
		}
		else {
			employeeService.updateEmployee(e);
			return new ResponseEntity<>("Employee updates with id "+theEmployee.getId(),HttpStatus.FOUND);
		}	
	}
	@DeleteMapping("/employees/{id}")
	public ResponseEntity<Void> deleteEmployee(@PathVariable int id){
		Employee e=employeeService.getEmployeeById(id);

		if(e==null) {
			return ResponseEntity.noContent().build();
		}
		else {
			employeeService.deleteEmployee(e);
			return ResponseEntity.ok().build();
		}
	}
	
}
