package com.tian.factory;

import com.tian.dao.*;
import com.tian.factory.DBFactory;
import com.tian.factory.OracleFactory;
import com.tian.factory.SQLFactory;

/**
 * ����������
 * @author Administrator
 *
 */
public abstract class DBFactory {
	//�����ⲿ�ļ�
	//private static final String CONFIGFILE = "DBConfig.properties";
//	/**
//	 * ��ȡ���ݿ���������
//	 */
//	public DBFactory(){
//		DBFactory.getDBType();
//	}
//	
//	/**
//	 * ��ȡ���ݿ���������
//	 * @return
//	 */
//	private static String getDBType(){
//		try {
//			Properties properties = new Properties();
//			properties.load(new FileInputStream(CONFIGFILE));
//			return properties.getProperty("dbType");
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		return null;
//	}
//	/**
//	 * �ж����ݿ�����
//	 * @return ȷ�����ݿ�����
//	 */
//	public static DBFactory createDBFactoryByType(){
//		String dBType = getDBType();
//		if(dBType.equals("sql")){
//			return new SQLFactory();
//		}else if(dBType.equals("oracle")){
//			return new OracleFactory();
//		}else{
//			return null;
//		}
//	}
	
	

	//1���������������ͬ�����๤��
	private static final String DBTYPE = "sql"; //���ݿ�����
	
	public static DBFactory createDBFactory(){
		DBFactory f = null;
		
		if(DBTYPE.equals("sql")){
			f = new SQLFactory();
		}else if(DBTYPE.equals("oracle")){
			f = new OracleFactory();
		}
		
		return f;
	}
	/**
	 * ��ȡUserDao���ݿ����
	 * @return null���ػ�ȡʧ��
	 */
	public abstract UserDao getUserDAo();
	
	/**
	 * ��ȡSongDao����
	 * @return ����ִ�н��
	 */
	public abstract SongDao getSongDao();
	
	
	public abstract ImgDao getImgDao();
	
	
	public abstract CooperateDao getCooperateDao();
	
	
	public abstract AdminDao getAdminDao();
	
	
	
	public abstract RecordDao getRecordDao();
	
}
