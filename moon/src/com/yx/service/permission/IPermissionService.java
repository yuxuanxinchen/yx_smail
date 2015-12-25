package com.yx.service.permission;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Permission;
import com.yx.entity.YParams;


/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.permission.IPermissionService.java]  
 * @ClassName:    [IPermissionService]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:23:11]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IPermissionService {


	/**
	 * @Title: findPermissions 
	 * @Description: TODO 
	 * @param params
	 * @return  
	 * @return HashMap<String,Object> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:23:30]  
	 * @throws  
	 */
	public HashMap<String,Object> findPermissions(YParams params);
	
	/**
	 * @Title: count 
	 * @Description:求总数
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:23:48]  
	 * @throws  
	 */
	public int count(YParams params);
	
	/**
	 * @Title: get 
	 * @Description: TODO 
	 * @param id
	 * @return  
	 * @return Permission 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:24:01]  
	 * @throws  
	 */
	public Permission get(Integer id);
	
	/**
	 * @Title: save 
	 * @Description:  保存权限管理
	 * @param permission
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:24:16]  
	 * @throws  
	 */
	public int save(Permission permission);
	
	/**
	 * @Title: update 
	 * @Description:  更新权限管理
	 * @param permission
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:24:27]  
	 * @throws  
	 */
	public int update(Permission permission);
	
	/**
	 * @Title: delete 
	 * @Description:  删除权限管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:24:36]  
	 * @throws  
	 */
	public int delete(YParams params);
	
	
	/**
	 * @Title: findUserPermission 
	 * @Description: 根据用户ID来获取权限
	 * @param userId
	 * @return  
	 * @return List<HashMap<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:16:18]  
	 * @throws  
	 */
	public List<HashMap<String,Object>> findUserPermission(@Param("userId")Integer userId);
	
	
	/**
	 * @Title: insert 
	 * @Description: 插入
	 * @param permission  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月25日 下午11:47:22]  
	 * @throws  
	 */
	public void insert(Permission permission);
	
	
}
