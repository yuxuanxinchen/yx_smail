package com.tian.factory;

import com.tian.dao.AdminDao;
import com.tian.dao.CooperateDao;
import com.tian.dao.ImgDao;
import com.tian.dao.RecordDao;
import com.tian.dao.SongDao;
import com.tian.dao.UserDao;
import com.tian.dao.oracleimpl.AdminDaoImpl;
import com.tian.dao.oracleimpl.RecordDaoImpl;
import com.tian.dao.oracleimpl.SongDaoImpl;
import com.tian.dao.oracleimpl.UserDaoImpl;

public class OracleFactory extends DBFactory{

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
		return null;
	}

	@Override
	public CooperateDao getCooperateDao() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdminDao getAdminDao() {
		// TODO Auto-generated method stub
		return new AdminDaoImpl();
	}

	@Override
	public RecordDao getRecordDao() {
		// TODO Auto-generated method stub
		return new RecordDaoImpl();
	}

}
