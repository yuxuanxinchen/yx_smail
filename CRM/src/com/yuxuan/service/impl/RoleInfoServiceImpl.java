package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.RoleInfoDao;
import com.yuxuan.dao.RoleRelationDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.service.RoleInfoService;

public class RoleInfoServiceImpl  implements RoleInfoService{

	private RoleInfoDao roleInfoDao;
	private RoleRelationDao roleRelationDao; 
	
	
	@Override
	public void saveRoleInfo(RoleInfo roleInfo,RoleRelation relation) throws Exception {
		if(roleInfo!=null){
			roleInfoDao.save(roleInfo);
		}
		if(relation!=null){
			roleRelationDao.save(relation);
		}
		
	}

	public RoleInfoDao getRoleInfoDao() {
		return roleInfoDao;
	}
	public void setRoleInfoDao(RoleInfoDao roleInfoDao) {
		this.roleInfoDao = roleInfoDao;
	}
	public RoleRelationDao getRoleRelationDao() {
		return roleRelationDao;
	}
	public void setRoleRelationDao(RoleRelationDao roleRelationDao) {
		this.roleRelationDao = roleRelationDao;
	}

	@Override
	public Boolean findByRoleInfoName(String roleName) throws Exception {
		List<RoleInfo> roleInfos = roleInfoDao.findByRoleName(roleName);
		if(roleInfos.size()>0&&roleInfos!=null){
			 return false;
		}
		return true;
	}

	@Override
	public Integer queryRoleInfoCount() throws Exception {
		return roleInfoDao.findAll().size();
	}

	@Override
	public List<RoleInfo> getRoleInfoAll() throws Exception {
		return roleInfoDao.findAll();
	}

	@Override
	public PageResult getRoleInfoAllPage(Page page) throws Exception {
		page = PageUtils.createPage(page, roleInfoDao.findAll().size());
		PageResult pageResult  = new PageResult();
		pageResult.setPage(page);
		pageResult.setList(roleInfoDao.findAllPage(page));
		return pageResult;
	}

	@Override
	public RoleInfo queryRoleInfoById(Integer roleId) throws Exception {
		return roleInfoDao.findById(roleId);
	}

	@Override
	public void updateRoleInfo(RoleInfo roleInfo) throws Exception {
		roleInfoDao.attachDirty(roleInfo);
		
	}

	@Override
	public void deleteRoleInfo(RoleInfo roleInfo) throws Exception {
		roleInfoDao.delete(roleInfo);
	}

	@Override
	public PageResult queryConditionRolePage(String propertyName, String value,
			Page page) throws Exception {
		page = PageUtils.createPage(page, roleInfoDao.findAll().size());
	    PageResult result = new PageResult();
	    result.setList(roleInfoDao.findByPropertyPage(propertyName, value, page));
	    result.setPage(page);
		return result;
	}

	@Override
	public RoleInfo queryRoleById(String roleName) throws Exception {
		return (RoleInfo) roleInfoDao.findByRoleName(roleName);
	}

	@Override
	public RoleInfo queryRoleById(Integer roleId) throws Exception {
		return roleInfoDao.findById(roleId);
	}

	
}
