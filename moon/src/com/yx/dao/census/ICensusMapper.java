package com.yx.dao.census;

import java.util.HashMap;
import java.util.List;

import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.census.ICensusMapper.java]  
 * @ClassName:    [ICensusMapper]   
 * @Description:  统计
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月25日 下午7:53:18]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月25日 下午7:53:18]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface ICensusMapper {
	
	/**
	 * @Title: findModelBtns 
	 * @Description: 返回初始化数据
	 * @param ypParams
	 * @return  
	 * @return List<HashMap<String,Object>> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月25日 下午7:57:35]  
	 * @throws  
	 */
	public List<HashMap<String, Object>> findModelBtns(YParams ypParams);
	
	
	

}
