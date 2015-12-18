package com.yx.dao.user;

import com.yx.entity.User;
import com.yx.entity.YParamx;

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
	public User getLogin(YParamx yparams) throws Exception;
	
}
