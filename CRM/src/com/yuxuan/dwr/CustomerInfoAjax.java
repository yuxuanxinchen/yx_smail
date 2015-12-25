package com.yuxuan.dwr;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.DataLevel;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.CustomerInfoService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dwr.CustomerInfoAjax.java]  
 * @ClassName:    [CustomerInfoAjax]   
 * @Description:  提交客户信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:12:25]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class CustomerInfoAjax {

	private CustomerInfoService customerInfoService;
	
	
	public String saveCustomerInfo(Map map) throws Exception{
		
		String customerName = map.get("customerName").toString();
		Integer customerProperties = Integer.valueOf(map.get("customerProperties").toString());
		Integer customerTypeId = Integer.valueOf(map.get("customerTypeId").toString());
		Integer levelId = Integer.valueOf(map.get("levelId").toString());
		Integer openBankId = Integer.valueOf(map.get("openBankId").toString());
		Integer customerSourceId = Integer.valueOf(map.get("customerSourceId").toString());
		String customerCompanyWebsize = map.get("customerCompanyWebsize").toString();
		String customerCompanyPhone = map.get("customerCompanyPhone").toString();
		String register = map.get("register").toString();
		String customerAddress = map.get("customerAddress").toString();
		String customerProvinces = map.get("customerProvinces").toString();
		String customerCity = map.get("customerCity").toString();
		String customerCode = map.get("customerCode").toString();
		String bankAccount = map.get("bankAccount").toString();
		String noteInformation = map.get("noteInformation").toString();
		
		
		CustomerInfo customerInfo = new CustomerInfo();
		customerInfo.setCustomerMc(customerName);
		customerInfo.setCustomerBz(noteInformation);
		customerInfo.setCustomerDh(customerCompanyPhone);
		customerInfo.setCustomerAddress(customerAddress);
		customerInfo.setCustomerDjr(register);

		DataLevel dataLevel = new DataLevel();
		dataLevel.setLevelId(levelId);
		customerInfo.setDataLevel(dataLevel);

		customerInfo.setCustomerSssf(customerProvinces);
		customerInfo.setCustomerSscs(customerCity);

		customerInfo.setCustomerWz(customerCompanyWebsize);
		customerInfo.setCustomerYb(customerCode);
		customerInfo.setCustomerYhzh(bankAccount);

		Sjzdxx sjzdxx = new Sjzdxx();
		sjzdxx.setSjzdxxId(customerTypeId);
		customerInfo.setSjzdxxByCustomerLx(sjzdxx);

		Sjzdxx sjzdxx2 = new Sjzdxx();
		sjzdxx2.setSjzdxxId(customerSourceId);
		customerInfo.setSjzdxxByCustomerLy(sjzdxx2);

		Sjzdxx jSjzdxx = new Sjzdxx();
		jSjzdxx.setSjzdxxId(customerProperties);
		customerInfo.setSjzdxxByCustomerXz(jSjzdxx);

		Sjzdxx sjzdxx3 = new Sjzdxx();
		sjzdxx3.setSjzdxxId(openBankId);
		customerInfo.setSjzdxxByCustomerKhyh(sjzdxx3);

		CustomerInfo sCustomerInfo = customerInfoService.findCustomerName(customerName);
		if(sCustomerInfo==null){
			customerInfoService.save(customerInfo);
			return "SUCCESS";
		}else{
			return "repeat Have duplicate values, and then re submit the ground inspection";
		}
	}
	
	
	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	} 
	
	/**
	 * @Title: updateCustomerInfo 
	 * @Description:更新数据字典信息
	 * @param map
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:37:51]  
	 * @throws  
	 */
	public String updateCustomerInfo(Map map) throws Exception {
		String formId = map.get("customerFormId").toString();

		String customerName = map.get("customerName").toString();
		Integer customerProperties = Integer.valueOf(map.get(
				"customerProperties").toString());
		Integer customerTypeId = Integer.valueOf(map.get("customerTypeId")
				.toString());
		Integer levelId = Integer.valueOf(map.get("levelId").toString());
		Integer openBankId = Integer.valueOf(map.get("openBankId").toString());
		Integer customerSourceId = Integer.valueOf(map.get("customerSourceId")
				.toString());
		String customerCompanyWebsize = map.get("customerCompanyWebsize")
				.toString();
		String customerCompanyPhone = map.get("customerCompanyPhone")
				.toString();
		String register = map.get("register").toString();
		String customerAddress = map.get("customerAddress").toString();
		String customerProvinces = map.get("customerProvinces").toString();
		String customerCity = map.get("customerCity").toString();
		String customerCode = map.get("customerCode").toString();
		String bankAccount = map.get("bankAccount").toString();
		String noteInformation = map.get("noteInformation").toString();

		CustomerInfo customerInfo = new CustomerInfo();
		customerInfo.setCustomerMc(customerName);
		customerInfo.setCustomerBz(noteInformation);
		customerInfo.setCustomerDh(customerCompanyPhone);
		customerInfo.setCustomerAddress(customerAddress);
		customerInfo.setCustomerDjr(register);
		customerInfo.setCustomerId(Integer.valueOf(formId));

		DataLevel dataLevel = new DataLevel();
		dataLevel.setLevelId(levelId);
		customerInfo.setDataLevel(dataLevel);

		customerInfo.setCustomerSssf(customerProvinces);
		customerInfo.setCustomerSscs(customerCity);

		customerInfo.setCustomerWz(customerCompanyWebsize);
		customerInfo.setCustomerYb(customerCode);
		customerInfo.setCustomerYhzh(bankAccount);

		Sjzdxx sjzdxx = new Sjzdxx();
		sjzdxx.setSjzdxxId(customerTypeId);
		customerInfo.setSjzdxxByCustomerLx(sjzdxx);

		Sjzdxx sjzdxx2 = new Sjzdxx();
		sjzdxx2.setSjzdxxId(customerSourceId);
		customerInfo.setSjzdxxByCustomerLy(sjzdxx2);

		Sjzdxx jSjzdxx = new Sjzdxx();
		jSjzdxx.setSjzdxxId(customerProperties);
		customerInfo.setSjzdxxByCustomerXz(jSjzdxx);

		Sjzdxx sjzdxx3 = new Sjzdxx();
		sjzdxx3.setSjzdxxId(openBankId);
		customerInfo.setSjzdxxByCustomerKhyh(sjzdxx3);
		customerInfoService.updateCustomerInfo(customerInfo);
		return "SUCCESS";
	}
	
	/**
	 * @Title: deleteCustomerInfo 
	 * @Description:删除客户信息 
	 * @param customerInfoId
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:55:51]  
	 * @throws  
	 */
	public String deleteCustomerInfo(Integer customerInfoId) throws Exception{
		customerInfoService.deleteCustomerInfo(customerInfoId);
		return "SUCCESS";
	} 
	
	/**
	 * @Title: deleteCheckedAllCustomerInfo 
	 * @Description: 批量删除
	 * @param checkeds
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午4:22:24]  
	 * @throws  
	 */
	public String deleteCheckedAllCustomerInfo(Integer[] checkeds) throws Exception{
		for(Integer i:checkeds){
			customerInfoService.deleteCustomerInfo(i);
		}
		return "SUCCESS";
	}
	
	
	public String ajaxWindow() throws Exception {
		List<CustomerInfo> customerInfos = customerInfoService.findAllCustomerInfos();
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("customerinfo", CustomerInfo.class);
		System.out.println(xstream.toXML(customerInfos));
		return xstream.toXML(customerInfos);
}
	
	
	
	
	
}
