/**
 * Project Name:tzupload
 * File Name:User.java
 * Package Name:bean
 * Date:2015年11月6日下午9:04:29
 * Copyright (c) 2015, chenzhou1025@126.com All Rights Reserved.
 *
 */

package com.yx.entity;

import java.util.Date;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.entity.AdminUser.java]  
 * @ClassName:    [AdminUser]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午10:21:11]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class AdminUser implements java.io.Serializable {

	// 主键
	private Integer id;
	// 用户名称
	private String username;
	// 密码
	private String password;
	// 邮箱
	private String email;
	// 年龄
	private Integer age;
	// 1男0女2保密
	private Integer male;
	// 地址
	private String address;
	// 手机
	private String telephone;
	// 0未删除1删除
	private Integer isDelete;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 生日
	private Date birthday;
	// 0不允许登陆1允许登陆
	private Integer forbiden;

	public AdminUser() {
		super();
	}

	/**
	 * 创建一个新的实例 User.
	 * 
	 * @param id
	 * @param username
	 * @param password
	 * @param email
	 * @param age
	 * @param male
	 * @param address
	 * @param telephone
	 * @param isDelete
	 * @param createTime
	 * @param updateTime
	 * @param birthday
	 * @param forbiden
	 */
	public AdminUser(Integer id, String username, String password,
			String email, Integer age, Integer male, String address,
			String telephone, Integer isDelete, Date createTime,
			Date updateTime, Date birthday, Integer forbiden) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.age = age;
		this.male = male;
		this.address = address;
		this.telephone = telephone;
		this.isDelete = isDelete;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.birthday = birthday;
		this.forbiden = forbiden;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getMale() {
		return male;
	}

	public void setMale(Integer male) {
		this.male = male;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getForbiden() {
		return forbiden;
	}

	public void setForbiden(Integer forbiden) {
		this.forbiden = forbiden;
	}

}
