package com.tian.service;

import java.util.List;

import com.tian.entity.Img;

public interface ImgService {
	/**
	 * 查询歌曲
	 * @return 返回歌曲信息
	 */
	public List<Img> getImgInfo();
}
