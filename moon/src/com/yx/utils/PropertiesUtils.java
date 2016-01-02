package com.yx.utils;

import java.io.InputStream;
import java.util.Properties;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.utils.PropertiesUtils.java]  
 * @ClassName:    [PropertiesUtils]   
 * @Description: 读取配置文件
 * @Author:       [yuxuan]   
 * @CreateDate:   [2016年1月2日 下午7:28:52]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2016年1月2日 下午7:28:52]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class PropertiesUtils {
	
	
	public static String getValue(String key){
		Properties properties = new Properties();
		InputStream in = Object.class.getResourceAsStream(SysConstant.DB_PROPERTIES_FILE);
		try {
			properties.load(in);
			return properties.getProperty(key).trim();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static void main(String[] args) {
		System.out.println(getValue("db.url"));
		
	}
	
	
	
//	private PropertiesUtils(){};
//	private static PropertiesUtils pInstance;
//	public static PropertiesUtils getInstance(){
//		if(pInstance==null){
//			PropertiesUtils propertiesUtils = new PropertiesUtils();
//		}
//		return pInstance;
//	}
//	
//	private static String P_KEY;
//	private static String P_VALUE;
//	static{
//		Properties properties = new Properties();
//		InputStream in = Object.class.getResourceAsStream("/db/db.properties");
//		try {
//			properties.load(in);
//			P_VALUE = properties.getProperty(P_KEY).trim();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
	
	
	
	

}
