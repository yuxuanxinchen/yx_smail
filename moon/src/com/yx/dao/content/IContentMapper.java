package com.yx.dao.content;

import java.util.List;

import com.yx.entity.Content;
import com.yx.entity.YParams;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.content.IContentMapper.java]  
 * @ClassName:    [IContentMapper]   
 * @Description:  内容表
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:13:21]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface IContentMapper {
	
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
	
     /**
      * @Title: save 
      * @Description: 保存
      * @param content
      * @return  
      * @return int 
      * @Author:[yuxuan]
      * @Date:[2014-下午5:23:45]  
      * @throws  
      */
	public int save(Content content);
	
	/**
	 * @Title: updata 
	 * @Description:更新
	 * @param content
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:23:53]  
	 * @throws  
	 */
	public int updata(Content content);
	
	/**
	 * @Title: delete 
	 * @Description: 删除
	 * @param Params
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午5:24:05]  
	 * @throws  
	 */
	public int delete(YParams Params);
	
	/**
	 * @Title: countContents 
	 * @Description:查询总数
	 * @return  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:22:44]  
	 * @throws  
	 */
	public int countContents(YParams yParams);
	
	
}
