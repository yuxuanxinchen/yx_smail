package com.yuxuan.service;

import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.SjzdxxService.java]  
 * @ClassName:    [SjzdxxService]   
 * @Description:  [一句话描述该类的功能]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:41:11]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface SjzdxxService {
	
	/**
	 * @Title: getAllSjzdxxByType 
	 * @Description: 获取所有的类型
	 * @param paramSjzdfl
	 * @return
	 * @throws Exception  
	 * @return List<Sjzdxx> 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:41:17]  
	 * @throws  
	 */
	public abstract List<Sjzdxx> getAllSjzdxxByType(Sjzdfl paramSjzdfl)
			throws Exception;

	/**
	 * @Title: updateSjzdxx 
	 * @Description: 更新数据字典
	 * @param paramSjzdxx
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午9:41:48]  
	 * @throws  
	 */
	public abstract void updateSjzdxx(Sjzdxx paramSjzdxx) throws Exception;

	/**
	 * @Title: getSjzdxxById 
	 * @Description: 根据Id来查询
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return Sjzdxx 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:19:19]  
	 * @throws  
	 */
    public Sjzdxx querySjzdxxById(Integer id) throws Exception;

}
