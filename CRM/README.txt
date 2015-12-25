https://github.com/yuxuanxinchen/yx_smail.git

  1、项目开发环境 
      MyEclipse 2015 
      JDK1.7
  2、项目运行环境
      tomcat7.0
  3、数据库版本
      MySql5.0
      
  4、本CRM系统是用来管理客户和联系人之间的关系  一共有如下模块
       						|   客户
       				客户信息        |
   							|	联系人
   							
   							|    客户投诉
   					客户服务	|    客户报表(统计图(P))
   							|    客户报表(统计图(B))
   							
   							|    日程
   				            日程-任务     |
   				            |	    任务
   				            
   				            
   				         	|   项目立项   
   				         	|   项目审批
   				           项目管理         |   项目进程
   				            |   项目总结
   				            |   项目交易
   				           
   				            |  用户
   				          系统管理          |
   				            |  角色
   				            
   				            
   				       		|  数据字典  --  数据字典管理所有的数据分类
   				       		|  企业类型
   				           数据字典    	|  企业性质
   				            |  开户银行
   				            |  信息来源
   				            |   .....
   				            
   				           消息提醒         |  短信息   --此功能没有实现
   				           
   				           
   				    此系统采用树导航，完成了基本的数据增删查改
   				         	
   				       本系统一共用到如下表
   				        contacts   
   				        customer_complain   
   				        customer_info    
   				        data_level
   				        menu_info
   				        mession
   				        project_info
   				        role
   				        role_relation
   				        schedule
   				        sjzdfl
   				        sjzdxx
   				        user
   				           
   				           
   	   默认登录名 密码   
   	   			admin  admin  
   	   			
   	   本系统权采用了权限拦截，粗粒度   ，最低可拦截到导航级别
   	    	  本系统本人会利用业务时间逐渐完善
   	                              
   	                                 --yuxuan
   				      			