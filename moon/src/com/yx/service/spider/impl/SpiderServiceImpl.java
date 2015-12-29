package com.yx.service.spider.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.spider.ISpiderMapper;
import com.yx.entity.SpiderArticle;
import com.yx.service.spider.ISpiderService;
@Service
public class SpiderServiceImpl implements ISpiderService{
	
	@Autowired
	private ISpiderMapper spiderMapper;

	@Override
	public void insert(SpiderArticle spiderArticle) {
		spiderMapper.insert(spiderArticle);
	}

}
