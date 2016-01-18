package com.ksd.entity;

import java.util.Date;

@SuppressWarnings("serial")
public class Persion implements java.io.Serializable{

	private String name;
	private Integer age;
	private String address;
	private Date date;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
