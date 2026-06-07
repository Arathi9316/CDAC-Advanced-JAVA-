package com.app.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	private String prn;
	private String name;
	private String password;
	private String email;
	private String gender;
	private String sub1;
	private String sub2;
	private String sub3;
	private String sub4;
	private String sub5;
	private float total;
	private float percentage;
	private String status;

	
	
}
