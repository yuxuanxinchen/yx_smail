package com.ksd.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.document.mongodb.mapping.Document;

@SuppressWarnings("serial")
@Document(collection="Agent")
public class Agent implements java.io.Serializable{

	@Id
	private String id;
	private String address;
	private Date birthday;
	private String className;
	private Date createDate;
	private String district;
	private String email;
	private String gender;
	private Boolean isApply;
	private String name;
	private String phone;
	private String position;
	private String postcode;
	private String profile;
	private String qq;
	private Date signDate;
	private Date expireDate;
	private String remark;
	private Date lastModified;
	private String hasAccount;
	
	
	
	
	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Agent(String _id, String address, Date birthday, String className,
			Date createDate, String district, String email, String gender,
			Boolean isApply, String name, String phone, String position,
			String postcode, String profile, String qq, Date signDate,
			Date expireDate, String remark, Date lastModified, String hasAccount) {
		super();
		this.id = _id;
		this.address = address;
		this.birthday = birthday;
		this.className = className;
		this.createDate = createDate;
		this.district = district;
		this.email = email;
		this.gender = gender;
		this.isApply = isApply;
		this.name = name;
		this.phone = phone;
		this.position = position;
		this.postcode = postcode;
		this.profile = profile;
		this.qq = qq;
		this.signDate = signDate;
		this.expireDate = expireDate;
		this.remark = remark;
		this.lastModified = lastModified;
		this.hasAccount = hasAccount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getSignDate() {
		return signDate;
	}
	public void setSignDate(Date signDate) {
		this.signDate = signDate;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getLastModified() {
		return lastModified;
	}
	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}
	public String getHasAccount() {
		return hasAccount;
	}
	public void setHasAccount(String hasAccount) {
		this.hasAccount = hasAccount;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Boolean getIsApply() {
		return isApply;
	}
	public void setIsApply(Boolean isApply) {
		this.isApply = isApply;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
