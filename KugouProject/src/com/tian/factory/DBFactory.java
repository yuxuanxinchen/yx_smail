package com.tian.factory;

import com.tian.dao.*;
import com.tian.factory.DBFactory;
import com.tian.factory.OracleFactory;
import com.tian.factory.SQLFactory;

/**
 * 工厂抽象类
 * @author Administrator
 *
 */
public abstract class DBFactory {
	//引用外部文件
	//private static final String CONFIGFILE = "DBConfig.properties";
//	/**
//	 * 获取数据库链接类型
//	 */
//	public DBFactory(){
//		DBFactory.getDBType();
//	}
//	
//	/**
//	 * 获取数据库链接类型
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
//	 * 判断数据库类型
//	 * @return 确定数据库类型
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
	
	

	//1、根据需求产生不同的子类工厂
	private static final String DBTYPE = "sql"; //数据库需求
	
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
	 * 获取UserDao数据库对象
	 * @return null返回获取失败
	 */
	public abstract UserDao getUserDAo();
	
	/**
	 * 获取SongDao对象
	 * @return 返回执行结果
	 */
	public abstract SongDao getSongDao();
	
	
	public abstract ImgDao getImgDao();
	
	
	public abstract CooperateDao getCooperateDao();
	
	
	public abstract AdminDao getAdminDao();
	
	
	
	public abstract RecordDao getRecordDao();
	
}
