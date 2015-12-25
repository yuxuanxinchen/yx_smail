package com.yuxuan.dao;

import com.yuxuan.po.Sjzdfl;
import java.util.List;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.dao.SjzdflDao.java]  
 * @ClassName:    [SjzdflDao]   
 * @Description:  用户分类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-上午9:38:06]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public abstract interface SjzdflDao {
	public abstract void save(Sjzdfl paramSjzdfl);

	public abstract void delete(Sjzdfl paramSjzdfl);

	public abstract Sjzdfl findById(Integer paramInteger);

	public abstract List findByExample(Sjzdfl paramSjzdfl);

	public abstract List findByProperty(String paramString, Object paramObject);

	public abstract List findBySjzdflMc(Object paramObject);

	public abstract List findAll();

	public abstract Sjzdfl merge(Sjzdfl paramSjzdfl);

	public abstract void attachDirty(Sjzdfl paramSjzdfl);

	public abstract void attachClean(Sjzdfl paramSjzdfl);
}

/*
 * Location: D:\apache-tomcat-7.0.54\webapps\CRM\WEB-INF\classes\ Qualified
 * Name: com.yuxuan.dao.SjzdflDao JD-Core Version: 0.6.1
 */