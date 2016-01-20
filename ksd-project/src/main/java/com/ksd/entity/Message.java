package com.ksd.entity;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.document.mongodb.mapping.Document;

@Document(collection="Message")
public class Message implements java.io.Serializable{

	private static final long serialVersionUID = 1183129592036515512L;
	
	@Id
	private String id;
	private String title;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(String id, String title) {
		super();
		this.id = id;
		this.title = title;
	}
	
	
	
}
