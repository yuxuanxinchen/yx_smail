package com.yx.service.task;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.task.DBackUpSql.java]  
 * @ClassName:    [DBackUpSql]   
 * @Description:  定时对数据库进行备份
 * @Author:       [yuxuan]   
 * @CreateDate:   [2016年1月2日 上午12:01:21]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2016年1月2日 上午12:01:21]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller("taskJob")
public class DBackUpSql {

	/**
	 * @Title: task 
	 * @Description: 定时备份数据库
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月2日 下午2:32:29]  
	 * @throws  
	 */
	@Scheduled(cron = "* 30 23 * * * ?")
	public void task(){
	System.out.println("-----------当前时间是：【"+new SimpleDateFormat("yyyy年MM月dd日").format(new Date()).toString()+"】------------");	
	//开始备份数据库
	backupDB();
	}
	
	/**
	 * @Title: backupDB 
	 * @Description: 备份数据库
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月2日 下午2:34:08]  
	 * @throws  
	 */
	private void backupDB(){
//		Runtime runtime = Runtime.getRuntime();
		try {
//			String stamp = new SimpleDateFormat("yyyyMMdd").format(new Date()).toString();
//			Process process = runtime.exec("javac");
//			 runtime.exec("mysqldump -h 127.0.0.1 -uyx -p121000 backstage>g:/xx.sql");
//		    BufferedReader bReader = new BufferedReader(new InputStreamReader(process.getInputStream(),"utf-8"));
//		    String readLine = bReader.readLine();
//		    while(readLine!=null){
//		     System.out.println(readLine);	
//		    }
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		new DBackUpSql().backupDB();
	}
	
}
