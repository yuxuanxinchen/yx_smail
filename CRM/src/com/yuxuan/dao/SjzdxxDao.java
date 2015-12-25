package com.yuxuan.dao;

import com.yuxuan.po.Sjzdxx;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dao.SjzdxxDao.java]  
 * @ClassName:    [SjzdxxDao]   
 * @Description:  数据字典信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:38:21]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface SjzdxxDao {
	public abstract void save(Sjzdxx paramSjzdxx);

	public abstract void delete(Sjzdxx paramSjzdxx);

	public abstract Sjzdxx findById(Integer paramInteger);

	public abstract List findByExample(Sjzdxx paramSjzdxx);

	public abstract List findByProperty(String paramString, Object paramObject);

	public abstract List findBySjzdxxMc(Object paramObject);

	public abstract List findAll();

	public abstract Sjzdxx merge(Sjzdxx paramSjzdxx);

	public abstract void attachDirty(Sjzdxx paramSjzdxx);

	public abstract void attachClean(Sjzdxx paramSjzdxx);
}

/*
 * Location: D:\apache-tomcat-7.0.54\webapps\CRM\WEB-INF\classes\ Qualified
 * Name: com.yuxuan.dao.SjzdxxDao JD-Core Version: 0.6.1
 */