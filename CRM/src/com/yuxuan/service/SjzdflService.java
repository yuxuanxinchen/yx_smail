package com.yuxuan.service;

import com.yuxuan.po.Sjzdfl;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.SjzdflService.java]  
 * @ClassName:    [SjzdflService]   
 * @Description: 数据字典信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:40:14]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface SjzdflService {
	
	/**
	 * @Title: getAllSjzdfl 
	 * @Description: 获取数据字典分类
	 * @return
	 * @throws Exception  
	 * @return List<Sjzdfl> 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:40:25]  
	 * @throws  
	 */
	public abstract List<Sjzdfl> getAllSjzdfl() throws Exception;

	/**
	 * @Title: updateSjzdfl 
	 * @Description:更新数据字典分类 
	 * @param paramSjzdfl
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:40:36]  
	 * @throws  
	 */
	public abstract void updateSjzdfl(Sjzdfl paramSjzdfl) throws Exception;

	/**
	 * @Title: findSjzdflById 
	 * @Description: 获取分类ID
	 * @param paramInteger
	 * @return
	 * @throws Exception  
	 * @return Sjzdfl 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:40:52]  
	 * @throws  
	 */
	public abstract Sjzdfl findSjzdflById(Integer paramInteger)
			throws Exception;
}
