package com.tian.dao;

import java.util.List;

import com.tian.entity.Record;

public interface RecordDao {
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
