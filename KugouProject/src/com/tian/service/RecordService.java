package com.tian.service;

import java.util.List;

import com.tian.entity.Record;

public interface RecordService {
	/**
	 * ����û���¼��Ϣ
	 * @param red
	 * @return
	 */
	public boolean recordInfo(Record red);
	
	
	
	/**
	 *	��ѯ����Ա��ϸ��Ϣ����
	 * @return
	 */
	public List<Record> getAllRecordInfo();
	
	
	/**
	 *	��ѯ����Ա��¼����
	 * @return
	 */
	public int getAllRecordcount(String name);
	
}
