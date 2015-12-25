package com.yuxuan.service.impl;

import java.util.List;

import com.yuxuan.dao.MenuInfoDao;
import com.yuxuan.po.MenuInfo;
import com.yuxuan.service.MenuInfoService;

public class MenuInfoServiceImpl implements MenuInfoService{

	private MenuInfoDao menuInfoDao; 
	
	@Override
	public List<MenuInfo> queryAll() throws Exception {
		return menuInfoDao.findAll();
	}

	public MenuInfoDao getMenuInfoDao() {
		return menuInfoDao;
	}

	public void setMenuInfoDao(MenuInfoDao menuInfoDao) {
		this.menuInfoDao = menuInfoDao;
	}

	@Override
	public Integer queryMenuCount() throws Exception {
		return menuInfoDao.findAll().size();
	}

	@Override
	public Boolean queryMenuById(Integer Id) throws Exception {
		List<MenuInfo> menuInfos = menuInfoDao.findByProperty("menuId", Id);
		if(menuInfos!=null && menuInfos.size()>0){
			return true;
		}
		return false;
	}
	
	

}
