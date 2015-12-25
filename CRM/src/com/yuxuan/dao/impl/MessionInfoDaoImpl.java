package com.yuxuan.dao.impl;

import com.yuxuan.dao.MessionInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.User;
import com.yuxuan.po.MessionInfo;

import java.util.Date;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 	* A data access object (DAO) providing persistence and search support for MessionInfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.MessionInfo
  * @author MyEclipse Persistence Tools 
 */
public class MessionInfoDaoImpl extends HibernateDaoSupport implements MessionInfoDao  {
	     private static final Logger log = LoggerFactory.getLogger(MessionInfoDaoImpl.class);
		//property constants
	public static final String MISSION_SUBJECT = "missionSubject";
	public static final String MISSION_PRECEDENCE = "missionPrecedence";
	public static final String MISSION_DESCRIPTION = "missionDescription";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.MessionInfoDao#save(com.yuxuan.po.MessionInfo) 
	 */
    @Override
	public void save(MessionInfo transientInstance) {
        log.debug("saving MessionInfo instance");
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
	 * @see com.yuxuan.dao.MessionInfoDao#delete(com.yuxuan.po.MessionInfo) 
	 */
	@Override
	public void delete(MessionInfo persistentInstance) {
        log.debug("deleting MessionInfo instance");
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
	 * @see com.yuxuan.dao.MessionInfoDao#findById(java.lang.Integer) 
	 */
    @Override
	public MessionInfo findById( java.lang.Integer id) {
        log.debug("getting MessionInfo instance with id: " + id);
        try {
            MessionInfo instance = (MessionInfo) getSession()
                    .get("com.yuxuan.po.MessionInfo", id);
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
	 * @see com.yuxuan.dao.MessionInfoDao#findByExample(com.yuxuan.po.MessionInfo) 
	 */
    @Override
	public List findByExample(MessionInfo instance) {
        log.debug("finding MessionInfo instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.MessionInfo")
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
	 * @see com.yuxuan.dao.MessionInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding MessionInfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from MessionInfo as model where model." 
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
	 * Title: findByMissionSubject
	 *Description: 
	 * @param missionSubject
	 * @return 
	 * @see com.yuxuan.dao.MessionInfoDao#findByMissionSubject(java.lang.Object) 
	 */
	@Override
	public List findByMissionSubject(Object missionSubject
	) {
		return findByProperty(MISSION_SUBJECT, missionSubject
		);
	}
	
	/**
	 * Title: findByMissionPrecedence
	 *Description: 
	 * @param missionPrecedence
	 * @return 
	 * @see com.yuxuan.dao.MessionInfoDao#findByMissionPrecedence(java.lang.Object) 
	 */
	@Override
	public List findByMissionPrecedence(Object missionPrecedence
	) {
		return findByProperty(MISSION_PRECEDENCE, missionPrecedence
		);
	}
	
	/**
	 * Title: findByMissionDescription
	 *Description: 
	 * @param missionDescription
	 * @return 
	 * @see com.yuxuan.dao.MessionInfoDao#findByMissionDescription(java.lang.Object) 
	 */
	@Override
	public List findByMissionDescription(Object missionDescription
	) {
		return findByProperty(MISSION_DESCRIPTION, missionDescription
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.MessionInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all MessionInfo instances");
		try {
			String queryString = "from MessionInfo";
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
	 * @see com.yuxuan.dao.MessionInfoDao#findAll() 
	 */
	@Override
	public List findAll(Page page) {
		log.debug("finding all MessionInfo instances");
		try {
			String queryString = "from MessionInfo";
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
	 * @see com.yuxuan.dao.MessionInfoDao#merge(com.yuxuan.po.MessionInfo) 
	 */
    @Override
	public MessionInfo merge(MessionInfo detachedInstance) {
        log.debug("merging MessionInfo instance");
        try {
            MessionInfo result = (MessionInfo) getSession()
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
	 * @see com.yuxuan.dao.MessionInfoDao#attachDirty(com.yuxuan.po.MessionInfo) 
	 */
    @Override
	public void attachDirty(MessionInfo instance) {
        log.debug("attaching dirty MessionInfo instance");
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
	 * @see com.yuxuan.dao.MessionInfoDao#attachClean(com.yuxuan.po.MessionInfo) 
	 */
    @Override
	public void attachClean(MessionInfo instance) {
        log.debug("attaching clean MessionInfo instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}