package com.yuxuan.dao.impl;

import com.yuxuan.dao.UserDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.User;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 	* A data access object (DAO) providing persistence and search support for User entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.User
  * @author MyEclipse Persistence Tools 
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao  {
	     private static final Logger log = LoggerFactory.getLogger(UserDaoImpl.class);
		//property constants
	public static final String USER_NAME = "userName";
	public static final String USER_ADMIN_NAME = "userAdminName";
	public static final String USER_PASSWORD = "userPassword";
	public static final String USER_PHONE = "userPhone";
	public static final String USER_EMAIL = "userEmail";
	public static final String USER_PARENT_ID = "userParentId";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.UserDao#save(com.yuxuan.po.User) 
	 */
    @Override
	public void save(User transientInstance) {
        log.debug("saving User instance");
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
	 * @see com.yuxuan.dao.UserDao#delete(com.yuxuan.po.User) 
	 */
	@Override
	public void delete(User persistentInstance) {
        log.debug("deleting User instance");
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
	 * @see com.yuxuan.dao.UserDao#findById(java.lang.Integer) 
	 */
    @Override
	public User findById( java.lang.Integer id) {
        log.debug("getting User instance with id: " + id);
        try {
            User instance = (User) getSession()
                    .get("com.yuxuan.po.User", id);
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
	 * @see com.yuxuan.dao.UserDao#findByExample(com.yuxuan.po.User) 
	 */
    @Override
	public List findByExample(User instance) {
        log.debug("finding User instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.User")
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
	 * @see com.yuxuan.dao.UserDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding User instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from User as model where model." 
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
	 * Title: findByUserName
	 *Description: 
	 * @param userName
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserName(java.lang.Object) 
	 */
	@Override
	public List findByUserName(Object userName
	) {
		return findByProperty(USER_NAME, userName
		);
	}
	
	/**
	 * Title: findByUserAdminName
	 *Description: 
	 * @param userAdminName
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserAdminName(java.lang.Object) 
	 */
	@Override
	public List findByUserAdminName(Object userAdminName
	) {
		return findByProperty(USER_ADMIN_NAME, userAdminName
		);
	}
	
	/**
	 * Title: findByUserPassword
	 *Description: 
	 * @param userPassword
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserPassword(java.lang.Object) 
	 */
	@Override
	public List findByUserPassword(Object userPassword
	) {
		return findByProperty(USER_PASSWORD, userPassword
		);
	}
	
	/**
	 * Title: findByUserPhone
	 *Description: 
	 * @param userPhone
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserPhone(java.lang.Object) 
	 */
	@Override
	public List findByUserPhone(Object userPhone
	) {
		return findByProperty(USER_PHONE, userPhone
		);
	}
	
	/**
	 * Title: findByUserEmail
	 *Description: 
	 * @param userEmail
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserEmail(java.lang.Object) 
	 */
	@Override
	public List findByUserEmail(Object userEmail
	) {
		return findByProperty(USER_EMAIL, userEmail
		);
	}
	
	/**
	 * Title: findByUserParentId
	 *Description: 
	 * @param userParentId
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findByUserParentId(java.lang.Object) 
	 */
	@Override
	public List findByUserParentId(Object userParentId
	) {
		return findByProperty(USER_PARENT_ID, userParentId
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.UserDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all User instances");
		try {
			String queryString = "from User";
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
	 * @see com.yuxuan.dao.UserDao#merge(com.yuxuan.po.User) 
	 */
    @Override
	public User merge(User detachedInstance) {
        log.debug("merging User instance");
        try {
            User result = (User) getSession()
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
	 * @see com.yuxuan.dao.UserDao#attachDirty(com.yuxuan.po.User) 
	 */
    @Override
	public void attachDirty(User instance) {
        log.debug("attaching dirty User instance");
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
	 * @see com.yuxuan.dao.UserDao#attachClean(com.yuxuan.po.User) 
	 */
    @Override
	public void attachClean(User instance) {
        log.debug("attaching clean User instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    
    @Override
	public List findAllPage(Page page) {
		log.debug("finding all user instances");
		try {
			String queryString = "from User";
	         Query queryObject = getSession().createQuery(queryString);
	         queryObject.setFirstResult(page.getBeginIndex());
	         queryObject.setMaxResults(page.getEveryPage());
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
    
}