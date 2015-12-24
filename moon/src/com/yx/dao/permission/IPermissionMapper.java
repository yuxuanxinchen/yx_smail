package com.yx.dao.permission;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Permission;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.permission.IPermissionMapper.java]  
 * @ClassName:    [IPermissionMapper]   
 * @Description:  权限管理Mapper
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:18:26]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IPermissionMapper {

	/**
	 * @Title: findPermissionRoot 
	 * @Description: TODO 
	 * @param params
	 * @return  
	 * @return List<Permission> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:18:58]  
	 * @throws  
	 */
	public List<Permission> findPermissionRoot(YParams params);
	
	/**
	 * @Title: findPermissionChildren 
	 * @Description: TODO 
	 * @param parentId
	 * @return  
	 * @return List<Permission> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:19:03]  
	 * @throws  
	 */
	public List<Permission> findPermissionChildren(@Param("id")Integer parentId);
	/**
	 * @Title: count 
	 * @Description: 求总数
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:19:38]  
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
	 * @Date:[2014-下午12:19:46]  
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
	 * @Date:[2014-下午12:19:54]  
	 * @throws  
	 */
	public int save(Permission permission);
	
	/**
	 * @Title: update 
	 * @Description: 更新权限管理
	 * @param permission
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:20:03]  
	 * @throws  
	 */
	public int update(Permission permission);
	
	/**
	 * @Title: delete 
	 * @Description:删除权限管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:20:14]  
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
	
	
}
