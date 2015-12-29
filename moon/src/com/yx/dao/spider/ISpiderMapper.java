package com.yx.dao.spider;

import com.yx.entity.SpiderArticle;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.dao.adminuser.IAdminUserMapper.java]  
 * @ClassName:    [IAdminUserMapper]   
 * @Description:  抓取的内容
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:09:01]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface ISpiderMapper {


	/**
	 * @Title: insert 
	 * @Description: 插入
	 * @param spiderArticle  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月28日 下午8:28:09]  
	 * @throws  
	 */
	public void insert(SpiderArticle spiderArticle);
	
	
}
