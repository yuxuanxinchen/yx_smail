package com.ksd.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.document.mongodb.mapping.Document;

@SuppressWarnings("serial")
@Document(collection="City")
public class City implements java.io.Serializable{

	@Id
	private String id;
	private String className;
	private String name;
	private Boolean enable;
	private Date createDate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getEnable() {
		return enable;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public City(String id, String className, String name, Boolean enable, Date createDate) {
		super();
		this.id = id;
		this.className = className;
		this.name = name;
		this.enable = enable;
		this.createDate = createDate;
	}
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
