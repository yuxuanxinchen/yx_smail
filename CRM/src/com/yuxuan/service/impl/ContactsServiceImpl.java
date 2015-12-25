package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.ContactsInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.ContactsInfo;
import com.yuxuan.service.ContactsService;

public class ContactsServiceImpl implements ContactsService {

	private ContactsInfoDao contactsInfoDao;

	public ContactsInfoDao getContactsInfoDao() {
		return contactsInfoDao;
	}

	public void setContactsInfoDao(ContactsInfoDao contactsInfoDao) {
		this.contactsInfoDao = contactsInfoDao;
	}

	
	@Override
	public void saveContacts(ContactsInfo contactsInfo) throws Exception {
		contactsInfoDao.save(contactsInfo);
	}

	@Override
	public List<ContactsInfo> queryAllContacts() {
		return contactsInfoDao.findAll();
	}

	@Override
	public PageResult queryContactsPage(Page page) throws Exception {
		page = PageUtils.createPage(page, contactsInfoDao.findContactsCount());
	    PageResult result = new PageResult();
	    result.setList(contactsInfoDao.findAll(page));
	    result.setPage(page);
		return result;
	}

	@Override
	public ContactsInfo queryContactsById(Integer contactsId) throws Exception {
		return contactsInfoDao.findById(contactsId);
	}

	@Override
	public void updataContacts(ContactsInfo contactsInfo) throws Exception {
		contactsInfoDao.attachDirty(contactsInfo);
	}

	@Override
	public void deleteContacts(Integer cId) throws Exception {
		contactsInfoDao.delete(contactsInfoDao.findById(cId));
	}

	@Override
	public PageResult queryConditionContactsPage(String propertyName,String value,Page page) throws Exception {
		page = PageUtils.createPage(page, contactsInfoDao.findContactsCount());
	    PageResult result = new PageResult();
	    result.setList(contactsInfoDao.findByProperty(propertyName, value,page));
	    result.setPage(page);
		return result;
	}

	
	
	
	
}
