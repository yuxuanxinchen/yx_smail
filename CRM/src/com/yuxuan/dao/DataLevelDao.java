package com.yuxuan.dao;

import com.yuxuan.po.DataLevel;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dao.DataLevelDao.java]  
 * @ClassName:    [DataLevelDao]   
 * @Description:  用户级别
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:37:55]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface DataLevelDao {
	public abstract void save(DataLevel paramDataLevel);

	public abstract void delete(DataLevel paramDataLevel);

	public abstract DataLevel findById(Integer paramInteger);

	public abstract List findByExample(DataLevel paramDataLevel);

	public abstract List findByProperty(String paramString, Object paramObject);

	public abstract List findByLevelYwl(Object paramObject);

	public abstract List findByLevelMc(Object paramObject);

	public abstract List findAll();

	public abstract DataLevel merge(DataLevel paramDataLevel);

	public abstract void attachDirty(DataLevel paramDataLevel);

	public abstract void attachClean(DataLevel paramDataLevel);
}

/*
 * Location: D:\apache-tomcat-7.0.54\webapps\CRM\WEB-INF\classes\ Qualified
 * Name: com.yuxuan.dao.DataLevelDao JD-Core Version: 0.6.1
 */