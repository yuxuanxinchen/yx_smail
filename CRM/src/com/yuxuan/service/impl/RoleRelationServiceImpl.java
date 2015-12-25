package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.RoleRelationDao;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.service.RoleRelationService;

public class RoleRelationServiceImpl implements RoleRelationService{

	private RoleRelationDao roleRelationDao; 

	public RoleRelationDao getRoleRelationDao() {
		return roleRelationDao;
	}

	public void setRoleRelationDao(RoleRelationDao roleRelationDao) {
		this.roleRelationDao = roleRelationDao;
	}
	
	@Override
	public void saveRoleRelationInfo(RoleRelation relation) throws Exception {
		roleRelationDao.save(relation);
	}

	@Override
	public List<RoleRelation> findRelationsById(RoleInfo roleInfo) {
		return roleRelationDao.findByProperty("roleInfo",roleInfo);
	}

	@Override
	public void updateRoleRelationInfo(RoleRelation relation) throws Exception {
		roleRelationDao.attachDirty(relation);
		
	}

	@Override
	public void deleteRoleRelationInfo(RoleRelation relation) throws Exception {
		roleRelationDao.delete(relation);
		
	}

}
