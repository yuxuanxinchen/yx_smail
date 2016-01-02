package com.yx.service.task;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.yx.utils.PropertiesUtils;

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
	
	private String rootDir = "D:/MYSPL/mysql-5.6.11-winx64/bin/";
    private String sqlTargetDir = "G:/SQLBACKDB/";
    private String sqlFile = new SimpleDateFormat("yyyyMMdd").format(new Date()).toString()+".sql";
	
	/**
	 * @Title: task 
	 * @Description: 定时备份数据库
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月2日 下午2:32:29]  
	 * @throws  
	 */
	@Scheduled(cron = "30 30 23 * * ?")
	public void task(){
	System.out.println("-----------当前时间是：【"+new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒").format(new Date()).toString()+"】------------");	
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
		
//		rootDir = PropertiesUtils.getValue("mysql.root.bin");
//	    sqlTargetDir = PropertiesUtils.getValue("db.back.sql");
		
		BufferedReader bReader = null;
		FileOutputStream fo = null;
		PrintWriter writer = null;
		long start = System.currentTimeMillis();
		Runtime runtime = Runtime.getRuntime();
		try {
			String stamp = new SimpleDateFormat("yyyyMMdd").format(new Date()).toString();
			Process process  = runtime.exec(rootDir+"mysqldump -h 127.0.0.1 -uyx --default-character-set=GBK -p121000 backstage");
			  bReader = new BufferedReader(new InputStreamReader(process.getInputStream(),"GBK"));
			  File file = new File(sqlTargetDir);if(!file.exists())file.mkdirs();
			  File sqlf  = new File(sqlTargetDir,sqlFile);if(!sqlf.exists())sqlf.createNewFile();
			  fo = new FileOutputStream(sqlf);
			  writer = new PrintWriter(fo);
			 String str = "";
			while((str=bReader.readLine())!=null){
				writer.println(str);
			}
			
			long res = System.currentTimeMillis()  - start;
			System.out.println("-------------本次备份一共用时：【"+(float)res/1000+"】秒---------------------");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
              if(writer!=null){
            	  writer.close();
              }
              if(fo!=null){
            	  fo.close();
              }
              if(bReader!=null){
            	  bReader.close();
              }
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		new DBackUpSql().backupDB();
	}

	public void setRootDir(String rootDir) {
		this.rootDir = rootDir;
	}

	public void setSqlTargetDir(String sqlTargetDir) {
		this.sqlTargetDir = sqlTargetDir;
	}

	public void setSqlFile(String sqlFile) {
		this.sqlFile = sqlFile;
	}
	
	
	
}
