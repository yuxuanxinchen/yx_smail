package com.yx.service.census.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.census.ICensusMapper;
import com.yx.entity.YParams;
import com.yx.service.census.ICensusService;

@Service
public class CensusServiceImpl implements ICensusService{

	@Autowired
	private ICensusMapper censusMapper;
	
	@Override
	public List<HashMap<String, Object>> findModelBtns(YParams ypParams) {
		return censusMapper.findModelBtns(ypParams);
	}

}
