package com.yx.service.content.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.content.IContentMapper;
import com.yx.entity.Content;
import com.yx.entity.YParams;
import com.yx.service.content.IContentService;
import com.yx.utils.TmStringUtils;

@Service
public class ContentServiceImpl implements IContentService{

	@Autowired
	private IContentMapper contentMapper;
	
	@Override
	public List<Content> findContents(YParams yParams) {
		if(TmStringUtils.isEmpty(yParams.getOrder()))yParams.setOrder(" create_time desc ");
		return contentMapper.findContents(yParams);
	}

}
