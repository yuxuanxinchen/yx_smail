package com.yx.service.role;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Role;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.role.IRoleService.java]  
 * @ClassName:    [IRoleService]   
 * @Description:  角色信息  
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:34:17]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IRoleService {


	/**
	 * @Title: findRoles 
	 * @Description: 获取全部 
	 * @param params
	 * @return  
	 * @return List<Role> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:34:32]  
	 * @throws  
	 */
	public List<Role> findRoles(YParams params);
	
	/**
	 * @Title: count 
	 * @Description:求总数
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:34:57]  
	 * @throws  
	 */
	public int count(YParams params);
	
	/**
	 * @Title: get 
	 * @Description:根据ID获取 
	 * @param id
	 * @return  
	 * @return Role 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:07]  
	 * @throws  
	 */
	public Role get(Integer id);
	
	/**
	 * @Title: save 
	 * @Description: 保存角色管理
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:25]  
	 * @throws  
	 */
	public int save(Role role);
	
	/**
	 * @Title: update 
	 * @Description: 更新角色管理
	 * @param role
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:34]  
	 * @throws  
	 */
	public int update(Role role);
	
	/**
	 * @Title: delete 
	 * @Description:  删除角色管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:44]  
	 * @throws  
	 */
	public int delete(YParams params);
	
	/**
	 * @Title: saveRoleUser 
	 * @Description: 分配角色给用户
	 * @param userId
	 * @param roleId
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:58]  
	 * @throws  
	 */
	public int saveRoleUser(Integer userId,Integer roleId);
	public int saveRolePermission(@Param("roleId")Integer roleId,@Param("permissionId")Integer permissionId);
	public int deleteRolePermission(@Param("roleId")Integer roleId);
	
    /**
     * @Title: findFilterUsers 
     * @Description: 过滤查询用户 
     * @param params
     * @return  
     * @return List<HashMap<String,Object>> 
     * @Author:[yuxuan]
     * @Date:[2014-下午6:36:14]  
     * @throws  
     */
	public List<HashMap<String,Object>> findFilterUsers(YParams params);
	public int countFilterUsers(YParams params);
	
    /**
     * @Title: findRolesByUserId 
     * @Description:根据用户查询对应的角色
     * @param userId
     * @return  
     * @return HashMap<String,Object> 
     * @Author:[yuxuan]
     * @Date:[2014-下午6:36:30]  
     * @throws  
     */
	public HashMap<String, Object> findRolesByUserId(Integer userId);
}
