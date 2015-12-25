package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.ProjectManager;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.ProjectService.java]  
 * @ClassName:    [ProjectService]   
 * @Description:  项目模块
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:33:23]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface ProjectService {

	
	/**
	 * @Title: saveProject 
	 * @Description:保存
	 * @param projectManager
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:34:49]  
	 * @throws  
	 */
	public void saveProject(ProjectManager projectManager) throws Exception;
	
	/**
	 * @Title: deleteProject 
	 * @Description:删除
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:14]  
	 * @throws  
	 */
	public void deleteProject(Integer id) throws Exception;
	
	/**
	 * @Title: updataProject 
	 * @Description:更新项目
	 * @param projectManager
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:35:52]  
	 * @throws  
	 */
	public void updataProject(ProjectManager projectManager) throws Exception;
	
	
	/**
	 * @Title: queryProjectManagerById 
	 * @Description: 根据ID查询
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return ProjectManager 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:36:28]  
	 * @throws  
	 */
	public ProjectManager queryProjectManagerById(Integer id) throws Exception;
	
	/**
	 * @Title: queryAll 
	 * @Description:获取所有
	 * @return
	 * @throws Exception  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:37:08]  
	 * @throws  
	 */
	public List queryAll() throws Exception;	
	
	/**
	 * @Title: queryAllVerify 
	 * @Description: 审批
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:57:13]  
	 * @throws  
	 */
	public PageResult queryAllVerify(Page page) throws Exception;
	
	/**
	 * @Title: queryAllProcess 
	 * @Description:进度
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:05:46]  
	 * @throws  
	 */
	public PageResult queryAllProcess(Page page) throws Exception;
	
	/**
	 * @Title: queryAllSummarize 
	 * @Description: 总结
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:35:40]  
	 * @throws  
	 */
	public PageResult queryAllSummarize(Page page) throws Exception;
	
	/**
	 * @Title: queryAllBusiness 
	 * @Description:交易状态
	 * @param page
	 * @return
	 * @throws Exception  
	 * @return PageResult 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:18:24]  
	 * @throws  
	 */
	public PageResult queryAllBusiness(Page page) throws Exception;
	
	
}
