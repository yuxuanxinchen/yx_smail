package com.yuxuan.service.impl;

import com.yuxuan.dao.SjzdflDao;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.service.SjzdflService;
import java.util.List;

public class SjzdflServiceImpl implements SjzdflService {
	private SjzdflDao sjzdflDao;

	public List<Sjzdfl> getAllSjzdfl() throws Exception {
		return this.sjzdflDao.findAll();
	}

	public void updateSjzdfl(Sjzdfl sjzdfl) throws Exception {
		this.sjzdflDao.attachDirty(sjzdfl);
	}

	public Sjzdfl findSjzdflById(Integer sjzdflId) throws Exception {
		return (Sjzdfl) this.sjzdflDao.findByProperty("sjzdflId", sjzdflId)
				.get(0);
	}

	public void setSjzdflDao(SjzdflDao sjzdflDao) {
		this.sjzdflDao = sjzdflDao;
	}
}