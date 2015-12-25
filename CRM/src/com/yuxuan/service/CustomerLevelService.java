package com.yuxuan.service;

import com.yuxuan.po.DataLevel;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.CustomerLevelService.java]  
 * @ClassName:    [CustomerLevelService]   
 * @Description:  用户级别
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:39:34]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface CustomerLevelService {
	
	/**
	 * @Title: getAllDataLevels 
	 * @Description: 获取所有级别信息 
	 * @return
	 * @throws Exception  
	 * @return List<DataLevel> 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:39:49]  
	 * @throws  
	 */
	public abstract List<DataLevel> getAllDataLevels() throws Exception;

	/**
	 * @Title: updateCumstomerInfo 
	 * @Description:更新级别信息
	 * @param paramDataLevel
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:40:00]  
	 * @throws  
	 */
	public abstract void updateCumstomerInfo(DataLevel paramDataLevel)
			throws Exception;
}
