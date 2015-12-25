package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.CustomerComplainInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.CustomerComplainInfo;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.ComplainService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.service.impl.ComplainServiceImpl.java]  
 * @ClassName:    [ComplainServiceImpl]   
 * @Description:  投诉 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午7:07:31]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class ComplainServiceImpl implements ComplainService{

	private CustomerComplainInfoDao customerComplainInfoDao; 
	
	@Override
	public void saveComplain(CustomerComplainInfo complainInfo)
			throws Exception {
		 customerComplainInfoDao.save(complainInfo);
		
	}

	public CustomerComplainInfoDao getCustomerComplainInfoDao() {
		return customerComplainInfoDao;
	}

	public void setCustomerComplainInfoDao(
			CustomerComplainInfoDao customerComplainInfoDao) {
		this.customerComplainInfoDao = customerComplainInfoDao;
	}

	@Override
	public PageResult findAll(Page page) throws Exception {
		page = PageUtils.createPage(page,customerComplainInfoDao.findAll().size());
		PageResult result = new PageResult();
		result.setList(customerComplainInfoDao.findAll());
		result.setPage(page);
		return result;
	}

	@Override
	public CustomerComplainInfo queryComplainInfoById(Integer id)
			throws Exception {
		return customerComplainInfoDao.findById(id);
	}

	@Override
	public void updataComplain(CustomerComplainInfo complainInfo)
			throws Exception {
		customerComplainInfoDao.attachDirty(complainInfo);
	}

	@Override
	public void deleteComplain(Integer id) throws Exception {
		customerComplainInfoDao.delete(customerComplainInfoDao.findById(id));
	}

	@Override
	public List queryComplainSjzd(Sjzdxx sjzdxx) throws Exception {
		return customerComplainInfoDao.findByProperty("sjzdxxByComplainStatus", sjzdxx);
	}

	
	
	
}
