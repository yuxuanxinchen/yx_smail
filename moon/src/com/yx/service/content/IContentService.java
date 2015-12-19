package com.yx.service.content;

import java.util.List;

import com.yx.entity.Content;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.content.IContentService.java]  
 * @ClassName:    [IContentService]   
 * @Description:  内容 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:42:16]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IContentService {

	
	/**
	 * @Title: findContents 
	 * @Description: 获取所有
	 * @param yParams
	 * @return  
	 * @return List<Content> 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:18:04]  
	 * @throws  
	 */
	public List<Content> findContents(YParams yParams);
}
