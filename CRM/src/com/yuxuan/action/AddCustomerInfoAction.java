package com.yuxuan.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.DataLevel;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.CustomerInfoService;
/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.action.AddCustomerInfoAction.java]  
 * @ClassName:    [AddCustomerInfoAction]   
 * @Description:  客户信息添加
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:35:11]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class AddCustomerInfoAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private CustomerInfoService customerInfoService;
	private String customerName;
	private Integer customerProperties;
	private Integer customerTypeId;
	private Integer levelId;
	private String customerCompanyWebsize;
	private String customerCompanyPhone;
	private String register;
	private String customerAddress;
	private String customerProvinces;
	private String customerCity;
	private String customerCode;
	private Integer openBankId;
	private String bankAccount;
	private Integer customerSourceId;
	private String noteInformation;

	public String execute() throws Exception {
		CustomerInfo customerInfo = new CustomerInfo();
		customerInfo.setCustomerMc(this.customerName);
		customerInfo.setCustomerBz(this.noteInformation);
		customerInfo.setCustomerDh(this.customerCompanyPhone);
		customerInfo.setCustomerAddress(this.customerAddress);

		DataLevel dataLevel = new DataLevel();
		dataLevel.setLevelId(this.levelId);
		customerInfo.setDataLevel(dataLevel);

		customerInfo.setCustomerSssf(this.customerProvinces);
		customerInfo.setCustomerSscs(this.customerCity);

		customerInfo.setCustomerWz(this.customerCompanyWebsize);
		customerInfo.setCustomerYb(this.customerCode);
		customerInfo.setCustomerYhzh(this.bankAccount);

		Sjzdxx sjzdxx = new Sjzdxx();
		sjzdxx.setSjzdxxId(this.customerTypeId);
		customerInfo.setSjzdxxByCustomerLx(sjzdxx);

		Sjzdxx sjzdxx2 = new Sjzdxx();
		sjzdxx2.setSjzdxxId(this.customerSourceId);
		customerInfo.setSjzdxxByCustomerLy(sjzdxx2);

		Sjzdxx jSjzdxx = new Sjzdxx();
		jSjzdxx.setSjzdxxId(this.customerProperties);
		customerInfo.setSjzdxxByCustomerXz(jSjzdxx);

		Sjzdxx sjzdxx3 = new Sjzdxx();
		sjzdxx3.setSjzdxxId(this.openBankId);
		customerInfo.setSjzdxxByCustomerKhyh(sjzdxx3);

		CustomerInfo sCustomerInfo = customerInfoService.findCustomerName(customerName);
		if(sCustomerInfo==null){
			customerInfoService.save(customerInfo);
		}else{
			ServletActionContext.getRequest().setAttribute("repeat", "Have duplicate values, and then re submit the ground inspection");
		}
		return SUCCESS;
	}

	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Integer getCustomerProperties() {
		return this.customerProperties;
	}

	public void setCustomerProperties(Integer customerProperties) {
		this.customerProperties = customerProperties;
	}

	public Integer getCustomerTypeId() {
		return this.customerTypeId;
	}

	public void setCustomerTypeId(Integer customerTypeId) {
		this.customerTypeId = customerTypeId;
	}

	public Integer getLevelId() {
		return this.levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public String getCustomerCompanyWebsize() {
		return this.customerCompanyWebsize;
	}

	public void setCustomerCompanyWebsize(String customerCompanyWebsize) {
		this.customerCompanyWebsize = customerCompanyWebsize;
	}

	public String getCustomerCompanyPhone() {
		return this.customerCompanyPhone;
	}

	public void setCustomerCompanyPhone(String customerCompanyPhone) {
		this.customerCompanyPhone = customerCompanyPhone;
	}

	public String getRegister() {
		return this.register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	public String getCustomerAddress() {
		return this.customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerProvinces() {
		return this.customerProvinces;
	}

	public void setCustomerProvinces(String customerProvinces) {
		this.customerProvinces = customerProvinces;
	}

	public String getCustomerCity() {
		return this.customerCity;
	}

	public void setCustomerCity(String customerCity) {
		this.customerCity = customerCity;
	}

	public String getCustomerCode() {
		return this.customerCode;
	}

	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}

	public String getBankAccount() {
		return this.bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getNoteInformation() {
		return this.noteInformation;
	}

	public void setNoteInformation(String noteInformation) {
		this.noteInformation = noteInformation;
	}

	public CustomerInfoService getCustomerInfoService() {
		return this.customerInfoService;
	}

	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}

	public Integer getOpenBankId() {
		return this.openBankId;
	}

	public void setOpenBankId(Integer openBankId) {
		this.openBankId = openBankId;
	}

	public Integer getCustomerSourceId() {
		return this.customerSourceId;
	}

	public void setCustomerSourceId(Integer customerSourceId) {
		this.customerSourceId = customerSourceId;
	}
}