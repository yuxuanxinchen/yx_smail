package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.RoleInfoService.java]  
 * @ClassName:    [RoleInfoService]   
 * @Description:  角色信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午10:06:48]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface RoleInfoService {
	
	/**
	 * @Title: saveRoleInfo 
	 * @Description: 保存角色信息
	 * @param roleInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:07:27]  
	 * @throws  
	 */
	public void saveRoleInfo(RoleInfo roleInfo,RoleRelation relation) throws Exception;
	
	/**
	 * @Title: findByRoleInfoName 
	 * @Description:根据角色名称查询 
	 * @param roleName
	 * @return
	 * @throws Exception  
	 * @return List<RoleInfo> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:31:39]  
	 * @throws  
	 */
	public Boolean findByRoleInfoName(String roleName) throws Exception;
	
	/**
	 * @Title: queryRoleInfoCount 
	 * @Description: 返回总数 
	 * @return
	 * @throws Exception  
	 * @return Integer 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:56:49]  
	 * @throws  
	 */
	public Integer queryRoleInfoCount() throws Exception;

	/**
	 * @Title: getRoleInfoAll 
	 * @Description: 返回所有角色信息
	 * @return
	 * @throws Exception  
	 * @return List<RoleInfo> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:50:33]  
	 * @throws  
	 */
	public List<RoleInfo> getRoleInfoAll() throws Exception;
	
	/**
	 * @Title: getRoleInfoAllPage 
	 * @Description: 分页
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return List<RoleInfo> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:52:36]  
	 * @throws  
	 */
	public PageResult getRoleInfoAllPage(Page page) throws Exception;
	
	/**
	 * @Title: findRoleInfoById 
	 * @Description: 根据ID查询信息
	 * @param roleId
	 * @return
	 * @throws Exception  
	 * @return RoleInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:44:54]  
	 * @throws  
	 */
	public RoleInfo queryRoleInfoById(Integer roleId) throws Exception;
	
	/**
	 * @Title: updateRoleInfo 
	 * @Description: 保存
	 * @param roleInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:02:22]  
	 * @throws  
	 */
	public void updateRoleInfo(RoleInfo roleInfo) throws Exception;
	
	/**
	 * @Title: deleteRoleInfo 
	 * @Description:删除角色
	 * @param roleId
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午11:48:50]  
	 * @throws  
	 */
	public void deleteRoleInfo(RoleInfo roleInfo) throws Exception;
	
	
	public PageResult queryConditionRolePage(String propertyName,String value,Page page) throws Exception;
   
	/**
	 * @Title: queryRoleById 
	 * @Description: 根据名称差Id
	 * @param roleName
	 * @return
	 * @throws Exception  
	 * @return RoleInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:43:04]  
	 * @throws  
	 */
	public RoleInfo queryRoleById(String roleName) throws Exception;
	
	/**
	 * @Title: queryRoleById 
	 * @Description: TODO 
	 * @param roleId
	 * @return
	 * @throws Exception  
	 * @return RoleInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:28:23]  
	 * @throws  
	 */
	public RoleInfo queryRoleById(Integer roleId) throws Exception;
	

}
