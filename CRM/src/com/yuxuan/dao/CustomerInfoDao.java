package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.CustomerInfo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dao.CustomerInfoDao.java]  
 * @ClassName:    [CustomerInfoDao]   
 * @Description:  客户信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:21:05]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface CustomerInfoDao {

	public abstract void save(CustomerInfo transientInstance);

	public abstract void delete(CustomerInfo persistentInstance);

	public abstract CustomerInfo findById(Integer id);

	public abstract List findByExample(CustomerInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByCustomerMc(Object customerMc);

	public abstract List findByCustomerWz(Object customerWz);

	public abstract List findByCustomerDh(Object customerDh);

	public abstract List findByCustomerDjr(Object customerDjr);

	public abstract List findByCustomerAddress(Object customerAddress);

	public abstract List findByCustomerSssf(Object customerSssf);

	public abstract List findByCustomerSscs(Object customerSscs);

	public abstract List findByCustomerYb(Object customerYb);

	public abstract List findByCustomerYh(Object customerYh);

	public abstract List findByCustomerYhzh(Object customerYhzh);

	public abstract List findByCustomerBz(Object customerBz);

	public abstract List findAll();

	public abstract CustomerInfo merge(CustomerInfo detachedInstance);

	public abstract void attachDirty(CustomerInfo instance);

	public abstract void attachClean(CustomerInfo instance);

	public abstract int queryAllCount();

	public abstract List findPageAll(Page page);

	public List findByPropertyPage(String propertyName, Object value,Page page);
	
	public int findByPropertyPageSize(String propertyName, Object value);
}