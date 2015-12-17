package com.tian.entity;

import java.io.Serializable;

public class Users implements Serializable{

	private static final long serialVersionUID = 1L;

	private int userID;
	
	private String userName;
	
	private String userEmail;
	
	private String userPwd;
	
	private int userPower;
	
	private int portectionID;


	public Users() {
		super();
	}
	/**
	 * 用户构造函数
	 * @param userName  用户名
	 * @param userPwd 用户密码
	 */
	public Users(String userName, String userPwd) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
	}
	
	
	/**
	 * 注册新用户构造函数
	 * @param userName  用户名
	 * @param userEmail 用户邮箱
	 * @param userPwd 用户密码
	 */
	public Users(String userName, String userEmail, String userPwd) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
	}
	
	/**
	 * 用户信息构造函数
	 * @param userID 用户ID	
	 * @param userName 用户名
	 * @param userEmail 用户邮箱
	 * @param userPwd  用户密码
	 * @param userPower 用户权限
	 * @param portectionID 用户密保ID
	 */
	public Users(int userID, String userName, String userEmail, String userPwd,
			int userPower, int portectionID) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.userPower = userPower;
		this.portectionID = portectionID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public int getUserPower() {
		return userPower;
	}
	public void setUserPower(int userPower) {
		this.userPower = userPower;
	}
	public int getPortectionID() {
		return portectionID;
	}
	public void setPortectionID(int portectionID) {
		this.portectionID = portectionID;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
