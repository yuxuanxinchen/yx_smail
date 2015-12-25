package com.yuxuan.dao;

import java.util.List;

import com.yuxuan.paging.Page;
import com.yuxuan.po.ProjectManager;

public interface ProjectManagerDao {

	public abstract void save(ProjectManager transientInstance);

	public abstract void delete(ProjectManager persistentInstance);

	public abstract ProjectManager findById(java.lang.Integer id);

	public abstract List findByExample(ProjectManager instance);

	public abstract List findByProperty(String propertyName, Object value);

	public abstract List findByProjectName(Object projectName);

	public abstract List findByProjectStatus(Object projectStatus);

	public abstract List findByProjectSort(Object projectSort);

	public abstract List findByProjectRate(Object projectRate);

	public abstract List findByProjectDescription(Object projectDescription);

	public abstract List findByProjectSummarize(Object projectSummarize);

	public abstract List findByProjectVerify(Object projectVerify);

	public abstract List findByProjectBusiness(Object projectBusiness);

	public abstract List findByRemarks1(Object remarks1);

	public abstract List findByRemarks2(Object remarks2);

	public abstract List findByRemarks3(Object remarks3);

	public abstract List findByRemarks4(Object remarks4);

	public abstract List findByRemarks5(Object remarks5);

	public abstract List findAll();

	public abstract ProjectManager merge(ProjectManager detachedInstance);

	public abstract void attachDirty(ProjectManager instance);

	public abstract void attachClean(ProjectManager instance);
	
	public List findAllVerify(Page page) ;
	
	public List findAllProcess(Page page);
	
	public List findAllSummarize(Page page);
	
	public List findAllBusiness(Page page);

}