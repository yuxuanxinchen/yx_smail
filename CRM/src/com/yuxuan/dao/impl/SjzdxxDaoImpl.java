package com.yuxuan.dao.impl;

import com.yuxuan.dao.SjzdxxDao;
import com.yuxuan.po.Sjzdxx;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SjzdxxDaoImpl extends HibernateDaoSupport
  implements SjzdxxDao
{
  private static final Logger log = LoggerFactory.getLogger(SjzdxxDaoImpl.class);
  public static final String SJZDXX_MC = "sjzdxxMc";

  public void save(Sjzdxx transientInstance)
  {
    log.debug("saving Sjzdxx instance");
    try {
      getSession().save(transientInstance);
      log.debug("save successful");
    } catch (RuntimeException re) {
      log.error("save failed", re);
      throw re;
    }
  }

  public void delete(Sjzdxx persistentInstance)
  {
    log.debug("deleting Sjzdxx instance");
    try {
      getSession().delete(persistentInstance);
      log.debug("delete successful");
    } catch (RuntimeException re) {
      log.error("delete failed", re);
      throw re;
    }
  }

  public Sjzdxx findById(Integer id)
  {
    log.debug("getting Sjzdxx instance with id: " + id);
    try {
      return (Sjzdxx)getSession()
        .get("com.yuxuan.po.Sjzdxx", id);
    }
    catch (RuntimeException re) {
      log.error("get failed", re);
      throw re;
    }
  }

  public List findByExample(Sjzdxx instance)
  {
    log.debug("finding Sjzdxx instance by example");
    try {
      List results = getSession()
        .createCriteria("com.yuxuan.po.Sjzdxx")
        .add(Example.create(instance))
        .list();
      log.debug("find by example successful, result size: " + results.size());
      return results;
    } catch (RuntimeException re) {
      log.error("find by example failed", re);
      throw re;
    }
  }

  public List findByProperty(String propertyName, Object value)
  {
    log.debug("finding Sjzdxx instance with property: " + propertyName + 
      ", value: " + value);
    try {
      String queryString = "from Sjzdxx as model where model." + 
        propertyName + "= ?";
      Query queryObject = getSession().createQuery(queryString);
      queryObject.setParameter(0, value);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find by property name failed", re);
      throw re;
    }
  }

  public List findBySjzdxxMc(Object sjzdxxMc)
  {
    return findByProperty("sjzdxxMc", sjzdxxMc);
  }

  public List findAll()
  {
    log.debug("finding all Sjzdxx instances");
    try {
      String queryString = "from Sjzdxx";
      Query queryObject = getSession().createQuery(queryString);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find all failed", re);
      throw re;
    }
  }

  public Sjzdxx merge(Sjzdxx detachedInstance)
  {
    log.debug("merging Sjzdxx instance");
    try {
      Sjzdxx result = (Sjzdxx)getSession()
        .merge(detachedInstance);
      log.debug("merge successful");
      return result;
    } catch (RuntimeException re) {
      log.error("merge failed", re);
      throw re;
    }
  }

  public void attachDirty(Sjzdxx instance)
  {
    log.debug("attaching dirty Sjzdxx instance");
    try {
      getSession().saveOrUpdate(instance);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }

  public void attachClean(Sjzdxx instance)
  {
    log.debug("attaching clean Sjzdxx instance");
    try {
      getSession().lock(instance, LockMode.NONE);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }
}