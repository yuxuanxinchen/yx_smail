package com.yuxuan.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.RoleInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.RoleInfo;

/**
 	* A data access object (DAO) providing persistence and search support for RoleInfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.RoleInfo
  * @author MyEclipse Persistence Tools 
 */
public class RoleInfoDaoImpl extends HibernateDaoSupport implements RoleInfoDao  {
	     private static final Logger log = LoggerFactory.getLogger(RoleInfoDaoImpl.class);
		//property constants
	public static final String ROLE_NAME = "roleName";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.RoleInfoDao#save(com.yuxuan.po.RoleInfo) 
	 */
    @Override
	public void save(RoleInfo transientInstance) {
        log.debug("saving RoleInfo instance");
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
	 * @see com.yuxuan.dao.RoleInfoDao#delete(com.yuxuan.po.RoleInfo) 
	 */
	@Override
	public void delete(RoleInfo persistentInstance) {
        log.debug("deleting RoleInfo instance");
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
	 * @see com.yuxuan.dao.RoleInfoDao#findById(java.lang.Integer) 
	 */
    @Override
	public RoleInfo findById( java.lang.Integer id) {
        log.debug("getting RoleInfo instance with id: " + id);
        try {
            RoleInfo instance = (RoleInfo) getSession()
                    .get("com.yuxuan.po.RoleInfo", id);
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
	 * @see com.yuxuan.dao.RoleInfoDao#findByExample(com.yuxuan.po.RoleInfo) 
	 */
    @Override
	public List findByExample(RoleInfo instance) {
        log.debug("finding RoleInfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.RoleInfo")
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
	 * @see com.yuxuan.dao.RoleInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding RoleInfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from RoleInfo as model where model." 
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
   	public List findByPropertyPage(String propertyName, Object value,Page page) {
         log.debug("finding RoleInfo instance with property: " + propertyName
               + ", value: " + value);
         try {
            String queryString = "from RoleInfo as model where model." 
            						+ propertyName + " like ?";
            Query queryObject = getSession().createQuery(queryString);
   		 queryObject.setParameter(0, "%"+value+"%");
   		 queryObject.setFirstResult(page.getBeginIndex());
   		 queryObject.setMaxResults(page.getEveryPage());
   		 return queryObject.list();
         } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
         }
   	}

	/**
	 * Title: findByRoleName
	 *Description: 
	 * @param roleName
	 * @return 
	 * @see com.yuxuan.dao.RoleInfoDao#findByRoleName(java.lang.Object) 
	 */
	@Override
	public List findByRoleName(Object roleName
	) {
		return findByProperty(ROLE_NAME, roleName
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.RoleInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all RoleInfo instances");
		try {
			String queryString = "from RoleInfo";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.RoleInfoDao#findAll() 
	 */
	@Override
	public List findAllPage(Page page) {
		log.debug("finding all RoleInfo instances");
		try {
			String queryString = "from RoleInfo";
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
	 * @see com.yuxuan.dao.RoleInfoDao#merge(com.yuxuan.po.RoleInfo) 
	 */
    @Override
	public RoleInfo merge(RoleInfo detachedInstance) {
        log.debug("merging RoleInfo instance");
        try {
            RoleInfo result = (RoleInfo) getSession()
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
	 * @see com.yuxuan.dao.RoleInfoDao#attachDirty(com.yuxuan.po.RoleInfo) 
	 */
    @Override
	public void attachDirty(RoleInfo instance) {
        log.debug("attaching dirty RoleInfo instance");
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
	 * @see com.yuxuan.dao.RoleInfoDao#attachClean(com.yuxuan.po.RoleInfo) 
	 */
    @Override
	public void attachClean(RoleInfo instance) {
        log.debug("attaching clean RoleInfo instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}