package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.ProjectManagerDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.ProjectManager;
import com.yuxuan.service.ProjectService;

public class ProjectServiceImpl implements ProjectService{
	
	private ProjectManagerDao projectManagerDao;
	
	public ProjectManagerDao getProjectManagerDao() {
		return projectManagerDao;
	}
	public void setProjectManagerDao(ProjectManagerDao projectManagerDao) {
		this.projectManagerDao = projectManagerDao;
	}

	@Override
	public void saveProject(ProjectManager projectManager) throws Exception {
		  projectManagerDao.save(projectManager);
		
	}

	@Override
	public void deleteProject(Integer id) throws Exception {
		if(id!=null){
			projectManagerDao.delete(queryProjectManagerById(id));
		}
	}

	@Override
	public void updataProject(ProjectManager projectManager) throws Exception {
		 projectManagerDao.attachDirty(projectManager);
		
	}

	@Override
	public ProjectManager queryProjectManagerById(Integer id) throws Exception {
		return projectManagerDao.findById(id);
	}

	@Override
	public List queryAll() throws Exception {
		return projectManagerDao.findAll();
	}
	
	@Override
	public PageResult queryAllVerify(Page page) throws Exception {
		page = PageUtils.createPage(page, projectManagerDao.findAll().size());
		PageResult result = new PageResult();
		result.setPage(page);
		result.setList(projectManagerDao.findAllVerify(page));
		return result;
	}
	@Override
	public PageResult queryAllProcess(Page page) throws Exception {
		page = PageUtils.createPage(page, projectManagerDao.findAll().size());
		PageResult result = new PageResult();
		result.setPage(page);
		result.setList(projectManagerDao.findAllProcess(page));
		return result;
	}
	@Override
	public PageResult queryAllSummarize(Page page) throws Exception {
		page = PageUtils.createPage(page, projectManagerDao.findAll().size());
		PageResult result = new PageResult();
		result.setPage(page);
		result.setList(projectManagerDao.findAllSummarize(page));
		return result;
	}
	@Override
	public PageResult queryAllBusiness(Page page) throws Exception {
		page = PageUtils.createPage(page, projectManagerDao.findAll().size());
		PageResult result = new PageResult();
		result.setPage(page);
		result.setList(projectManagerDao.findAllBusiness(page));
		return result;
	}

	
}
