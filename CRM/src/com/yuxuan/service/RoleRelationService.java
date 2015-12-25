package com.yuxuan.service;

import java.util.List;

import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.RoleRelationService.java]  
 * @ClassName:    [RoleRelationService]   
 * @Description:  角色权限Service 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:40:39]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface RoleRelationService {
	
	public void saveRoleRelationInfo(RoleRelation relation) throws Exception;
	
	/**
	 * @Title: findRelationsById 
	 * @Description: 获取权限
	 * @param roleId
	 * @return  
	 * @return List<RoleRelation> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:48:27]  
	 * @throws  
	 */
	public List<RoleRelation> findRelationsById(RoleInfo roleInfo) throws Exception;

	
	/**
	 * @Title: updateRoleInfo 
	 * @Description:更新 
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:59:03]  
	 * @throws  
	 */
	public void updateRoleRelationInfo(RoleRelation relation) throws Exception;
	
	/**
	 * @Title: deleteRoleRelationInfo 
	 * @Description:删除
	 * @param relation
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午11:51:04]  
	 * @throws  
	 */
	public void deleteRoleRelationInfo(RoleRelation relation) throws Exception;
	
	
}
