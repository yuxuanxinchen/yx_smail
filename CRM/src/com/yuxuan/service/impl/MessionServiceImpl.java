package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.MessionInfoDao;
import com.yuxuan.paging.Page;
import com.yuxuan.paging.PageResult;
import com.yuxuan.paging.PageUtils;
import com.yuxuan.po.MessionInfo;
import com.yuxuan.service.MessionService;

public class MessionServiceImpl implements MessionService{
	
	private MessionInfoDao messionInfoDao;

	public MessionInfoDao getMessionInfoDao() {
		return messionInfoDao;
	}

	public void setMessionInfoDao(MessionInfoDao messionInfoDao) {
		this.messionInfoDao = messionInfoDao;
	}

	@Override
	public void saveMession(MessionInfo messionInfo){
		try {
			messionInfoDao.save(messionInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteMessionById(Integer id)  {
		try {
		List<MessionInfo>	lists = messionInfoDao.findByProperty("missionId", id);
			if(null != lists && lists.size()>0){
				messionInfoDao.delete(lists.get(0));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void updataMession(MessionInfo messionInfo) {

		try {
			messionInfoDao.attachDirty(messionInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List queryMessionAll() {
		try {
			return messionInfoDao.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public MessionInfo queryMessionById(Integer id) throws Exception {
	try {
		List<MessionInfo> mssInfos = messionInfoDao.findByProperty("missionId", id);
		if(null != mssInfos && mssInfos.size()>0){
			return mssInfos.get(0);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
		return null;
	}

	@Override
	public PageResult queryMessionPage(Page page) {
		try {
			page = PageUtils.createPage(page,messionInfoDao.findAll().size());
			PageResult result = new PageResult();
			result.setList(messionInfoDao.findAll(page));
			result.setPage(page);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	

}
