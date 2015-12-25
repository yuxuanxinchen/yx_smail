package com.yuxuan.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.ScheduleDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.Schedule;

/**
 	* A data access object (DAO) providing persistence and search support for Schedule entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.Schedule
  * @author MyEclipse Persistence Tools 
 */
public class ScheduleDaoImpl extends HibernateDaoSupport implements ScheduleDao  {
	     private static final Logger log = LoggerFactory.getLogger(ScheduleDaoImpl.class);
		//property constants
	public static final String SCHEDULE_NAME = "scheduleName";
	public static final String SCHEDULE_STATUS = "scheduleStatus";
	public static final String SCHEDULE_DESCRIPTION = "scheduleDescription";
	public static final String REMARKS1 = "remarks1";
	public static final String REMARKS2 = "remarks2";
	public static final String REMARKS3 = "remarks3";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.ScheduleDao#save(com.yuxuan.po.Schedule) 
	 */
    @Override
	public void save(Schedule transientInstance) {
        log.debug("saving Schedule instance");
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
	 * @see com.yuxuan.dao.ScheduleDao#delete(com.yuxuan.po.Schedule) 
	 */
	@Override
	public void delete(Schedule persistentInstance) {
        log.debug("deleting Schedule instance");
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
	 * @see com.yuxuan.dao.ScheduleDao#findById(java.lang.Integer) 
	 */
    @Override
	public Schedule findById( java.lang.Integer id) {
        log.debug("getting Schedule instance with id: " + id);
        try {
            Schedule instance = (Schedule) getSession()
                    .get("com.yuxuan.po.Schedule", id);
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
	 * @see com.yuxuan.dao.ScheduleDao#findByExample(com.yuxuan.po.Schedule) 
	 */
    @Override
	public List findByExample(Schedule instance) {
        log.debug("finding Schedule instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.Schedule")
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
	 * @see com.yuxuan.dao.ScheduleDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding Schedule instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Schedule as model where model." 
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
	 * Title: findByScheduleName
	 *Description: 
	 * @param scheduleName
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByScheduleName(java.lang.Object) 
	 */
	@Override
	public List findByScheduleName(Object scheduleName
	) {
		return findByProperty(SCHEDULE_NAME, scheduleName
		);
	}
	
	/**
	 * Title: findByScheduleStatus
	 *Description: 
	 * @param scheduleStatus
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByScheduleStatus(java.lang.Object) 
	 */
	@Override
	public List findByScheduleStatus(Object scheduleStatus
	) {
		return findByProperty(SCHEDULE_STATUS, scheduleStatus
		);
	}
	
	/**
	 * Title: findByScheduleDescription
	 *Description: 
	 * @param scheduleDescription
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByScheduleDescription(java.lang.Object) 
	 */
	@Override
	public List findByScheduleDescription(Object scheduleDescription
	) {
		return findByProperty(SCHEDULE_DESCRIPTION, scheduleDescription
		);
	}
	
	/**
	 * Title: findByRemarks1
	 *Description: 
	 * @param remarks1
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByRemarks1(java.lang.Object) 
	 */
	@Override
	public List findByRemarks1(Object remarks1
	) {
		return findByProperty(REMARKS1, remarks1
		);
	}
	
	/**
	 * Title: findByRemarks2
	 *Description: 
	 * @param remarks2
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByRemarks2(java.lang.Object) 
	 */
	@Override
	public List findByRemarks2(Object remarks2
	) {
		return findByProperty(REMARKS2, remarks2
		);
	}
	
	/**
	 * Title: findByRemarks3
	 *Description: 
	 * @param remarks3
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findByRemarks3(java.lang.Object) 
	 */
	@Override
	public List findByRemarks3(Object remarks3
	) {
		return findByProperty(REMARKS3, remarks3
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.ScheduleDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all Schedule instances");
		try {
			String queryString = "from Schedule";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	@Override
	public List findAll(Page page) {
		log.debug("finding all Schedule instances");
		try {
			String queryString = "from Schedule";
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
	 * @see com.yuxuan.dao.ScheduleDao#merge(com.yuxuan.po.Schedule) 
	 */
    @Override
	public Schedule merge(Schedule detachedInstance) {
        log.debug("merging Schedule instance");
        try {
            Schedule result = (Schedule) getSession()
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
	 * @see com.yuxuan.dao.ScheduleDao#attachDirty(com.yuxuan.po.Schedule) 
	 */
    @Override
	public void attachDirty(Schedule instance) {
        log.debug("attaching dirty Schedule instance");
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
	 * @see com.yuxuan.dao.ScheduleDao#attachClean(com.yuxuan.po.Schedule) 
	 */
    @Override
	public void attachClean(Schedule instance) {
        log.debug("attaching clean Schedule instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}