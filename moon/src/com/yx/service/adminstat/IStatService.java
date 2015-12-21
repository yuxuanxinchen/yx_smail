/**
 * kekeblog系统平台
 * moonvip_admin
 * com.tz.dao.adminstat
 * IAdminStatMapper.java
 * 创建人:柯柯 
 * 时间：2015年11月28日-下午10:47:13 
 * 2015潭州教育公司-版权所有
 */
package com.yx.service.adminstat;

import java.util.List;
import java.util.Map;

import com.yx.entity.AdminStat;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.adminstat.IAdminStatMapper.java]  
 * @ClassName:    [IAdminStatMapper]   
 * @Description:  日志
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:46:17]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface  IStatService{
	/**
	 * @Title: findAdminStats 
	 * @Description: 列表查询
	 * @param params
	 * @return  
	 * @return List<AdminStat> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:47:47]  
	 * @throws  
	 */
	public List<Map<String,Object>> groupContent(YParams params);
	
	
	/**
	 * @Title: getContentYear 
	 * @Description: 获取年份
	 * @return  
	 * @return List<Integer> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:43:52]  
	 * @throws  
	 */
	public List<Integer> getContentYear();
	
}
