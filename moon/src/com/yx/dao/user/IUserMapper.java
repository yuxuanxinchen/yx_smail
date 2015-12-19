package com.yx.dao.user;

import java.util.List;

import com.yx.entity.AdminUser;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.user.IUserMapper.java]  
 * @ClassName:    [IUserMapper]   
 * @Description:  用户
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:39:00]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IUserMapper {

	/**
	 * @Title: getLogin 
	 * @Description:登录查询
	 * @param yparams
	 * @return  
	 * @return User 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:39:08]  
	 * @throws  
	 */
	public AdminUser getLogin(YParams yparams) throws Exception;
	
	/**
	 * @Title: saveBatch 
	 * @Description: 批量保存
	 * @param adminUsers
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:16:10]  
	 * @throws  
	 */
	public int saveBatch(List<AdminUser> adminUsers);
	
	/**
	 * @Title: batchUpdata 
	 * @Description: 批量更新
	 * @param adminUsers
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:16:19]  
	 * @throws  
	 */
	public int batchUpdate(List<AdminUser> adminUsers);
	
}
