package com.yuxuan.action;


import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;

public class LoginAction extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private String userName;
	private String passWord;
	private String codeNumber;
	
	private UserService userService;
	
	
	public String execute() throws Exception {
		if(StringUtils.isNotEmpty(userName) && StringUtils.isNotEmpty(passWord) 
				&& StringUtils.isNotEmpty(codeNumber)){
			String numCode = (String) ServletActionContext.getRequest().getSession().getAttribute("validateCode");
			if(numCode.equals(codeNumber)){
			if(userService.loginverify(userName, passWord)){
				ServletActionContext.getRequest().getSession().setAttribute("loginUser", userName);
			   return "SUCCESS";	
			}
			return "FAIL";
		}else{
			return "FAIL";
		}
		}
		return "FAIL";
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getVerify() {
		return codeNumber;
	}
	public void setVerify(String verify) {
		this.codeNumber = verify;
	}
	public String getCodeNumber() {
		return codeNumber;
	}
	public void setCodeNumber(String codeNumber) {
		this.codeNumber = codeNumber;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	

}
