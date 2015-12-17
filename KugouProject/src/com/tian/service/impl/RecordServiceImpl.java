package com.tian.service.impl;

import java.util.List;

import com.tian.dao.RecordDao;
import com.tian.entity.Record;
import com.tian.factory.DBFactory;
import com.tian.service.RecordService;

public class RecordServiceImpl implements RecordService{

	RecordDao rDao = DBFactory.createDBFactory().getRecordDao(); 
	
	
	public boolean recordInfo(Record red) {
		// TODO Auto-generated method stub
		return rDao.recordInfo(red);
	}


	public List<Record> getAllRecordInfo() {
		// TODO Auto-generated method stub
		return rDao.getAllRecordInfo();
	}


	public int getAllRecordcount(String name) {
		// TODO Auto-generated method stub
	return rDao.getAllRecordcount(name);
	}

}
