package com.yuxuan.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.ContactsInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.ContactsInfo;

/**
 	* A data access object (DAO) providing persistence and search support for ContactsInfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.ContactsInfo
  * @author MyEclipse Persistence Tools 
 */
public class ContactsInfoDaoImpl extends HibernateDaoSupport implements ContactsInfoDao  {
	     private static final Logger log = LoggerFactory.getLogger(ContactsInfoDaoImpl.class);
		//property constants
	public static final String CONTACTS_NAME = "contactsName";
	public static final String CONTACTS_SEX = "contactsSex";
	public static final String CONTACTS_JOB = "contactsJob";
	public static final String CONTACTS_OFFICE_PHONE = "contactsOfficePhone";
	public static final String CONTACTS_PHONE = "contactsPhone";
	public static final String CONTACTS_EMAIL = "contactsEmail";
	public static final String CONTACTS_QQ = "contactsQq";
	public static final String CONTACTS_DESCRIPTION = "contactsDescription";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.ContactsInfoDao#save(com.yuxuan.po.ContactsInfo) 
	 */
    @Override
	public void save(ContactsInfo transientInstance) {
        log.debug("saving ContactsInfo instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	/**
	 * Title: delete
	 *Description: 
	 * @param persistentInstance 
	 * @see com.yuxuan.dao.ContactsInfoDao#delete(com.yuxuan.po.ContactsInfo) 
	 */
	@Override
	public void delete(ContactsInfo persistentInstance) {
        log.debug("deleting ContactsInfo instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    /**
	 * Title: findById
	 *Description: 
	 * @param id
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findById(java.lang.Integer) 
	 */
    @Override
	public ContactsInfo findById( java.lang.Integer id) {
        log.debug("getting ContactsInfo instance with id: " + id);
        try {
            ContactsInfo instance = (ContactsInfo) getSession()
                    .get("com.yuxuan.po.ContactsInfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    /**
	 * Title: findByExample
	 *Description: 
	 * @param instance
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByExample(com.yuxuan.po.ContactsInfo) 
	 */
    @Override
	public List findByExample(ContactsInfo instance) {
        log.debug("finding ContactsInfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.ContactsInfo")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    /**
	 * Title: findByProperty
	 *Description: 
	 * @param propertyName
	 * @param value
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding ContactsInfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from ContactsInfo as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}
    
    @Override
   	public List findByProperty(String propertyName, Object value,Page page) {
         log.debug("finding ContactsInfo instance with property: " + propertyName
               + ", value: " + value);
         try {
            String queryString = "from ContactsInfo as model where model." 
            						+ propertyName + " like ?";
            Query queryObject = getSession().createQuery(queryString);
   		 queryObject.setParameter(0, "%" +value +"%");
   		 queryObject.setFirstResult(page.getBeginIndex());
   		 queryObject.setMaxResults(page.getEveryPage());
   		 return queryObject.list();
         } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
         }
   	}

	/**
	 * Title: findByContactsName
	 *Description: 
	 * @param contactsName
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsName(java.lang.Object) 
	 */
	@Override
	public List findByContactsName(Object contactsName
	) {
		return findByProperty(CONTACTS_NAME, contactsName
		);
	}
	
	/**
	 * Title: findByContactsSex
	 *Description: 
	 * @param contactsSex
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsSex(java.lang.Object) 
	 */
	@Override
	public List findByContactsSex(Object contactsSex
	) {
		return findByProperty(CONTACTS_SEX, contactsSex
		);
	}
	
	/**
	 * Title: findByContactsJob
	 *Description: 
	 * @param contactsJob
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsJob(java.lang.Object) 
	 */
	@Override
	public List findByContactsJob(Object contactsJob
	) {
		return findByProperty(CONTACTS_JOB, contactsJob
		);
	}
	
	/**
	 * Title: findByContactsOfficePhone
	 *Description: 
	 * @param contactsOfficePhone
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsOfficePhone(java.lang.Object) 
	 */
	@Override
	public List findByContactsOfficePhone(Object contactsOfficePhone
	) {
		return findByProperty(CONTACTS_OFFICE_PHONE, contactsOfficePhone
		);
	}
	
	/**
	 * Title: findByContactsPhone
	 *Description: 
	 * @param contactsPhone
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsPhone(java.lang.Object) 
	 */
	@Override
	public List findByContactsPhone(Object contactsPhone
	) {
		return findByProperty(CONTACTS_PHONE, contactsPhone
		);
	}
	
	/**
	 * Title: findByContactsEmail
	 *Description: 
	 * @param contactsEmail
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsEmail(java.lang.Object) 
	 */
	@Override
	public List findByContactsEmail(Object contactsEmail
	) {
		return findByProperty(CONTACTS_EMAIL, contactsEmail
		);
	}
	
	/**
	 * Title: findByContactsQq
	 *Description: 
	 * @param contactsQq
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsQq(java.lang.Object) 
	 */
	@Override
	public List findByContactsQq(Object contactsQq
	) {
		return findByProperty(CONTACTS_QQ, contactsQq
		);
	}
	
	/**
	 * Title: findByContactsDescription
	 *Description: 
	 * @param contactsDescription
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findByContactsDescription(java.lang.Object) 
	 */
	@Override
	public List findByContactsDescription(Object contactsDescription
	) {
		return findByProperty(CONTACTS_DESCRIPTION, contactsDescription
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all ContactsInfo instances");
		try {
			String queryString = "from ContactsInfo";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
	@Override
	public List findAll(Page page) {
		log.debug("finding all ContactsInfo instances");
		try {
			String queryString = "from ContactsInfo";
	         Query queryObject = getSession().createQuery(queryString);
	         queryObject.setFirstResult(page.getBeginIndex());
	         queryObject.setMaxResults(page.getEveryPage());
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	@Override
	public int findEveryPageCount(Page page) {
		log.debug("finding all ContactsInfo instances");
		try {
			String queryString = "from ContactsInfo";
	         Query queryObject = getSession().createQuery(queryString);
	         queryObject.setFirstResult(page.getBeginIndex());
	         queryObject.setMaxResults(page.getEveryPage());
			 return queryObject.list().size();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	public int findContactsCount() {
		log.debug("finding all ContactsInfo instances");
		try {
			String queryString = "from ContactsInfo";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list().size();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    /**
	 * Title: merge
	 *Description: 
	 * @param detachedInstance
	 * @return 
	 * @see com.yuxuan.dao.ContactsInfoDao#merge(com.yuxuan.po.ContactsInfo) 
	 */
    @Override
	public ContactsInfo merge(ContactsInfo detachedInstance) {
        log.debug("merging ContactsInfo instance");
        try {
            ContactsInfo result = (ContactsInfo) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    /**
	 * Title: attachDirty
	 *Description: 
	 * @param instance 
	 * @see com.yuxuan.dao.ContactsInfoDao#attachDirty(com.yuxuan.po.ContactsInfo) 
	 */
    @Override
	public void attachDirty(ContactsInfo instance) {
        log.debug("attaching dirty ContactsInfo instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    /**
	 * Title: attachClean
	 *Description: 
	 * @param instance 
	 * @see com.yuxuan.dao.ContactsInfoDao#attachClean(com.yuxuan.po.ContactsInfo) 
	 */
    @Override
	public void attachClean(ContactsInfo instance) {
        log.debug("attaching clean ContactsInfo instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}