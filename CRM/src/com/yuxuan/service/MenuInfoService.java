package com.yuxuan.service;

import java.util.List;

import com.yuxuan.po.MenuInfo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.MenuInfoService.java]  
 * @ClassName:    [MenuInfoService]   
 * @Description:  菜单信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午9:26:47]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface MenuInfoService {

	/**
	 * @Title: queryAll 
	 * @Description: 获取所有的菜单信息
	 * @return
	 * @throws Exception  
	 * @return List<MenuInfo> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:27:46]  
	 * @throws  
	 */
	public List<MenuInfo> queryAll() throws Exception;
	
	/**
	 * @Title: queryMenuCount 
	 * @Description: TODO 
	 * @return
	 * @throws Exception  
	 * @return Integer 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:06:41]  
	 * @throws  
	 */
	public Integer queryMenuCount() throws Exception;
	
	/**
	 * @Title: queryMenuById 
	 * @Description: 获取有没有村子啊的
	 * @return
	 * @throws Exception  
	 * @return Booean 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:10:42]  
	 * @throws  
	 */
	public Boolean queryMenuById(Integer Id) throws Exception;
	
}
