package com.yuxuan.dwr;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.po.ContactsInfo;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.service.ContactsService;
import com.yuxuan.service.CustomerInfoService;
import com.yuxuan.vo.CustomerContactsInfo;

public class ContactsInfoAjax extends ActionSupport{

	/** 
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	 */ 
	private static final long serialVersionUID = 1L;
	
	private ContactsService contactsService ;
	private CustomerInfoService customerInfoService;

	private String contactsName;
	private String customerName;
	private Date birthday;
	private String customersex;
	private String contactsJob;
	private String contactsOfficePhone;
	private String contactsPersonPhone;
	private String contactsQQ;
	private String contactsInfos;
	private Date registDate;
	private String contactsDescription;
	private String email;
	private String Id;
	
	/**
	 * @Title: saveContacts 
	 * @Description:保存
	 * @param map
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:23:10]  
	 * @throws  
	 */
	public String saveContacts(Map map) throws Exception{
		contactsName  =	map.get("contactsName").toString();
		customerName =	map.get("customerName").toString();
		String Sbirthday =	 map.get("birthday").toString();
		customersex=	map.get("customersex").toString();
		contactsJob=	map.get("contactsJob").toString();
		contactsOfficePhone=	map.get("contactsOfficePhone").toString();
		contactsPersonPhone =	map.get("contactsPersonPhone").toString();
		contactsQQ =	map.get("contactsQQ").toString();
		String SregistDate =	 map.get("registDate").toString();
		contactsDescription=	map.get("contactsDescription").toString();
		email = map.get("email").toString();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    registDate = simpleDateFormat.parse(SregistDate);
		
	    birthday = simpleDateFormat.parse(Sbirthday);
	    
	    CustomerInfo cus= customerInfoService.findCustomerName(customerName);		
		ContactsInfo contactsInfo = new ContactsInfo();
		contactsInfo.setContactsBirthday(birthday);
		contactsInfo.setCustomerInfo(cus);
		contactsInfo.setContactsName(contactsName);
		contactsInfo.setContactsSex(customersex);
		contactsInfo.setContactsJob(contactsJob);
		contactsInfo.setContactsEmail(email);
		contactsInfo.setContactsOfficePhone(contactsOfficePhone);
		contactsInfo.setContactsPhone(contactsPersonPhone);
		contactsInfo.setContactsQq(contactsQQ);
		contactsInfo.setContactsRegister(registDate);
		contactsInfo.setContactsDescription(contactsDescription);
		
		contactsService.saveContacts(contactsInfo);
		return "SUCCESS";
	}
	
	/**
	 * @Title: saveContacts 
	 * @Description: 更新
	 * @param map
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:23:01]  
	 * @throws  
	 */
	public String updateContacts(Map map) throws Exception{
		 Id = map.get("contactsId").toString();
		contactsName  =	map.get("contactsName").toString();
		customerName =	map.get("customerName").toString();
		String Sbirthday =	 map.get("birthday").toString();
		customersex=	map.get("customersex").toString();
		contactsJob=	map.get("contactsJob").toString();
		contactsOfficePhone=	map.get("contactsOfficePhone").toString();
		contactsPersonPhone =	map.get("contactsPersonPhone").toString();
		contactsQQ =	map.get("contactsQQ").toString();
		String SregistDate =	 map.get("registDate").toString();
		contactsDescription=	map.get("contactsDescription").toString();
		email = map.get("email").toString();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    registDate = simpleDateFormat.parse(SregistDate);
		
	    birthday = simpleDateFormat.parse(Sbirthday);
	    
	    CustomerInfo cus= customerInfoService.findCustomerName(customerName);		
		ContactsInfo contactsInfo = new ContactsInfo();
		contactsInfo.setContactsBirthday(birthday);
		contactsInfo.setCustomerInfo(cus);
		contactsInfo.setContactsName(contactsName);
		contactsInfo.setContactsSex(customersex);
		contactsInfo.setContactsJob(contactsJob);
		contactsInfo.setContactsEmail(email);
		contactsInfo.setContactsOfficePhone(contactsOfficePhone);
		contactsInfo.setContactsPhone(contactsPersonPhone);
		contactsInfo.setContactsQq(contactsQQ);
		contactsInfo.setContactsId(Integer.valueOf(Id));
		contactsInfo.setContactsRegister(registDate);
		contactsInfo.setContactsDescription(contactsDescription);
		
		contactsService.updataContacts(contactsInfo);
		return "SUCCESS";
	}
	
	/**
	 * @Title: ContactsShowDetail 
	 * @Description: 详细信息 
	 * @param contactsId
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:55:26]  
	 * @throws  
	 */
	public String ContactsShowDetail(Integer contactsId) throws Exception{
		ContactsInfo contactsInfo = contactsService.queryContactsById(contactsId);
		CustomerContactsInfo cinfo = new CustomerContactsInfo();
		
		BeanUtils.copyProperties(contactsInfo, cinfo);
		cinfo.setSbirthday(new SimpleDateFormat("yyyy-MM-dd").format(cinfo.getContactsRegister()));
		cinfo.setSregister(new SimpleDateFormat("yyyy-MM-dd").format(cinfo.getContactsRegister()));
		
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("contactsInfo", CustomerContactsInfo.class);
		System.out.println(xstream.toXML(cinfo));
		return xstream.toXML(cinfo);
	}
	
	
	/**
	 * @Title: ContactsShowDetail 
	 * @Description: 详细信息 
	 * @param contactsId
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:55:26]  
	 * @throws  
	 */
	public String getContactsAll() {
		
		try {
			List<CustomerContactsInfo> cs = new ArrayList<CustomerContactsInfo>();
			List<ContactsInfo> contactsInfos = contactsService.queryAllContacts();
			for (ContactsInfo contactsInfo2 : contactsInfos) {
				CustomerContactsInfo cinfo = new CustomerContactsInfo();
				BeanUtils.copyProperties(contactsInfo2, cinfo);
				cinfo.setSbirthday(new SimpleDateFormat("yyyy-MM-dd").format(cinfo.getContactsRegister()));
				cinfo.setSregister(new SimpleDateFormat("yyyy-MM-dd").format(cinfo.getContactsRegister()));
				cs.add(cinfo);
			}
			
			XStream xstream ;
			xstream = new XStream(new JsonHierarchicalStreamDriver ());
			xstream.alias("cs", CustomerContactsInfo.class);
			System.out.println(xstream.toXML(cs));
			return xstream.toXML(cs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	
	public String deleteContacts(Integer cId) throws Exception{
		if(cId!=null){
			contactsService.deleteContacts(cId);
			return "SUCCESS";
		}else{
			return "FAIL";
		}
	}
	
	public String deleteContactsAll(Integer[] ids) throws Exception{
		if(ids.length>=0){
			for (Integer integer : ids) {
				contactsService.deleteContacts(integer);
			}
			return "SUCCESS";
		}
		return "FAIL";
	}
	
	
	public ContactsService getContactsService() {
		return contactsService;
	}
	public void setContactsService(ContactsService contactsService) {
		this.contactsService = contactsService;
	}
	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}



	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}


	
	
	

}
