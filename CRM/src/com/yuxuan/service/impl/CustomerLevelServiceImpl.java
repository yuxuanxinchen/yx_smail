package com.yuxuan.service.impl;

import com.yuxuan.dao.DataLevelDao;
import com.yuxuan.po.DataLevel;
import com.yuxuan.service.CustomerLevelService;
import java.util.List;

public class CustomerLevelServiceImpl implements CustomerLevelService {
	private DataLevelDao dataLevelDao;

	public List<DataLevel> getAllDataLevels() throws Exception {
		return this.dataLevelDao.findAll();
	}

	public void updateCumstomerInfo(DataLevel dataLevel) throws Exception {
		this.dataLevelDao.attachDirty(dataLevel);
	}

	public void setDataLevelDao(DataLevelDao dataLevelDao) {
		this.dataLevelDao = dataLevelDao;
	}
}