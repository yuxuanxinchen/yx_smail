package com.tian.service.impl;

import java.util.List;

import com.tian.dao.CooperateDao;
import com.tian.entity.Cooperate;
import com.tian.factory.DBFactory;
import com.tian.service.CooperateService;

public class CooperateServiceImpl implements CooperateService{

	CooperateDao cooperateDao = DBFactory.createDBFactory().getCooperateDao();
	
	public List<Cooperate> getAllCooperateInfo() {
		// TODO Auto-generated method stub
		return cooperateDao.getAllCooperateInfo();
	}
	
}
