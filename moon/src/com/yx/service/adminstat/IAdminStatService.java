package com.yx.service.adminstat;

import java.util.List;
import java.util.Map;

import com.yx.entity.AdminStat;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.adminstat.IAdminStatService.java]  
 * @ClassName:    [IAdminStatService]   
 * @Description:  日记管理   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:53:23]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IAdminStatService {

	/**
	 * @Title: findAdminStats 
	 * @Description: 查询全部
	 * @param params
	 * @return  
	 * @return List<AdminStat> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:47:47]  
	 * @throws  
	 */
	public List<AdminStat> findAdminStats(YParams params);
	
	/**
	 * @Title: count 
	 * @Description: 求总数
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:47:37]  
	 * @throws  
	 */
	public int count(YParams params);
	
	/**
	 * @Title: get 
	 * @Description: 跟ID查询
	 * @param id
	 * @return  
	 * @return AdminStat 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:47:21]  
	 * @throws  
	 */
	public AdminStat get(Integer id);
	
	/**
	 * @Title: save 
	 * @Description: 保存日记管理
	 * @param adminstat
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:47:09]  
	 * @throws  
	 */
	public int save(AdminStat adminstat);
	
	/**
	 * @Title: update 
	 * @Description:  更新日记管理
	 * @param adminstat
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:46:59]  
	 * @throws  
	 */
	public int update(AdminStat adminstat);
	
	/**
	 * @Title: delete 
	 * @Description:删除日记管理
	 * @param params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:46:51]  
	 * @throws  
	 */
	public int delete(YParams params);
	
	

	/**
	 * @Title: groupContents 
	 * @Description: 内容查询
	 * @param yParams
	 * @return  
	 * @return List<Map<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午3:11:48]  
	 * @throws  
	 */
	public List<Map<String, Object>> groupContents(YParams yParams);
	
	/**
	 * @Title: groupUsers 
	 * @Description: 用户统计
	 * @param yParams
	 * @return  
	 * @return List<Map<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:11:00]  
	 * @throws  
	 */
	public List<Map<String, Object>> groupUsers(YParams yParams);
}
