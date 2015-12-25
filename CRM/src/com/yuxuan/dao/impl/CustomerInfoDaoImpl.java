package com.yuxuan.dao.impl;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.yuxuan.dao.CustomerInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.po.CustomerInfo;

public class CustomerInfoDaoImpl extends HibernateDaoSupport implements
		CustomerInfoDao {
	private static final Logger log = LoggerFactory
			.getLogger(CustomerInfoDaoImpl.class);
	public static final String CUSTOMER_MC = "customerMc";
	public static final String CUSTOMER_WZ = "customerWz";
	public static final String CUSTOMER_DH = "customerDh";
	public static final String CUSTOMER_DJR = "customerDjr";
	public static final String CUSTOMER_ADDRESS = "customerAddress";
	public static final String CUSTOMER_SSSF = "customerSssf";
	public static final String CUSTOMER_SSCS = "customerSscs";
	public static final String CUSTOMER_YB = "customerYb";
	public static final String CUSTOMER_YH = "customerYh";
	public static final String CUSTOMER_YHZH = "customerYhzh";
	public static final String CUSTOMER_BZ = "customerBz";

	/**
	 * Title: save
	 *Description: 
	 * @param transientInstance 
	 * @see com.yuxuan.dao.CustomerInfoDao#save(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public void save(CustomerInfo transientInstance) {
		log.debug("saving CustomerInfo instance");
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
	 * @see com.yuxuan.dao.CustomerInfoDao#delete(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public void delete(CustomerInfo persistentInstance) {
		log.debug("deleting CustomerInfo instance");
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
	 * @see com.yuxuan.dao.CustomerInfoDao#findById(java.lang.Integer) 
	 */
	@Override
	public CustomerInfo findById(Integer id) {
		log.debug("getting CustomerInfo instance with id: " + id);
		try {
			return (CustomerInfo) getSession().get(
					"com.yuxuan.po.CustomerInfo", id);
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
	 * @see com.yuxuan.dao.CustomerInfoDao#findByExample(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public List findByExample(CustomerInfo instance) {
		log.debug("finding CustomerInfo instance by example");
		try {
			List results = getSession()
					.createCriteria("com.yuxuan.po.CustomerInfo")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
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
	 * @see com.yuxuan.dao.CustomerInfoDao#findByProperty(java.lang.String, java.lang.Object) 
	 */
	@Override
	public List findByProperty(String propertyName, Object value) {
		log.debug("finding CustomerInfo instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from CustomerInfo as model where model."
					+ propertyName + "= ? ";
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
		log.debug("finding CustomerInfo instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from CustomerInfo as model where model."
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

	
	@Override
	public int findByPropertyPageSize(String propertyName, Object value) {
		log.debug("finding CustomerInfo instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from CustomerInfo as model where model."
					+ propertyName + " like ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, "%"+value+"%");
			return queryObject.list().size();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
	
	
	/**
	 * Title: findByCustomerMc
	 *Description: 
	 * @param customerMc
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerMc(java.lang.Object) 
	 */
	@Override
	public List findByCustomerMc(Object customerMc) {
		return findByProperty("customerMc", customerMc);
	}

	/**
	 * Title: findByCustomerWz
	 *Description: 
	 * @param customerWz
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerWz(java.lang.Object) 
	 */
	@Override
	public List findByCustomerWz(Object customerWz) {
		return findByProperty("customerWz", customerWz);
	}

	/**
	 * Title: findByCustomerDh
	 *Description: 
	 * @param customerDh
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerDh(java.lang.Object) 
	 */
	@Override
	public List findByCustomerDh(Object customerDh) {
		return findByProperty("customerDh", customerDh);
	}

	/**
	 * Title: findByCustomerDjr
	 *Description: 
	 * @param customerDjr
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerDjr(java.lang.Object) 
	 */
	@Override
	public List findByCustomerDjr(Object customerDjr) {
		return findByProperty("customerDjr", customerDjr);
	}

	/**
	 * Title: findByCustomerAddress
	 *Description: 
	 * @param customerAddress
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerAddress(java.lang.Object) 
	 */
	@Override
	public List findByCustomerAddress(Object customerAddress) {
		return findByProperty("customerAddress", customerAddress);
	}

	/**
	 * Title: findByCustomerSssf
	 *Description: 
	 * @param customerSssf
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerSssf(java.lang.Object) 
	 */
	@Override
	public List findByCustomerSssf(Object customerSssf) {
		return findByProperty("customerSssf", customerSssf);
	}

	/**
	 * Title: findByCustomerSscs
	 *Description: 
	 * @param customerSscs
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerSscs(java.lang.Object) 
	 */
	@Override
	public List findByCustomerSscs(Object customerSscs) {
		return findByProperty("customerSscs", customerSscs);
	}

	/**
	 * Title: findByCustomerYb
	 *Description: 
	 * @param customerYb
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerYb(java.lang.Object) 
	 */
	@Override
	public List findByCustomerYb(Object customerYb) {
		return findByProperty("customerYb", customerYb);
	}

	/**
	 * Title: findByCustomerYh
	 *Description: 
	 * @param customerYh
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerYh(java.lang.Object) 
	 */
	@Override
	public List findByCustomerYh(Object customerYh) {
		return findByProperty("customerYh", customerYh);
	}

	/**
	 * Title: findByCustomerYhzh
	 *Description: 
	 * @param customerYhzh
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerYhzh(java.lang.Object) 
	 */
	@Override
	public List findByCustomerYhzh(Object customerYhzh) {
		return findByProperty("customerYhzh", customerYhzh);
	}

	/**
	 * Title: findByCustomerBz
	 *Description: 
	 * @param customerBz
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findByCustomerBz(java.lang.Object) 
	 */
	@Override
	public List findByCustomerBz(Object customerBz) {
		return findByProperty("customerBz", customerBz);
	}

	/**
	 * Title: findAll
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findAll() 
	 */
	@Override
	public List findAll() {
		log.debug("finding all CustomerInfo instances");
		try {
			String queryString = "from CustomerInfo";
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
	 * @see com.yuxuan.dao.CustomerInfoDao#merge(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public CustomerInfo merge(CustomerInfo detachedInstance) {
		log.debug("merging CustomerInfo instance");
		try {
			CustomerInfo result = (CustomerInfo) getSession().merge(
					detachedInstance);
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
	 * @see com.yuxuan.dao.CustomerInfoDao#attachDirty(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public void attachDirty(CustomerInfo instance) {
		log.debug("attaching dirty CustomerInfo instance");
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
	 * @see com.yuxuan.dao.CustomerInfoDao#attachClean(com.yuxuan.po.CustomerInfo) 
	 */
	@Override
	public void attachClean(CustomerInfo instance) {
		log.debug("attaching clean CustomerInfo instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	/**
	 * Title: queryAllCount
	 *Description: 
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#queryAllCount() 
	 */
	@Override
	public int queryAllCount(){
		log.debug("finding all CustomerInfo instances");
		try {
			String queryString = "from CustomerInfo";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list().size();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
	  }
	}
	
	/**
	 * Title: findPageAll
	 *Description: 
	 * @param page
	 * @return 
	 * @see com.yuxuan.dao.CustomerInfoDao#findPageAll(com.yuxuan.paging.Page) 
	 */
	@Override
	public List findPageAll(Page page){
		String queryString = "from CustomerInfo";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setFirstResult(page.getBeginIndex());
		queryObject.setMaxResults(page.getEveryPage());
		return queryObject.list();
	}
	
	
}