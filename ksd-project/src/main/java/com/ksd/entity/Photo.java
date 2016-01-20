package com.ksd.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.document.mongodb.mapping.Document;

@Document(collection="Photos")
public class Photo {

	@Id
	private String id;
	private String className;
	private String photosName;
	private String mongoMemberId;
	private String photosType;
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
	public String getPhotosName() {
		return photosName;
	}
	public void setPhotosName(String photosName) {
		this.photosName = photosName;
	}
	public String getMongoMemberId() {
		return mongoMemberId;
	}
	public void setMongoMemberId(String mongoMemberId) {
		this.mongoMemberId = mongoMemberId;
	}
	public String getPhotosType() {
		return photosType;
	}
	public void setPhotosType(String photosType) {
		this.photosType = photosType;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Photo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Photo(String id, String className, String photosName,
			String mongoMemberId, String photosType, Date createDate) {
		super();
		this.id = id;
		this.className = className;
		this.photosName = photosName;
		this.mongoMemberId = mongoMemberId;
		this.photosType = photosType;
		this.createDate = createDate;
	}
	
	
	
}
