package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.ContactsInfo;

public interface ContactsInfoDao {

	public abstract void save(ContactsInfo transientInstance);

	public abstract void delete(ContactsInfo persistentInstance);

	public abstract ContactsInfo findById(java.lang.Integer id);

	public abstract List findByExample(ContactsInfo instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByContactsName(Object contactsName);

	public abstract List findByContactsSex(Object contactsSex);

	public abstract List findByContactsJob(Object contactsJob);

	public abstract List findByContactsOfficePhone(Object contactsOfficePhone);

	public abstract List findByContactsPhone(Object contactsPhone);

	public abstract List findByContactsEmail(Object contactsEmail);

	public abstract List findByContactsQq(Object contactsQq);

	public abstract List findByContactsDescription(Object contactsDescription);

	public abstract List findAll();

	public abstract ContactsInfo merge(ContactsInfo detachedInstance);

	public abstract void attachDirty(ContactsInfo instance);

	public abstract void attachClean(ContactsInfo instance);

	public List findAll(Page page);
	
	public int findEveryPageCount(Page page);
	
	public int findContactsCount() ;
	
	public List findByProperty(String propertyName, Object value,Page page);
}