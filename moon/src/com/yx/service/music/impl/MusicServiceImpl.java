package com.yx.service.music.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.music.IMusicMapper;
import com.yx.entity.Music;
import com.yx.entity.YParams;
import com.yx.service.music.IMusicService;

@Service
public class MusicServiceImpl implements IMusicService{

	@Autowired
	private IMusicMapper musicMapper;

	@Override
	public List<Music> findMusics(YParams yParams) {
		return musicMapper.findMusics(yParams);
	}

	@Override
	public Integer musicCounts() {
		return musicMapper.musicCounts();
	}

	@Override
	public void delete(Integer id) {
		musicMapper.delete(id);
		
	}

	@Override
	public void updata(YParams yParams) {
		musicMapper.updata(yParams);
		
	}

	
	
	

}
