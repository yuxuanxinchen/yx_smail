package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.MessionInfo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.MessionService.java]  
 * @ClassName:    [MessionService]   
 * @Description:  任务
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午8:56:42]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface MessionService {
	
	/**
	 * @Title: saveMession 
	 * @Description:保存
	 * @param messionInfo
	 * @throws Exception  
	 * @return void 
	 * @Author保存	 
	 * @Date:[2014-下午8:59:19]  
	 * @throws  
	 */
	public void saveMession(MessionInfo messionInfo) throws Exception;
	
	/**
	 * @Title: deleteMessionById 
	 * @Description: 删除用户 
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:59:53]  
	 * @throws  
	 */
	public void deleteMessionById(Integer id) throws Exception;
	
	/**
	 * @Title: updataMession 
	 * @Description: 更新用户 
	 * @param messionInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:00:16]  
	 * @throws  
	 */
	public void updataMession(MessionInfo messionInfo) throws Exception;
	
	/**
	 * @Title: queryMessionAll 
	 * @Description: 获取所有
	 * @return
	 * @throws Exception  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:00:55]  
	 * @throws  
	 */
	public List queryMessionAll() throws Exception;
	
	/**
	 * @Title: queryMessionById 
	 * @Description: 根据Id查询 
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return MessionInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:01:24]  
	 * @throws  
	 */
	public MessionInfo queryMessionById(Integer id) throws Exception;
	
	/**
	 * @Title: queryMessionPage 
	 * @Description: 分页
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return Result 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午11:28:39]  
	 * @throws  
	 */
	public PageResult queryMessionPage(Page page)  throws Exception;

}
