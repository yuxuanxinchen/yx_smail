package com.yuxuan.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.MenuInfoDao;
import com.yuxuan.po.MenuInfo;

/**
 	* A data access object (DAO) providing persistence and search support for MenuInfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.MenuInfo
  * @author MyEclipse Persistence Tools 
 */
public class MenuInfoDaoImpl extends HibernateDaoSupport implements MenuInfoDao  {
	     private static final Logger log = LoggerFactory.getLogger(MenuInfoDaoImpl.class);
		//property constants
	public static final String MENU_NAME = "menuName";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.MenuInfoDao#save(com.yuxuan.po.MenuInfo) 
	 */
    @Override
	public void save(MenuInfo transientInstance) {
        log.debug("saving MenuInfo instance");
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
	 * @see com.yuxuan.dao.MenuInfoDao#delete(com.yuxuan.po.MenuInfo) 
	 */
	@Override
	public void delete(MenuInfo persistentInstance) {
        log.debug("deleting MenuInfo instance");
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
	 * @see com.yuxuan.dao.MenuInfoDao#findById(java.lang.Integer) 
	 */
    @Override
	public MenuInfo findById( java.lang.Integer id) {
        log.debug("getting MenuInfo instance with id: " + id);
        try {
            MenuInfo instance = (MenuInfo) getSession()
                    .get("com.yuxuan.po.MenuInfo", id);
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
	 * @see com.yuxuan.dao.MenuInfoDao#findByExample(com.yuxuan.po.MenuInfo) 
	 */
    @Override
	public List findByExample(MenuInfo instance) {
        log.debug("finding MenuInfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.MenuInfo")
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
	 * @see com.yuxuan.dao.MenuInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding MenuInfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from MenuInfo as model where model." 
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
	 * Title: findByMenuName
	 *Description: 
	 * @param menuName
	 * @return 
	 * @see com.yuxuan.dao.MenuInfoDao#findByMenuName(java.lang.Object) 
	 */
	@Override
	public List findByMenuName(Object menuName
	) {
		return findByProperty(MENU_NAME, menuName
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.MenuInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all MenuInfo instances");
		try {
			String queryString = "from MenuInfo";
	         Query queryObject = getSession().createQuery(queryString);
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
	 * @see com.yuxuan.dao.MenuInfoDao#merge(com.yuxuan.po.MenuInfo) 
	 */
    @Override
	public MenuInfo merge(MenuInfo detachedInstance) {
        log.debug("merging MenuInfo instance");
        try {
            MenuInfo result = (MenuInfo) getSession()
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
	 * @see com.yuxuan.dao.MenuInfoDao#attachDirty(com.yuxuan.po.MenuInfo) 
	 */
    @Override
	public void attachDirty(MenuInfo instance) {
        log.debug("attaching dirty MenuInfo instance");
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
	 * @see com.yuxuan.dao.MenuInfoDao#attachClean(com.yuxuan.po.MenuInfo) 
	 */
    @Override
	public void attachClean(MenuInfo instance) {
        log.debug("attaching clean MenuInfo instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}