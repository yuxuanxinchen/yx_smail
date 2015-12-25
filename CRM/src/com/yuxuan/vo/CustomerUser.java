package com.yuxuan.vo;

import com.yuxuan.po.User;

public class CustomerUser extends User{
	
	private String parentName;
	private Integer parentId;
	

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	
}
