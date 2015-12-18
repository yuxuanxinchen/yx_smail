/**
 * Project Name:tzupload
 * File Name:User.java
 * Package Name:bean
 * Date:2015骞�1鏈�鏃ヤ笅鍗�:04:29
 * Copyright (c) 2015, chenzhou1025@126.com All Rights Reserved.
 *
 */

package com.yx.entity;

import java.util.Date;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.entity.User.java]  
 * @ClassName:    [User]   
 * @Description:  user
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午2:21:53]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class User {
	
	private int id;
	private String username; //用户名
	private String password; //密码
	private String email; //邮箱
	private Integer age;//年龄
	private String phone;//电话
	private String city; //城市
	private String[] hobbys;//爱好
	private String loves; 
	private Integer male; //性别
	private Date time;
	private String desc;
	
	private Boolean isDelete;

	public User(){
		super();
	}

	
	/**
	 * 鍒涘缓涓�釜鏂扮殑瀹炰緥 User.
	 * @param id
	 * @param username
	 * @param password
	 */
	public User(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String[] getHobbys() {
		return hobbys;
	}

	public void setHobbys(String[] hobbys) {
		this.hobbys = hobbys;
	}

	public String getLoves() {
		return loves;
	}

	public void setLoves(String loves) {
		this.loves = loves;
	}

	public Integer getMale() {
		return male;
	}

	public void setMale(Integer male) {
		this.male = male;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}
