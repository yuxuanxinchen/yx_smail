package com.yuxuan.dwr;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.po.MessionInfo;
import com.yuxuan.po.User;
import com.yuxuan.service.ContactsService;
import com.yuxuan.service.CustomerInfoService;
import com.yuxuan.service.MessionService;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;
import com.yuxuan.vo.CustomerMession;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dwr.MessionAjax.java]  
 * @ClassName:    [MessionAjax]   
 * @Description:  任务  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午9:54:42]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class MessionAjax {
	
	private MessionService messionService;
	private UserService userService;
	private CustomerInfoService customerInfoService;
	private ContactsService contactsService;
	
	/**
	 * @Title: saveMession 
	 * @Description: 保存 
	 * @param map
	 * @param session
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:54:49]  
	 * @throws  
	 */
	public String saveMession(Map map,HttpSession session){
		try {
			String  messionTheme = map.get("messionTheme").toString();
			String  messionCustomerName = map.get("messionCustomerName").toString();
			String  messionCustomerId = map.get("messionCustomerId").toString();
			String  messionContactsPerson = map.get("messionContactsPerson").toString();
			String  messionContactsPersonId = map.get("messionContactsPersonId").toString();
			String  messionPrioriy = map.get("messionPrioriy").toString();
			String  messionDescription = map.get("messionDescription").toString();
			String loginUser;
			if(StringUtils.isNotEmpty(messionTheme) &&
					StringUtils.isNotEmpty(messionCustomerName) &&
					StringUtils.isNotEmpty(messionCustomerId) &&
					StringUtils.isNotEmpty(messionContactsPerson) &&
					StringUtils.isNotEmpty(messionContactsPersonId) &&
					StringUtils.isNotEmpty(messionPrioriy) &&
					StringUtils.isNotEmpty(messionDescription)){
				
				   MessionInfo messionInfo = new MessionInfo();
				   messionInfo.setMissionCompleteDate(new Date());
				   messionInfo.setMissionSubject(messionTheme);
				   messionInfo.setMissionPrecedence(Integer.valueOf(messionPrioriy));
				   messionInfo.setMissionDescription(messionDescription);
				   
				   loginUser = session.getAttribute("userName").toString();
				   messionInfo.setUser(userService.queryUserByLoginName(loginUser));
				   System.out.println(loginUser);
				   messionInfo.setContactsInfo(contactsService.queryContactsById(Integer.valueOf(messionContactsPersonId)));
				   messionInfo.setCustomerInfo(customerInfoService.findByCustomerInfoDatils(Integer.valueOf(messionCustomerId)));
				   
		messionService.saveMession(messionInfo);
		return "SUCCESS";
				   
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "FAIL";

	}

	/**
	 * @Title: showDetail 
	 * @Description: 查询详细
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午8:47:39]  
	 * @throws  
	 */
	public String showDetail(Integer id){
		
		try {
			if(id!=null && id!=0){
				MessionInfo msinfo = messionService.queryMessionById(id);
				CustomerMession ms = new CustomerMession();
				ms.setsDate(msinfo.getMissionCompleteDate().toLocaleString().substring(0,10));
				BeanUtils.copyProperties(msinfo, ms);
				XStream xstream ;
				xstream = new XStream(new JsonHierarchicalStreamDriver ());
				xstream.alias("msinfo", CustomerMession.class);
				System.out.println(xstream.toXML(ms));
				return xstream.toXML(ms);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "FAIL";
	}

	/**
	 * @Title: updataMission 
	 * @Description: 更新
	 * @param map
	 * @param session
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:02:13]  
	 * @throws  
	 */
	public String updataMission(Map map,HttpSession session){
		try {
		String  messionTheme = map.get("messionTheme").toString();
		String  messionCustomerName = map.get("messionCustomerName").toString();
		String  messionCustomerId = map.get("messionCustomerId").toString();
		String  messionContactsPerson = map.get("messionContactsPerson").toString();
		String  messionContactsPersonId = map.get("messionContactsPersonId").toString();
		String  messionPrioriy = map.get("messionPrioriy").toString();
		String  messionDescription = map.get("messionDescription").toString();
		String messionId = map.get("messionId").toString();
		String loginUser;
		if(StringUtils.isNotEmpty(messionTheme) &&
				StringUtils.isNotEmpty(messionCustomerName) &&
				StringUtils.isNotEmpty(messionCustomerId) &&
				StringUtils.isNotEmpty(messionContactsPerson) &&
				StringUtils.isNotEmpty(messionContactsPersonId) &&
				StringUtils.isNotEmpty(messionPrioriy) &&
				StringUtils.isNotEmpty(messionId) &&
				StringUtils.isNotEmpty(messionDescription)){
			
			   MessionInfo messionInfo = new MessionInfo();
			   messionInfo.setMissionCompleteDate(new Date());
			   messionInfo.setMissionSubject(messionTheme);
			   messionInfo.setMissionPrecedence(Integer.valueOf(messionPrioriy));
			   messionInfo.setMissionDescription(messionDescription);
			   messionInfo.setMissionId(Integer.valueOf(messionId));
			   
			   loginUser = session.getAttribute("userName").toString();
			   messionInfo.setUser(userService.queryUserByLoginName(loginUser));
			   System.out.println(loginUser);
			   messionInfo.setContactsInfo(contactsService.queryContactsById(Integer.valueOf(messionContactsPersonId)));
			   messionInfo.setCustomerInfo(customerInfoService.findByCustomerInfoDatils(Integer.valueOf(messionCustomerId)));
			   
			   	messionService.updataMession(messionInfo);
			   	return "SUCCESS";
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	public String deleteMession(Integer id){
		try {
			if(id!=null && id!=0){
				messionService.deleteMessionById(id);	
				return "SUCCESS";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	
	/**
	 * @Title: deleteMissionBatch 
	 * @Description: 批量删除
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午10:12:49]  
	 * @throws  
	 */
	public String deleteMissionBatch(Integer[] ids){
		try {
			if(ids.length>0){
				for (Integer integer : ids) {
					messionService.deleteMessionById(integer);
				}
					return "SUCCESS";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "FAIL";
	}
	
	/**
	 * @Title: showWindowDatils 
	 * @Description:窗口选择
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午11:04:55]  
	 * @throws  
	 */
	public String showWindowDatils(){
		
		try {
			List<CustomerMession> lists = new ArrayList<CustomerMession>();
			List<MessionInfo> messionInfos = messionService.queryMessionAll();
			for (int i = 0; i < messionInfos.size(); i++) {
				CustomerMession sMession = new CustomerMession();
				sMession.setsDate(messionInfos.get(i).getMissionCompleteDate().toLocaleString().substring(0, 10));
			    BeanUtils.copyProperties(messionInfos.get(i),sMession);
			    lists.add(sMession);
			}
			
			XStream xstream ;
			xstream = new XStream(new JsonHierarchicalStreamDriver ());
			xstream.alias("msinfo", CustomerMession.class);
			System.out.println(xstream.toXML(lists));
			return xstream.toXML(lists);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "FAIL";
	}
	
	
	
	public MessionService getMessionService() {
		return messionService;
	}
	public void setMessionService(MessionService messionService) {
		this.messionService = messionService;
	}


	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}
	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}
	public ContactsService getContactsService() {
		return contactsService;
	}
	public void setContactsService(ContactsService contactsService) {
		this.contactsService = contactsService;
	}
	

}
