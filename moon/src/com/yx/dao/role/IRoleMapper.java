package com.yx.dao.role;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.Role;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.role.IRoleMapper.java]  
 * @ClassName:    [IRoleMapper]   
 * @Description:  角色管理Mapper
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:20:01]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IRoleMapper {

	/**
	 * @Title: findRoles 
	 * @Description: 获取所有角色信息
	 * @param params
	 * @return  
	 * @return List<Role> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:20:26]  
	 * @throws  
	 */
	public List<Role> findRoles(YParams params);
	
	/**
	 * @Title: count 
	 * @Description: 求总数
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:20:47]  
	 * @throws  
	 */
	public int count(YParams params);
	
	/**
	 * @Title: get 
	 * @Description: 根据ID获取
	 * @param id
	 * @return  
	 * @return Role 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:20:59]  
	 * @throws  
	 */
	public Role get(Integer id);
	
	/**
	 * @Title: save 
	 * @Description: 保存角色管理
	 * @param role
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:21:14]  
	 * @throws  
	 */
	public int save(Role role);
	
	/**
	 * @Title: update 
	 * @Description:  更新角色管理 
	 * @param role
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:21:24]  
	 * @throws  
	 */
	public int update(Role role);
	
	/**
	 * @Title: delete 
	 * @Description: 删除角色管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:21:34]  
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
      * @Date:[2014-下午6:21:50]  
      * @throws  
      */
	public int saveRoleUser(@Param("userId")Integer userId,@Param("roleId")Integer roleId);
	public int saveRolePermission(@Param("roleId")Integer roleId,@Param("permissionId")Integer permissionId);
	public int deleteRolePermission(@Param("roleId")Integer roleId);
	
	/**
	 * @Title: findFilterUsers 
	 * @Description: 过滤查询用户
	 * @param params
	 * @return  
	 * @return List<HashMap<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:22:04]  
	 * @throws  
	 */
	public List<HashMap<String,Object>> findFilterUsers(YParams params);
	public int countFilterUsers(YParams params);
	
	/**
	 * @Title: findRolesByUserId 
	 * @Description:  根据用户查询对应的角色
	 * @param userId
	 * @return  
	 * @return HashMap<String,Object> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:22:26]  
	 * @throws  
	 */
	public HashMap<String, Object> findRolesByUserId(Integer userId);
	
	/**
	 * @Title: findRolePermission 
	 * @Description: 获取当前角色的权限
	 * @param userId
	 * @return  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:26:34]  
	 * @throws  
	 */
	public List findRolePermission(@Param("roleId")Integer roldId);
	
	/**
	 * @Title: insert 
	 * @Description:添加角色
	 * @param role  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午6:00:11]  
	 * @throws  
	 */
	public void insert(Role role);
	
	/**
	 * @Title: sdelete 
	 * @Description: 物理删除
	 * @param id  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午6:39:44]  
	 * @throws  
	 */
	public void sdelete(@Param("id")Integer id);
	
}
