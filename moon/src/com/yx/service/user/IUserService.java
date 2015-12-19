package com.yx.service.user;

import com.yx.entity.AdminUser;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.user.IUserService.java]  
 * @ClassName:    [IUserService]   
 * @Description:  用户接口 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:38:45]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IUserService {

	/**
	 * @Title: getLogin 
	 * @Description:登录查询
	 * @param yparams
	 * @return
	 * @throws Exception  
	 * @return User 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:39:49]  
	 * @throws  
	 */
	public AdminUser getLogin(YParams yparams) throws Exception;
	
}
