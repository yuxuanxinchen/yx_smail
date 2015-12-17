package com.tian.factory;

import com.tian.dao.AdminDao;
import com.tian.dao.CooperateDao;
import com.tian.dao.ImgDao;
import com.tian.dao.RecordDao;
import com.tian.dao.SongDao;
import com.tian.dao.UserDao;
import com.tian.dao.sqlimpl.AdminDaoImpl;
import com.tian.dao.sqlimpl.CooperateDaoImpl;
import com.tian.dao.sqlimpl.ImgDaoImpl;
import com.tian.dao.sqlimpl.RecordDaoImpl;
import com.tian.dao.sqlimpl.SongDaoImpl;
import com.tian.dao.sqlimpl.UserDaoImpl;

public class SQLFactory extends DBFactory{

	@Override
	public UserDao getUserDAo() {
		// TODO Auto-generated method stub
		return new UserDaoImpl();
	}

	@Override
	public SongDao getSongDao() {
		// TODO Auto-generated method stub
		return new SongDaoImpl();
	}

	@Override
	public ImgDao getImgDao() {
		// TODO Auto-generated method stub
		return new ImgDaoImpl();
	}

	@Override
	public CooperateDao getCooperateDao() {
		// TODO Auto-generated method stub
		return new CooperateDaoImpl();
	}

	@Override
	public AdminDao getAdminDao() {
		// TODO Auto-generated method stub
		return  new AdminDaoImpl();
	}

	@Override
	public RecordDao getRecordDao() {
		// TODO Auto-generated method stub
		return new RecordDaoImpl();
	}

}
