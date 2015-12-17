package com.tian.service;

import java.util.List;

import com.tian.entity.Record;

public interface RecordService {
	/**
	 * 添加用户登录信息
	 * @param red
	 * @return
	 */
	public boolean recordInfo(Record red);
	
	
	
	/**
	 *	查询管理员详细信息操作
	 * @return
	 */
	public List<Record> getAllRecordInfo();
	
	
	/**
	 *	查询管理员登录次数
	 * @return
	 */
	public int getAllRecordcount(String name);
	
}
