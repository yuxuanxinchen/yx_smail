package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.User;


/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.UserService.java]  
 * @ClassName:    [UserService]   
 * @Description:  用户接口 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午8:13:18]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface UserService {

	/**
	 * @Title: queryAll 
	 * @Description: 查询所有的用户
	 * @return  
	 * @return List<User> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:13:55]  
	 * @throws  
	 */
	public List<User> queryUserAll();
	
	
	/**
	 * @Title: queryByUserName 
	 * @Description: 根据名称来查询ID
	 * @param userName
	 * @return
	 * @throws Exception  
	 * @return User 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:34:21]  
	 * @throws  
	 */
	public User queryByUserName(String userName) throws Exception;
	
	
	/**
	 * @Title: saveUser 
	 * @Description:保存
	 * @param user
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:59:00]  
	 * @throws  
	 */
	public void saveUser(User user) throws Exception;
	
	/**
	 * @Title: queryUserById 
	 * @Description:查询用户
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:24:35]  
	 * @throws  
	 */
	public User queryUserById(Integer id) throws Exception;
	
	/**
	 * @Title: isUserName 
	 * @Description:判断用户是否存在
	 * @param userName
	 * @return
	 * @throws Exception  
	 * @return Boolean 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:56:31]  
	 * @throws  
	 */
	public Boolean isUserName(String userName) throws Exception;
	
	/**
	 * @Title: queryUserAllPage 
	 * @Description: 分页
	 * @return
	 * @throws Exception  
	 * @return List<User> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:25:13]  
	 * @throws  
	 */
	public PageResult queryUserAllPage(Page page) throws Exception;
	
	/**
	 * @Title: updataUser 
	 * @Description: 更新用户
	 * @param user
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:33:30]  
	 * @throws  
	 */
	public void updataUser(User user) throws Exception;
	
	/**
	 * @Title: deleteUser 
	 * @Description:删除
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:33:04]  
	 * @throws  
	 */
	public void deleteUser(Integer id) throws Exception;
	
	/**
	 * @Title: loginverify 
	 * @Description: 登录验证
	 * @param userName
	 * @param passWord
	 * @return
	 * @throws Exception  
	 * @return Boolean 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:50:43]  
	 * @throws  
	 */
	public Boolean loginverify(String userName,String passWord) throws Exception;
	
	/**
	 * @Title: queryUserByLoginName 
	 * @Description: 根据登录名来查询用户
	 * @param loginName
	 * @return
	 * @throws Exception  
	 * @return User 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:16:24]  
	 * @throws  
	 */
	public User queryUserByLoginName(String loginName) throws Exception;
}
