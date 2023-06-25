package com.entity;

import java.util.Iterator;

import org.apache.catalina.Group;
import org.apache.catalina.Role;
import org.apache.catalina.UserDatabase;

public class User implements org.apache.catalina.User {
	
	private int id;
	private String name;
	private String email;
	private String password;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public User(String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}


	@Override
	public void addGroup(Group arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void addRole(Role arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public String getFullName() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Iterator<Group> getGroups() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Iterator<Role> getRoles() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public UserDatabase getUserDatabase() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean isInGroup(Group arg0) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean isInRole(Role arg0) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public void removeGroup(Group arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void removeGroups() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void removeRole(Role arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void removeRoles() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void setFullName(String arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void setUsername(String arg0) {
		// TODO Auto-generated method stub
		
	}

	
	
}
