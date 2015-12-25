package com.yuxuan.dwr;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.dialect.function.VarArgsSQLFunction;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.dao.UserDao;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.po.User;
import com.yuxuan.service.RoleInfoService;
import com.yuxuan.service.RoleRelationService;
import com.yuxuan.service.UserService;
import com.yuxuan.utils.StringUtils;
import com.yuxuan.vo.CustomerUser;

public class UserAjax {

	private UserService userService;
	private RoleInfoService roleInfoService;
	private RoleRelationService roleRelationService;
	
	/**
	 * @Title: getUserAll 
	 * @Description: 获取所有用户
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:39:56]  
	 * @throws  
	 */
	public String getUserAll(){
		try {
			List<User> users = userService.queryUserAll();
			XStream xstream ;
			xstream = new XStream(new JsonHierarchicalStreamDriver ());
			xstream.alias("users", User.class);
			System.out.println(xstream.toXML(users));
			return xstream.toXML(users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	
	/**
	 * @Title: getRoleInfo 
	 * @Description: 获取角色
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:40:10]  
	 * @throws  
	 */
	public String getRoleInfo(){
		try {
		List<RoleInfo> roleInfos =  roleInfoService.getRoleInfoAll();
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("users", RoleInfo.class);
		System.out.println(xstream.toXML(roleInfos));
		return xstream.toXML(roleInfos);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	/**
	 * @Title: addUser 
	 * @Description: 添加用户
	 * @param map
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:39:44]  
	 * @throws  
	 */
	public String addUser(Map<String, String> map){
		try {
		String userName  = map.get("userName");
		String passWord  = map.get("passWord");
		String userLobin  = map.get("userLobin");
		String reUserPassWord  = map.get("reUserPassWord");
		String userTelphone  = map.get("userTelphone");
		String userEmail  = map.get("userEmail");
		String userParents  = map.get("userParents");
		String userRoleName  = map.get("userRoleName");
		String userParentId = map.get("userParentsId");
		String userRoleNameId = map.get("userRoleNameId");
		boolean flag = userService.isUserName(userName);
		if(!flag){
			Integer userParentsId = null;
			 RoleInfo userRoleId = null;
			if(userRoleName!=null && !userRoleName.equals("")){
				userRoleId =  roleInfoService.queryRoleInfoById(Integer.valueOf(userRoleNameId));
			}
			
			if(!passWord.equals(reUserPassWord)){
				return "密码充不一致";
			}
			
		   User user = new User();
		   user.setUserName(userName);
		   user.setUserAdminName(userLobin);
		   user.setUserEmail(userEmail);
		   user.setUserPassword(reUserPassWord);
		   user.setUserPhone(userTelphone);
		   user.setUserParentId(Integer.valueOf(userParentId));
		   user.setRoleInfo(userRoleId);
		   userService.saveUser(user);
		   return "SUCCESS";
		}else{
			return "用户名重复啦";
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	return "FAIL";
	}
	
	/**
	 * @Title: getUesrDetail 
	 * @Description:获取用户的详细信息
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:04:13]  
	 * @throws  
	 */
	public String getUesrDetail(Integer id){
		try {
		User user = userService.queryUserById(id);
		CustomerUser customerUser = new CustomerUser();
		customerUser = new CustomerUser();
		customerUser.setUserId(user.getUserId());
		customerUser.setUserAdminName(user.getUserAdminName());
		customerUser.setUserEmail(user.getUserEmail());
		customerUser.setUserId(user.getUserId());
		customerUser.setUserName(user.getUserName());
		customerUser.setUserPassword(user.getUserPassword());
		if( null != user.getUserParentId()){
			String parName = userService.queryUserById(user.getUserId()).getUserName();
			Integer parentId = userService.queryUserById(user.getUserId()).getUserId();
			customerUser.setParentName(parName);
			customerUser.setParentId(parentId);
		}else{
			customerUser.setParentName("无上级");
		}
		customerUser.setUserPhone(user.getUserPhone());
		
		customerUser.setRoleInfo(user.getRoleInfo());
		XStream xstream ;
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("user", CustomerUser.class);
		System.out.println(xstream.toXML(customerUser));
		return xstream.toXML(customerUser);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "FAIL";
	}
	
	
	public String updataUser(Map<String, String> map){
		try {
		
		String userName  = map.get("userName");
//		String passWord  = map.get("passWord");
		String userLobin  = map.get("userLobin");
//		String reUserPassWord  = map.get("reUserPassWord");
		String userTelphone  = map.get("userTelphone");
		String userEmail  = map.get("userEmail");
		String userParents  = map.get("userParents");
		String userId = map.get("userId");
		String userRoleName  = map.get("userRoleName");
		String userParentId = map.get("userParentsId");
		String userRoleNameId = map.get("userRoleNameId");
		System.out.println(map);
			
		 RoleInfo userRoleId = null;
		if(userRoleName!=null && !userRoleName.equals("")){
			userRoleId =  roleInfoService.queryRoleInfoById(Integer.valueOf(userRoleNameId));
		}
		
		   User user = userService.queryUserById(Integer.valueOf(userId));
		   if(user!=null){
			   user.setUserId(Integer.valueOf(userId));
			   user.setUserName(userName);
			   user.setUserAdminName(userLobin);
			   user.setUserEmail(userEmail);
//			   user.setUserPassword(reUserPassWord);
			   user.setUserPhone(userTelphone);
			   user.setUserParentId(Integer.valueOf(userParentId));
			   user.setRoleInfo(userRoleId);
			   userService.updataUser(user);
		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "SUCCESS";
	}
	
	
	/**
	 * @Title: deleteUser 
	 * @Description: 删除用户
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:34:39]  
	 * @throws  
	 */
	public String deleteUser(Integer id){
		try {
			userService.deleteUser(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	/**
	 * @Title: deleteAll 
	 * @Description: 删除所有
	 * @param ids
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:43:41]  
	 * @throws  
	 */
	public String deleteAll(Integer[] ids) {
		try {
			for (Integer integer : ids) {
				userService.deleteUser(integer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

	

	
	/**
	 * @Title: loginVaild 
	 * @Description: 用户登录
	 * @param userName
	 * @param passWord
	 * @param codeNumber
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:17:10]  
	 * @throws  
	 */
	public String loginVaild(String userName,String passWord,String codeNumber,HttpSession session) {
		try {
		if(StringUtils.isNotEmpty(userName) && StringUtils.isNotEmpty(passWord) 
				&& StringUtils.isNotEmpty(codeNumber)){
			String numCode = (String) session.getAttribute("validateCode");
			if(numCode.equals(codeNumber)){
			if(userService.loginverify(userName, passWord)){
				session.setAttribute("userName", userName);
				User user = userService.queryUserByLoginName(userName);
				RoleInfo r = user.getRoleInfo();
				List<RoleRelation> rstList = roleRelationService.findRelationsById(r);
				session.setAttribute("rs", rstList);
				
			   return "SUCCESS";	
			}
			return "不存在的信息，请检查后重新登录";
		}else{
			return "不存在的信息，请检查后重新登录";
		}
		}
		return "FAIL";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "不存在的信息，请检查后重新登录";
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}
	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
	}


	public RoleRelationService getRoleRelationService() {
		return roleRelationService;
	}


	public void setRoleRelationService(RoleRelationService roleRelationService) {
		this.roleRelationService = roleRelationService;
	}

	
	
	
	
}
