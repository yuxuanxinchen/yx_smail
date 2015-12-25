package com.yuxuan.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.RoleRelationDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.RoleRelation;

/**
 	* A data access object (DAO) providing persistence and search support for RoleRelation entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.RoleRelation
  * @author MyEclipse Persistence Tools 
 */
public class RoleRelationDaoImpl extends HibernateDaoSupport implements RoleRelationDao  {
	     private static final Logger log = LoggerFactory.getLogger(RoleRelationDaoImpl.class);
		//property constants
	public static final String ROLE_RELACTION_ACCESS = "roleRelactionAccess";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.RoleRelationDao#save(com.yuxuan.po.RoleRelation) 
	 */
    @Override
	public void save(RoleRelation transientInstance) {
        log.debug("saving RoleRelation instance");
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
	 * @see com.yuxuan.dao.RoleRelationDao#delete(com.yuxuan.po.RoleRelation) 
	 */
	@Override
	public void delete(RoleRelation persistentInstance) {
        log.debug("deleting RoleRelation instance");
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
	 * @see com.yuxuan.dao.RoleRelationDao#findById(java.lang.Integer) 
	 */
    @Override
	public RoleRelation findById( java.lang.Integer id) {
        log.debug("getting RoleRelation instance with id: " + id);
        try {
            RoleRelation instance = (RoleRelation) getSession()
                    .get("com.yuxuan.po.RoleRelation", id);
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
	 * @see com.yuxuan.dao.RoleRelationDao#findByExample(com.yuxuan.po.RoleRelation) 
	 */
    @Override
	public List findByExample(RoleRelation instance) {
        log.debug("finding RoleRelation instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.RoleRelation")
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
	 * @see com.yuxuan.dao.RoleRelationDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding RoleRelation instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from RoleRelation as model where model." 
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
	 * Title: findByRoleRelactionAccess
	 *Description: 
	 * @param roleRelactionAccess
	 * @return 
	 * @see com.yuxuan.dao.RoleRelationDao#findByRoleRelactionAccess(java.lang.Object) 
	 */
	@Override
	public List findByRoleRelactionAccess(Object roleRelactionAccess
	) {
		return findByProperty(ROLE_RELACTION_ACCESS, roleRelactionAccess
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.RoleRelationDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all RoleRelation instances");
		try {
			String queryString = "from RoleRelation";
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
	 * @see com.yuxuan.dao.RoleRelationDao#merge(com.yuxuan.po.RoleRelation) 
	 */
    @Override
	public RoleRelation merge(RoleRelation detachedInstance) {
        log.debug("merging RoleRelation instance");
        try {
            RoleRelation result = (RoleRelation) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
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
	 * Title: attachDirty
	 *Description: 
	 * @param instance 
	 * @see com.yuxuan.dao.RoleRelationDao#attachDirty(com.yuxuan.po.RoleRelation) 
	 */
    @Override
	public void attachDirty(RoleRelation instance) {
        log.debug("attaching dirty RoleRelation instance");
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
	 * @see com.yuxuan.dao.RoleRelationDao#attachClean(com.yuxuan.po.RoleRelation) 
	 */
    @Override
	public void attachClean(RoleRelation instance) {
        log.debug("attaching clean RoleRelation instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}