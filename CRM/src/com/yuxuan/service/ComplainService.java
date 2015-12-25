package com.yuxuan.service;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.po.CustomerComplainInfo;
import com.yuxuan.po.Sjzdxx;

public interface ComplainService {

	/**
	 * @Title: saveComplain 
	 * @Description: TODO 
	 * @param complainInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午7:08:35]  
	 * @throws  
	 */
	public void saveComplain(CustomerComplainInfo complainInfo) throws Exception;
	
	/**
	 * @Title: findAll 
	 * @Description: 分页
	 * @param page
	 * @return  
	 * @return List 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午8:11:48]  
	 * @throws  
	 */
	public PageResult findAll(Page page) throws Exception;
	
	/**
	 * @Title: queryComplainInfoById 
	 * @Description: 根据ID查询
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return CustomerComplainInfo 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午9:12:44]  
	 * @throws  
	 */
	public CustomerComplainInfo queryComplainInfoById(Integer id) throws Exception;
	
	/**
	 * @Title: saveComplain 
	 * @Description: 保存
	 * @param complainInfo
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午10:19:55]  
	 * @throws  
	 */
	public void updataComplain(CustomerComplainInfo complainInfo) throws Exception;

	/**
	 * @Title: deleteComplain 
	 * @Description:根据ID删除
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-上午8:45:19]  
	 * @throws  
	 */
    public void deleteComplain(Integer id) throws Exception;

    /**
     * @Title: queryComplainSjzd 
     * @Description: 查询数据字典信息
     * @param sjzdxx
     * @return
     * @throws Exception  
     * @return List 
     * @Author:[yuxuan]
     * @Date:[2014-下午12:20:50]  
     * @throws  
     */
    public List queryComplainSjzd(Sjzdxx sjzdxx) throws Exception;
    

}
