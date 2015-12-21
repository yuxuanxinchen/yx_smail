package com.yx.service.adminstat.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.adminstat.IAdminStatMapper;
import com.yx.entity.AdminStat;
import com.yx.entity.YParams;
import com.yx.service.adminstat.IAdminStatService;
import com.yx.utils.TmStringUtils;

/**
 * 日记管理serviceImpl
 * IAdminStatService
 * 创建人:柯柯 
 * 时间：2015年12月05日 00:07:45
 * @version 1.0.0
 * 
 */
@Service
public class AdminStatServiceImpl implements IAdminStatService{

	@Autowired
	private IAdminStatMapper adminstatMapper;
	
	@Override
	public List<AdminStat> findAdminStats(YParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("create_time desc");
		return adminstatMapper.findAdminStats(params);
	}
	
	@Override
	public int count(YParams params){
		return adminstatMapper.count(params);
	}

	@Override
	public AdminStat get(Integer id) {
		return adminstatMapper.get(id);
	}

	@Override
	public int save(AdminStat adminstat) {
		return adminstatMapper.save(adminstat);
	}

	@Override
	public int update(AdminStat adminstat) {
		return adminstatMapper.update(adminstat);
	}

	@Override
	public int delete(YParams params) {
		return adminstatMapper.delete(params);
	}

	@Override
	public List<Map<String, Object>> groupContents(YParams yParams) {
		return adminstatMapper.groupContents(yParams);
	}

	@Override
	public List<Map<String, Object>> groupUsers(YParams yParams) {
		return adminstatMapper.groupUsers(yParams);
	}

}
