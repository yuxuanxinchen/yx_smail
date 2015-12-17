package com.tian.service;

import java.util.List;
import com.tian.entity.Users;

/**
 * 用户信息业务逻辑层
 * @author Administrator
 *
 */
public interface UserService {
	/**
	 * 查询全部信息
	 * @return 返回查询结果
	 */
	public List<Users> getAllUserInfo();
	
	/**
	 * 根据用户账号查找信息
	 * @param name 用户账号
	 * @return 返回查找的结果
	 */
	public boolean getAllUserInfoById(String name);
	
	/**
	 * 修改用户信息
	 * @param u 要修改的用户信息
	 * @return 返回修改结果
	 */
	public boolean updateUserInfo(Users u);
	
	
	/**
	 * 用户登陆
	 * @param name 用户名
	 * @param pwd 用户密码
	 * @return 返回是否成功
	 */
	public Users getAllUserInfoByName(String name,String pwd);
	
	/**
	 * 注册用户
	 * @param u 用户信息
	 * @return 返回执行结果
	 */
	public boolean insertUserInfo(Users u);
}
