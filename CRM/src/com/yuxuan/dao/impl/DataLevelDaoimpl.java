package com.yuxuan.dao.impl;

import com.yuxuan.dao.DataLevelDao;
import com.yuxuan.po.DataLevel;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class DataLevelDaoimpl extends HibernateDaoSupport
  implements DataLevelDao
{
  private static final Logger log = LoggerFactory.getLogger(DataLevelDaoimpl.class);
  public static final String LEVEL_YWL = "levelYwl";
  public static final String LEVEL_MC = "levelMc";

  public void save(DataLevel transientInstance)
  {
    log.debug("saving DataLevel instance");
    try {
      getSession().save(transientInstance);
      log.debug("save successful");
    } catch (RuntimeException re) {
      log.error("save failed", re);
      throw re;
    }
  }

  public void delete(DataLevel persistentInstance)
  {
    log.debug("deleting DataLevel instance");
    try {
      getSession().delete(persistentInstance);
      log.debug("delete successful");
    } catch (RuntimeException re) {
      log.error("delete failed", re);
      throw re;
    }
  }

  public DataLevel findById(Integer id)
  {
    log.debug("getting DataLevel instance with id: " + id);
    try {
      return (DataLevel)getSession()
        .get("com.yuxuan.po.DataLevel", id);
    }
    catch (RuntimeException re) {
      log.error("get failed", re);
      throw re;
    }
  }

  public List findByExample(DataLevel instance)
  {
    log.debug("finding DataLevel instance by example");
    try {
      List results = getSession()
        .createCriteria("com.yuxuan.po.DataLevel")
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
    log.debug("finding DataLevel instance with property: " + propertyName + 
      ", value: " + value);
    try {
      String queryString = "from DataLevel as model where model." + 
        propertyName + "= ?";
      Query queryObject = getSession().createQuery(queryString);
      queryObject.setParameter(0, value);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find by property name failed", re);
      throw re;
    }
  }

  public List findByLevelYwl(Object levelYwl)
  {
    return findByProperty("levelYwl", levelYwl);
  }

  public List findByLevelMc(Object levelMc)
  {
    return findByProperty("levelMc", levelMc);
  }

  public List findAll()
  {
    log.debug("finding all DataLevel instances");
    try {
      String queryString = "from DataLevel";
      Query queryObject = getSession().createQuery(queryString);
      return queryObject.list();
    } catch (RuntimeException re) {
      log.error("find all failed", re);
      throw re;
    }
  }

  public DataLevel merge(DataLevel detachedInstance)
  {
    log.debug("merging DataLevel instance");
    try {
      DataLevel result = (DataLevel)getSession()
        .merge(detachedInstance);
      log.debug("merge successful");
      return result;
    } catch (RuntimeException re) {
      log.error("merge failed", re);
      throw re;
    }
  }

  public void attachDirty(DataLevel instance)
  {
    log.debug("attaching dirty DataLevel instance");
    try {
      getSession().saveOrUpdate(instance);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }

  public void attachClean(DataLevel instance)
  {
    log.debug("attaching clean DataLevel instance");
    try {
      getSession().lock(instance, LockMode.NONE);
      log.debug("attach successful");
    } catch (RuntimeException re) {
      log.error("attach failed", re);
      throw re;
    }
  }
}