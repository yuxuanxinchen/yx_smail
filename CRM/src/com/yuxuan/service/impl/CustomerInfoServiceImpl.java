package com.yuxuan.service.impl;

import com.yuxuan.dao.CustomerInfoDao;
import com.yuxuan.dao.DataLevelDao;
import com.yuxuan.dao.SjzdflDao;
import com.yuxuan.dao.SjzdxxDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.CustomerInfo;
import com.yuxuan.po.DataLevel;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.CustomerInfoService;

import java.util.List;

public class CustomerInfoServiceImpl implements CustomerInfoService {
	private DataLevelDao dataLevelDao;
	private SjzdxxDao sjzdxxDao;
	private SjzdflDao sjzdflDao;
	private CustomerInfoDao customerInfoDao;

	
	public DataLevelDao getDataLevelDao() {
		return this.dataLevelDao;
	}

	public void setDataLevelDao(DataLevelDao dataLevelDao) {
		this.dataLevelDao = dataLevelDao;
	}

	public SjzdxxDao getSjzdxxDao() {
		return this.sjzdxxDao;
	}

	public void setSjzdxxDao(SjzdxxDao sjzdxxDao) {
		this.sjzdxxDao = sjzdxxDao;
	}

	public SjzdflDao getSjzdflDao() {
		return this.sjzdflDao;
	}

	public void setSjzdflDao(SjzdflDao sjzdflDao) {
		this.sjzdflDao = sjzdflDao;
	}

	public CustomerInfoDao getCustomerInfoDao() {
		return this.customerInfoDao;
	}

	public void setCustomerInfoDao(CustomerInfoDao customerInfoDao) {
		this.customerInfoDao = customerInfoDao;
	}

	
	
	
	public List<DataLevel> getAllKhjb() throws Exception {
		List dataLevels = this.dataLevelDao.findAll();
		return dataLevels;
	}

	public List<Sjzdxx> getAllCustomerType() throws Exception {
		Sjzdfl sjzdfl = (Sjzdfl) this.sjzdflDao.findBySjzdflMc("企业类型-分类")
				.get(0);
		List allKhlx = this.sjzdxxDao.findByProperty("sjzdfl", sjzdfl);
		return allKhlx;
	}

	public List<Sjzdxx> getAllKhly() throws Exception {
		Sjzdfl sjzdfl = (Sjzdfl) this.sjzdflDao.findBySjzdflMc("信息来源-分类")
				.get(0);
		List allfl = this.sjzdxxDao.findByProperty("sjzdfl", sjzdfl);
		return allfl;
	}

	public List<Sjzdxx> getAllKhxz() throws Exception {
		Sjzdfl sjzdfl = (Sjzdfl) this.sjzdflDao.findBySjzdflMc("企业性质-类型")
				.get(0);
		List allxz = this.sjzdxxDao.findByProperty("sjzdfl", sjzdfl);
		return allxz;
	}

	public List<Sjzdxx> getAllKhyh() throws Exception {
		Sjzdfl sjzdfl = (Sjzdfl) this.sjzdflDao.findBySjzdflMc("开户银行-分类")
				.get(0);
		List allyh = this.sjzdxxDao.findByProperty("sjzdfl", sjzdfl);
		return allyh;
	}

	public void save(CustomerInfo customerInfo) {
		this.customerInfoDao.save(customerInfo);
	}

	@Override
	public CustomerInfo findCustomerName(String customerName) throws Exception {
		List<CustomerInfo> customerInfos = customerInfoDao
				.findByCustomerMc(customerName);
		if (customerInfos.size() != 0) {
			return customerInfos.get(0);
		} else {
			return null;
		}
	}

	
	@Override
	public List<CustomerInfo> findAllCustomerInfos() throws Exception {
		return customerInfoDao.findAll();
	}

	@Override
	public PageResult findPageAll(Page page) throws Exception {
		page = PageUtils.createPage(page, customerInfoDao.queryAllCount());
		List<CustomerInfo> customerInfos = customerInfoDao.findPageAll(page);
		PageResult result = new PageResult();
		result.setList(customerInfos);
		result.setPage(page);
		return result;
	}

	@Override
	public CustomerInfo findByCustomerInfoDatils(Integer customerId)
			throws Exception {
		return customerInfoDao.findById(customerId);
	}

	@Override
	public void updateCustomerInfo(CustomerInfo customerInfo) throws Exception {
		customerInfoDao.attachDirty(customerInfo);
		
	}

	@Override
	public void deleteCustomerInfo(Integer cuctomerId) throws Exception {
			CustomerInfo customerInfo  = customerInfoDao.findById(cuctomerId);
			if(customerInfo!=null){
				customerInfoDao.delete(customerInfo);
		}
	}

	@Override
	public List<CustomerInfo> queryByProperty(String proName, String value)
			throws Exception {
		return customerInfoDao.findByProperty(proName, value);
	}

	@Override
	public PageResult findByPropertyPage(String propertyName, Object value, Page page)
			throws Exception {
		page = PageUtils.createPage(page, customerInfoDao.findByPropertyPageSize(propertyName, value));
		List<CustomerInfo> customerInfos = customerInfoDao.findByPropertyPage(propertyName, value, page);
		PageResult result = new PageResult();
		result.setList(customerInfos);
		result.setPage(page);
		return result;
	}

	@Override
	public CustomerInfo queryCustomerInfoById(Integer id) throws Exception {
		return customerInfoDao.findById(id);
	}

	
}