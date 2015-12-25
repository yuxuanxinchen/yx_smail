package com.yuxuan.service.impl;

import com.yuxuan.dao.SjzdxxDao;
import com.yuxuan.po.Sjzdfl;
import com.yuxuan.po.Sjzdxx;
import com.yuxuan.service.SjzdxxService;

import java.util.List;

public class SjzdxxServiceImpl implements SjzdxxService {
	private SjzdxxDao sjzdxxDao;

	public List<Sjzdxx> getAllSjzdxxByType(Sjzdfl sjzdfl) throws Exception {
		return this.sjzdxxDao.findByProperty("sjzdfl", sjzdfl);
	}

	
	
	
	public void updateSjzdxx(Sjzdxx sjzdxx) throws Exception {
		this.sjzdxxDao.attachDirty(sjzdxx);
	}

	public SjzdxxDao getSjzdxxDao() {
		return this.sjzdxxDao;
	}

	public void setSjzdxxDao(SjzdxxDao sjzdxxDao) {
		this.sjzdxxDao = sjzdxxDao;
	}




	@Override
	public Sjzdxx querySjzdxxById(Integer id) throws Exception {
		return sjzdxxDao.findById(id);
	}
}