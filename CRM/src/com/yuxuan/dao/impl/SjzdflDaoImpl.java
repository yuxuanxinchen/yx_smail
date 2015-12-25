package com.yuxuan.dao.impl;

import com.yuxuan.dao.SjzdflDao;
import com.yuxuan.po.Sjzdfl;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SjzdflDaoImpl extends HibernateDaoSupport
  implements SjzdflDao
{
  private static final Logger log = LoggerFactory.getLogger(SjzdflDaoImpl.class);
  public static final String SJZDFL_MC = "sjzdflMc";

  public void save(Sjzdfl transientInstance)
  {
    log.debug("saving Sjzdfl instance");
    try {
      getSession().save(transientInstance);
      log.debug("save successful");
    } catch (RuntimeException re) {
      log.error("save failed", re);
      throw re;
    }
  }

  public void delete(Sjzdfl persistentInstance)
  {
    log.debug("deleting Sjzdfl instance");
    try {
      getSession().delete(persistentInstance);
      log.debug("delete successful");
    } catch (RuntimeException re) {
      log.error("delete failed", re);
      throw re;
    }
  }

  public Sjzdfl findById(Integer id)
  {
    log.debug("getting Sjzdfl instance with id: " + id);
    try {
      return (Sjzdfl)getSession()
        .get("com.yuxuan.po.Sjzdfl", id);
    }
    catch (RuntimeException re) {
      log.error("get failed", re);
      throw re;
    }
  }

  public List findByExample(Sjzdfl instance)
  {
    log.debug("finding Sjzdfl instance by example");
    try {
      List results = getSession()
        .createCriteria("com.yuxuan.po.Sjzdfl")
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
    log.debug("finding Sjzdfl instance with property: " + propertyName + 
      ", value: " + value);
    try {
      String queryString = "from Sjzdfl as model where model." + 
        propertyName + "= ?";
      Query queryObject = getSession().createQuery(queryString);
      queryObject.setParameter(0, value);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find by property name failed", re);
      throw re;
    }
  }

  public List findBySjzdflMc(Object sjzdflMc)
  {
    return findByProperty("sjzdflMc", sjzdflMc);
  }

  public List findAll()
  {
    log.debug("finding all Sjzdfl instances");
    try {
      String queryString = "from Sjzdfl";
      Query queryObject = getSession().createQuery(queryString);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find all failed", re);
      throw re;
    }
  }

  public Sjzdfl merge(Sjzdfl detachedInstance)
  {
    log.debug("merging Sjzdfl instance");
    try {
      Sjzdfl result = (Sjzdfl)getSession()
        .merge(detachedInstance);
      log.debug("merge successful");
      return result;
    } catch (RuntimeException re) {
      log.error("merge failed", re);
      throw re;
    }
  }

  public void attachDirty(Sjzdfl instance)
  {
    log.debug("attaching dirty Sjzdfl instance");
    try {
      getSession().saveOrUpdate(instance);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }

  public void attachClean(Sjzdfl instance)
  {
    log.debug("attaching clean Sjzdfl instance");
    try {
      getSession().lock(instance, LockMode.NONE);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }
}