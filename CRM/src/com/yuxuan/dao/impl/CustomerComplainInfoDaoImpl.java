package com.yuxuan.dao.impl;

import com.yuxuan.dao.CustomerComplainInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.CustomerComplainInfo;
import com.yuxuan.po.User;

import java.util.Date;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 	* A data access object (DAO) providing persistence and search support for CustomerComplainInfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.CustomerComplainInfo
  * @author MyEclipse Persistence Tools 
 */
public class CustomerComplainInfoDaoImpl extends HibernateDaoSupport implements CustomerComplainInfoDao  {
	     private static final Logger log = LoggerFactory.getLogger(CustomerComplainInfoDaoImpl.class);
		//property constants
	public static final String COMPLAIN_PERSION = "complainPersion";
	public static final String COMPLAIN_THEME = "complainTheme";
	public static final String COMPLAIN_TEXT = "complainText";
	public static final String COMPLAIN_MANAGE = "complainManage";
	public static final String COMPLAIN_REMARKS = "complainRemarks";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#save(com.yuxuan.po.CustomerComplainInfo) 
	 */
    @Override
	public void save(CustomerComplainInfo transientInstance) {
        log.debug("saving CustomerComplainInfo instance");
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#delete(com.yuxuan.po.CustomerComplainInfo) 
	 */
	@Override
	public void delete(CustomerComplainInfo persistentInstance) {
        log.debug("deleting CustomerComplainInfo instance");
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findById(java.lang.Integer) 
	 */
    @Override
	public CustomerComplainInfo findById( java.lang.Integer id) {
        log.debug("getting CustomerComplainInfo instance with id: " + id);
        try {
            CustomerComplainInfo instance = (CustomerComplainInfo) getSession()
                    .get("com.yuxuan.po.CustomerComplainInfo", id);
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByExample(com.yuxuan.po.CustomerComplainInfo) 
	 */
    @Override
	public List findByExample(CustomerComplainInfo instance) {
        log.debug("finding CustomerComplainInfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.CustomerComplainInfo")
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding CustomerComplainInfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from CustomerComplainInfo as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	/**
	 * Title: findByComplainPersion
	 *Description: 
	 * @param complainPersion
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByComplainPersion(java.lang.Object) 
	 */
	@Override
	public List findByComplainPersion(Object complainPersion
	) {
		return findByProperty(COMPLAIN_PERSION, complainPersion
		);
	}
	
	/**
	 * Title: findByComplainTheme
	 *Description: 
	 * @param complainTheme
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByComplainTheme(java.lang.Object) 
	 */
	@Override
	public List findByComplainTheme(Object complainTheme
	) {
		return findByProperty(COMPLAIN_THEME, complainTheme
		);
	}
	
	/**
	 * Title: findByComplainText
	 *Description: 
	 * @param complainText
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByComplainText(java.lang.Object) 
	 */
	@Override
	public List findByComplainText(Object complainText
	) {
		return findByProperty(COMPLAIN_TEXT, complainText
		);
	}
	
	/**
	 * Title: findByComplainManage
	 *Description: 
	 * @param complainManage
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByComplainManage(java.lang.Object) 
	 */
	@Override
	public List findByComplainManage(Object complainManage
	) {
		return findByProperty(COMPLAIN_MANAGE, complainManage
		);
	}
	
	/**
	 * Title: findByComplainRemarks
	 *Description: 
	 * @param complainRemarks
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findByComplainRemarks(java.lang.Object) 
	 */
	@Override
	public List findByComplainRemarks(Object complainRemarks
	) {
		return findByProperty(COMPLAIN_REMARKS, complainRemarks
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all CustomerComplainInfo instances");
		try {
			String queryString = "from CustomerComplainInfo";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
	@Override
	public List findAll(Page page) {
		log.debug("finding all CustomerComplainInfo instances");
		try {
			String queryString = "from CustomerComplainInfo";
	         Query queryObject = getSession().createQuery(queryString);
	         queryObject.setFirstResult(page.getBeginIndex());
	         queryObject.setMaxResults(page.getEveryPage());
			 return queryObject.list();
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#merge(com.yuxuan.po.CustomerComplainInfo) 
	 */
    @Override
	public CustomerComplainInfo merge(CustomerComplainInfo detachedInstance) {
        log.debug("merging CustomerComplainInfo instance");
        try {
            CustomerComplainInfo result = (CustomerComplainInfo) getSession()
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#attachDirty(com.yuxuan.po.CustomerComplainInfo) 
	 */
    @Override
	public void attachDirty(CustomerComplainInfo instance) {
        log.debug("attaching dirty CustomerComplainInfo instance");
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
	 * @see com.yuxuan.dao.CustomerComplainInfoDao#attachClean(com.yuxuan.po.CustomerComplainInfo) 
	 */
    @Override
	public void attachClean(CustomerComplainInfo instance) {
        log.debug("attaching clean CustomerComplainInfo instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}