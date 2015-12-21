package com.yx.service.adminstat.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.adminstat.IStatMapper;
import com.yx.entity.YParams;
import com.yx.service.adminstat.IStatService;

@Service
public class StatServiceImpl implements IStatService{

	@Autowired
	private IStatMapper statMapper;
	
	@Override
	public List<Map<String, Object>> groupContent(YParams params) {
		return statMapper.groupContent(params);
	}

	@Override
	public List<Integer> getContentYear() {
		return statMapper.getContentYear();
	}

}
