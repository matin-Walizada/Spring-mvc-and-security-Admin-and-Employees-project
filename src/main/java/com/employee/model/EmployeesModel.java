package com.employee.model;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class EmployeesModel {
	private int id;
	private String firstName;
	private String lastName;
	@JsonIgnore
	private Timestamp doh;
	//private char photo;
	
	// no argument constructor
	
	public EmployeesModel() {
	 
	}
	
	// parametrized constructor
	public EmployeesModel(int id, String firstName, String lastName, Timestamp doh) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.doh = doh;
	}

	
	// generates getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Timestamp getDoh() {
		return doh;
	}

	public void setDoh(Timestamp doh) {
		this.doh = doh;
	}

	
	// override the toString method
	@Override
	public String toString() {
		return "EmployeesModel [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", doh=" + doh
				+ "]";
	}
	
	

	
	
	

	
	
	
	
	
	
	
}
