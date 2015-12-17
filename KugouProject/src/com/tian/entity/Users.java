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
	 * �û����캯��
	 * @param userName  �û���
	 * @param userPwd �û�����
	 */
	public Users(String userName, String userPwd) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
	}
	
	
	/**
	 * ע�����û����캯��
	 * @param userName  �û���
	 * @param userEmail �û�����
	 * @param userPwd �û�����
	 */
	public Users(String userName, String userEmail, String userPwd) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
	}
	
	/**
	 * �û���Ϣ���캯��
	 * @param userID �û�ID	
	 * @param userName �û���
	 * @param userEmail �û�����
	 * @param userPwd  �û�����
	 * @param userPower �û�Ȩ��
	 * @param portectionID �û��ܱ�ID
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
