package com.yuxuan.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.ProjectManagerDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.ProjectManager;

/**
 	* A data access object (DAO) providing persistence and search support for ProjectManager entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.yuxuan.po.ProjectManager
  * @author MyEclipse Persistence Tools 
 */
public class ProjectManagerDaoImpl extends HibernateDaoSupport implements ProjectManagerDao  {
	     private static final Logger log = LoggerFactory.getLogger(ProjectManagerDaoImpl.class);
		//property constants
	public static final String PROJECT_NAME = "projectName";
	public static final String PROJECT_STATUS = "projectStatus";
	public static final String PROJECT_SORT = "projectSort";
	public static final String PROJECT_RATE = "projectRate";
	public static final String PROJECT_DESCRIPTION = "projectDescription";
	public static final String PROJECT_SUMMARIZE = "projectSummarize";
	public static final String PROJECT_VERIFY = "projectVerify";
	public static final String PROJECT_BUSINESS = "projectBusiness";
	public static final String REMARKS1 = "remarks1";
	public static final String REMARKS2 = "remarks2";
	public static final String REMARKS3 = "remarks3";
	public static final String REMARKS4 = "remarks4";
	public static final String REMARKS5 = "remarks5";



    
    /**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.ProjectManagerDao#save(com.yuxuan.po.ProjectManager) 
	 */
    @Override
	public void save(ProjectManager transientInstance) {
        log.debug("saving ProjectManager instance");
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
	 * @see com.yuxuan.dao.ProjectManagerDao#delete(com.yuxuan.po.ProjectManager) 
	 */
	@Override
	public void delete(ProjectManager persistentInstance) {
        log.debug("deleting ProjectManager instance");
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findById(java.lang.Integer) 
	 */
    @Override
	public ProjectManager findById( java.lang.Integer id) {
        log.debug("getting ProjectManager instance with id: " + id);
        try {
            ProjectManager instance = (ProjectManager) getSession()
                    .get("com.yuxuan.po.ProjectManager", id);
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findByExample(com.yuxuan.po.ProjectManager) 
	 */
    @Override
	public List findByExample(ProjectManager instance) {
        log.debug("finding ProjectManager instance by example");
        try {
            List results = getSession()
                    .createCriteria("com.yuxuan.po.ProjectManager")
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
    @Override
	public List findByProperty(String propertyName, Object value) {
      log.debug("finding ProjectManager instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from ProjectManager as model where model." 
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
	 * Title: findByProjectName
	 *Description: 
	 * @param projectName
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectName(java.lang.Object) 
	 */
	@Override
	public List findByProjectName(Object projectName
	) {
		return findByProperty(PROJECT_NAME, projectName
		);
	}
	
	/**
	 * Title: findByProjectStatus
	 *Description: 
	 * @param projectStatus
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectStatus(java.lang.Object) 
	 */
	@Override
	public List findByProjectStatus(Object projectStatus
	) {
		return findByProperty(PROJECT_STATUS, projectStatus
		);
	}
	
	/**
	 * Title: findByProjectSort
	 *Description: 
	 * @param projectSort
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectSort(java.lang.Object) 
	 */
	@Override
	public List findByProjectSort(Object projectSort
	) {
		return findByProperty(PROJECT_SORT, projectSort
		);
	}
	
	/**
	 * Title: findByProjectRate
	 *Description: 
	 * @param projectRate
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectRate(java.lang.Object) 
	 */
	@Override
	public List findByProjectRate(Object projectRate
	) {
		return findByProperty(PROJECT_RATE, projectRate
		);
	}
	
	/**
	 * Title: findByProjectDescription
	 *Description: 
	 * @param projectDescription
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectDescription(java.lang.Object) 
	 */
	@Override
	public List findByProjectDescription(Object projectDescription
	) {
		return findByProperty(PROJECT_DESCRIPTION, projectDescription
		);
	}
	
	/**
	 * Title: findByProjectSummarize
	 *Description: 
	 * @param projectSummarize
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectSummarize(java.lang.Object) 
	 */
	@Override
	public List findByProjectSummarize(Object projectSummarize
	) {
		return findByProperty(PROJECT_SUMMARIZE, projectSummarize
		);
	}
	
	/**
	 * Title: findByProjectVerify
	 *Description: 
	 * @param projectVerify
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectVerify(java.lang.Object) 
	 */
	@Override
	public List findByProjectVerify(Object projectVerify
	) {
		return findByProperty(PROJECT_VERIFY, projectVerify
		);
	}
	
	/**
	 * Title: findByProjectBusiness
	 *Description: 
	 * @param projectBusiness
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByProjectBusiness(java.lang.Object) 
	 */
	@Override
	public List findByProjectBusiness(Object projectBusiness
	) {
		return findByProperty(PROJECT_BUSINESS, projectBusiness
		);
	}
	
	/**
	 * Title: findByRemarks1
	 *Description: 
	 * @param remarks1
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByRemarks1(java.lang.Object) 
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findByRemarks2(java.lang.Object) 
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findByRemarks3(java.lang.Object) 
	 */
	@Override
	public List findByRemarks3(Object remarks3
	) {
		return findByProperty(REMARKS3, remarks3
		);
	}
	
	/**
	 * Title: findByRemarks4
	 *Description: 
	 * @param remarks4
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByRemarks4(java.lang.Object) 
	 */
	@Override
	public List findByRemarks4(Object remarks4
	) {
		return findByProperty(REMARKS4, remarks4
		);
	}
	
	/**
	 * Title: findByRemarks5
	 *Description: 
	 * @param remarks5
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findByRemarks5(java.lang.Object) 
	 */
	@Override
	public List findByRemarks5(Object remarks5
	) {
		return findByProperty(REMARKS5, remarks5
		);
	}
	

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.ProjectManagerDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all ProjectManager instances");
		try {
			String queryString = "from ProjectManager";
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
	 * @see com.yuxuan.dao.ProjectManagerDao#findAll() 
	 */
	@Override
	public List findAllVerify(Page page) {
		log.debug("finding all ProjectManager instances");
		try {
			String queryString = "from ProjectManager p WHERE p.projectVerify = '1'";
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
	public List findAllProcess(Page page) {
		log.debug("finding all ProjectManager instances");
		try {
			String queryString = "from ProjectManager p ORDER BY p.projectRate ASC";
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
	public List findAllSummarize(Page page) {
		log.debug("finding all ProjectManager instances");
		try {
			String queryString = "from ProjectManager p WHERE p.projectVerify = '2'";
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
	public List findAllBusiness(Page page) {
		log.debug("finding all ProjectManager instances");
		try {
			String queryString = "from ProjectManager p ORDER BY p.projectBusiness";
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
	 * @see com.yuxuan.dao.ProjectManagerDao#merge(com.yuxuan.po.ProjectManager) 
	 */
    @Override
	public ProjectManager merge(ProjectManager detachedInstance) {
        log.debug("merging ProjectManager instance");
        try {
            ProjectManager result = (ProjectManager) getSession()
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
	 * @see com.yuxuan.dao.ProjectManagerDao#attachDirty(com.yuxuan.po.ProjectManager) 
	 */
    @Override
	public void attachDirty(ProjectManager instance) {
        log.debug("attaching dirty ProjectManager instance");
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
	 * @see com.yuxuan.dao.ProjectManagerDao#attachClean(com.yuxuan.po.ProjectManager) 
	 */
    @Override
	public void attachClean(ProjectManager instance) {
        log.debug("attaching clean ProjectManager instance");
        try {
                      	getSession().lock(instance, LockMode.NONE);
                        log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}