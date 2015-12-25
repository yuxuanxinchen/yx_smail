package com.yuxuan.dwr;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.swing.Spring;
import javax.xml.crypto.Data;

import org.apache.naming.factory.BeanFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.po.CustomerComplainInfo;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.po.User;
import com.yuxuan.service.ComplainService;
import com.yuxuan.service.CustomerInfoService;
import com.yuxuan.service.SjzdflService;
import com.yuxuan.service.SjzdxxService;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;
import com.yuxuan.vo.CustomerComplain;

/**
 * 
 * Simple to Introduction
 * 
 * @ProjectName: [CRM]
 * @Package: [com.yuxuan.dwr.ComplainAjax.java]
 * @ClassName: [ComplainAjax]
 * @Description: 投诉
 * @Author: [yuxuan]
 * @CreateDate: [2014-下午6:22:37]
 * @UpdateUser: [yuxuan]
 * @UpdateRemark: [说明本次修改内容]
 * @Version: [v1.0]
 */
public class ComplainAjax {

	private ComplainService complainService;
	private SjzdxxService sjzdxxService;
	private CustomerInfoService customerInfoService;
	private UserService userService;
	private SjzdflService  sjzdflService;

	public String addComplain(Map map) {
		try {
			String complainTheme = (String) map.get("complainTheme");
			String customerName = (String) map.get("customerName");
			Integer customerId = Integer.valueOf(map.get("customerId")
					.toString());
			String complainPerson = (String) map.get("complainPerson");
			String userLeadName = (String) map.get("userLeadName");
			Integer userLeadId = Integer.valueOf(map.get("userLeadId")
					.toString());
			String customerSatisfaction = (String) map
					.get("customerSatisfaction");
			String complainStatus = (String) map.get("complainStatus");
			String complainContent = (String) map.get("complainContent");
			String complainHandleWay = (String) map.get("complainHandleWay");
			String complainRemarkInfo = (String) map.get("complainRemarkInfo");

			if (StringUtils.isNotEmpty(complainTheme)
					&& StringUtils.isNotEmpty(customerId + "")
					&& StringUtils.isNotEmpty(complainPerson)
					&& StringUtils.isNotEmpty(userLeadName)
					&& StringUtils.isNotEmpty(userLeadId + "")
					&& StringUtils.isNotEmpty(customerSatisfaction)
					&& StringUtils.isNotEmpty(complainStatus)
					&& StringUtils.isNotEmpty(complainContent)
					&& StringUtils.isNotEmpty(complainHandleWay)
					&& StringUtils.isNotEmpty(complainRemarkInfo)) {
				CustomerComplainInfo complainInfo = new CustomerComplainInfo();
				complainInfo.setComplainText(complainContent);
				complainInfo.setComplainDate(new Date());
				complainInfo.setComplainRemarks(complainRemarkInfo);
				complainInfo.setComplainTheme(complainTheme);
				complainInfo.setComplainManage(complainHandleWay);
				complainInfo.setComplainPersion(complainPerson);

				// 客户ID
				CustomerInfo cinInfo = customerInfoService
						.findByCustomerInfoDatils(customerId);
				complainInfo.setCustomerInfo(cinInfo);

				// 处理人ID
				User user = userService.queryUserById(userLeadId);
				complainInfo.setUser(user);

				// 满意程度 customerSatisfaction
				Sjzdxx sjzdxxCustomerSatisfaction = sjzdxxService
						.querySjzdxxById(Integer.valueOf(customerSatisfaction));
				complainInfo
						.setSjzdxxByComplainStatus(sjzdxxCustomerSatisfaction);

				Sjzdxx sjzdxxComplainStatus = sjzdxxService
						.querySjzdxxById(Integer.valueOf(complainStatus));
				complainInfo.setSjzdxxByPleasedLevel(sjzdxxComplainStatus);

				complainService.saveComplain(complainInfo);
			} else {
				return "FAIL";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	
	public String showDatils(Integer id){
		try {
		CustomerComplainInfo complainInfo = complainService.queryComplainInfoById(id);
		
		CustomerComplain complain = new CustomerComplain();
		BeanUtils.copyProperties(complainInfo,complain);
		String date = complainInfo.getComplainDate().toLocaleString();
		
		complain.setsDate(date.substring(0,10));
		
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("complain", CustomerComplain.class);
		System.out.println(xstream.toXML(complain));
		return xstream.toXML(complain);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}

	/**
	 * @Title: updataComplain 
	 * @Description: 更新
	 * @param map
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:28:43]  
	 * @throws  
	 */
	public String updataComplain(Map map){
		try {
			String complainTheme = (String) map.get("complainTheme");
			String customerName = (String) map.get("customerName");
			Integer customerId = Integer.valueOf(map.get("customerId")
					.toString());
			String complainPerson = (String) map.get("complainPerson");
			String userLeadName = (String) map.get("userLeadName");
			Integer userLeadId = Integer.valueOf(map.get("userLeadId")
					.toString());
			String customerSatisfaction = (String) map
					.get("customerSatisfaction");
			String complainStatus = (String) map.get("complainStatus");
			String complainContent = (String) map.get("complainContent");
			String complainHandleWay = (String) map.get("complainHandleWay");
			String complainRemarkInfo = (String) map.get("complainRemarkInfo");
			Integer complainId = Integer.valueOf(map.get("complainId").toString());

			if (StringUtils.isNotEmpty(complainTheme)
					&& StringUtils.isNotEmpty(customerId + "")
					&& StringUtils.isNotEmpty(complainPerson)
					&& StringUtils.isNotEmpty(userLeadName)
					&& StringUtils.isNotEmpty(userLeadId + "")
					&& StringUtils.isNotEmpty(customerSatisfaction)
					&& StringUtils.isNotEmpty(complainStatus)
					&& StringUtils.isNotEmpty(complainContent)
					&& StringUtils.isNotEmpty(complainHandleWay)
					&& StringUtils.isNotEmpty(complainRemarkInfo)
					&& StringUtils.isNotEmpty(complainId+"")) {
				CustomerComplainInfo complainInfo = new CustomerComplainInfo();
				complainInfo.setComplainId(complainId);
				complainInfo.setComplainText(complainContent);
				complainInfo.setComplainDate(new Date());
				complainInfo.setComplainRemarks(complainRemarkInfo);
				complainInfo.setComplainTheme(complainTheme);
				complainInfo.setComplainManage(complainHandleWay);
				complainInfo.setComplainPersion(complainPerson);

				// 客户ID
				CustomerInfo cinInfo = customerInfoService
						.findByCustomerInfoDatils(customerId);
				complainInfo.setCustomerInfo(cinInfo);

				// 处理人ID
				User user = userService.queryUserById(userLeadId);
				complainInfo.setUser(user);

				// 满意程度 customerSatisfaction
				Sjzdxx sjzdxxCustomerSatisfaction = sjzdxxService
						.querySjzdxxById(Integer.valueOf(customerSatisfaction));
				complainInfo
						.setSjzdxxByComplainStatus(sjzdxxCustomerSatisfaction);

				Sjzdxx sjzdxxComplainStatus = sjzdxxService
						.querySjzdxxById(Integer.valueOf(complainStatus));
				complainInfo.setSjzdxxByPleasedLevel(sjzdxxComplainStatus);

				complainService.updataComplain(complainInfo);
			} else {
				return "FAIL";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	/**
	 * @Title: deleteComplain 
	 * @Description: 根据ID删除
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午8:47:56]  
	 * @throws  
	 */
	public String deleteComplain(Integer id) {
		try {
			if (id != null) {
				complainService.deleteComplain(id);
			}
			return "SUCCESS";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	/**
	 * @Title: deleteMoreComplain 
	 * @Description:删除多个 
	 * @param ids
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午8:59:01]  
	 * @throws  
	 */
	public String deleteMoreComplain(Integer[] ids) {
		try {
			if (ids.length >= 0) {
				for (Integer integer : ids) {
					complainService.deleteComplain(integer);
				}
			}
			return "SUCCESS";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	/**
	 * @Title: showCharts 
	 * @Description: 饼图
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:23:28]  
	 * @throws  
	 */
	public String showCharts(){
		try {
	   List<CustomerComplain> lsits = new ArrayList<CustomerComplain>();
		List<Sjzdfl> sjzdfls = sjzdflService.getAllSjzdfl();
		for (Sjzdfl sjzdfl : sjzdfls) {
			 if(sjzdfl.getSjzdflId()==5){
			     List<Sjzdxx> sjzdxxs = sjzdxxService.getAllSjzdxxByType(sjzdfl);
				 for (Sjzdxx sjzdxx : sjzdxxs) {
					 String sjzdName = sjzdxx.getSjzdxxMc();
					if(null !=  sjzdName && !"".equals(sjzdName) && sjzdxx.getIsOk().equals("Y"))
					 System.out.println();
					 System.out.println();
					 if(complainService.queryComplainSjzd(sjzdxx).size()!=0){
						CustomerComplain customerComplain = new CustomerComplain();
						customerComplain.setMaxMS(sjzdxx.getSjzdxxMc());
						customerComplain.setMaxSjzdxxByComplainStatus( complainService.queryComplainSjzd(sjzdxx).size());
					 lsits.add(customerComplain);
					 }
				 }
			 }
		}
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("complain",CustomerComplain.class);
		System.out.println(xstream.toXML(lsits));
		return xstream.toXML(lsits);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	
	public ComplainService getComplainService() {
		return complainService;
	}

	public void setComplainService(ComplainService complainService) {
		this.complainService = complainService;
	}

	public SjzdxxService getSjzdxxService() {
		return sjzdxxService;
	}

	public void setSjzdxxService(SjzdxxService sjzdxxService) {
		this.sjzdxxService = sjzdxxService;
	}

	public CustomerInfoService getCustomerInfoService() {
		return customerInfoService;
	}

	public void setCustomerInfoService(CustomerInfoService customerInfoService) {
		this.customerInfoService = customerInfoService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public SjzdflService getSjzdflService() {
		return sjzdflService;
	}
	public void setSjzdflService(SjzdflService sjzdflService) {
		this.sjzdflService = sjzdflService;
	}

	
}
