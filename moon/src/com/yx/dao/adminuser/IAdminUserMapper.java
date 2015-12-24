package com.yx.dao.adminuser;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yx.entity.AdminUser;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.adminuser.IAdminUserMapper.java]  
 * @ClassName:    [IAdminUserMapper]   
 * @Description:  日记管理Mapper
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:09:01]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IAdminUserMapper {

	/**
	 * @Title: findAdminUsers 
	 * @Description: TODO 
	 * @param params
	 * @return  
	 * @return List<AdminUser> 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:09:14]  
	 * @throws  
	 */
	public List<AdminUser> findAdminUsers(YParams params);
	
	/**
	 * @Title: count 
	 * @Description: 求总数 
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:09:21]  
	 * @throws  
	 */
	public int count(YParams params);
	
	/**
	 * @Title: get 
	 * @Description: TODO 
	 * @param id
	 * @return  
	 * @return AdminUser 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:09:41]  
	 * @throws  
	 */
	public AdminUser get(Integer id);
	
	/**
	 * @Title: save 
	 * @Description: 保存日记管理
	 * @param adminuser
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:09:48]  
	 * @throws  
	 */
	public int save(AdminUser adminuser);
	
	/**
	 * @Title: update 
	 * @Description: 更新日记管理
	 * @param adminuser
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:10:12]  
	 * @throws  
	 */
	public int update(AdminUser adminuser);
	
	/**
	 * @Title: delete 
	 * @Description: 删除日记管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:10:31]  
	 * @throws  
	 */
	public int delete(YParams params);
	
	/**
	 * @Title: add 
	 * @Description:添加用户
	 * @param adminUser  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午3:24:10]  
	 * @throws  
	 */
	public void add(AdminUser adminUser);
	
	/**
	 * @Title: sdelete 
	 * @Description: 永久删除
	 * @param id  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月24日 下午4:07:47]  
	 * @throws  
	 */
	public void sdelete(@Param("id")Integer id);
	
}
