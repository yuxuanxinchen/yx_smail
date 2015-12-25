package com.yuxuan.vo;

import java.util.List;

import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;

public class CustomRoleInfo {

	private List<RoleRelation> relations;
	private RoleInfo roleInfo;
	public RoleInfo getRoleInfo() {
		return roleInfo;
	}
	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}
	public List<RoleRelation> getRelations() {
		return relations;
	}
	public void setRelations(List<RoleRelation> relations) {
		this.relations = relations;
	}
	
	
	
}
