https://github.com/yuxuanxinchen/yx_smail.git
    
    后台登录页面网址  http://localhost:8080/moon/userlogin

  1、项目开发环境 
      MyEclipse 2015 
      JDK1.7
  2、项目运行环境
      tomcat7.0
  3、数据库版本
      MySql5.0
      
  4、此为一个不借助任何第三方权限框架的一个粗粒度的权限控制后台系统
          
         角色------>权限
         用户------>角色
         
  5、权限控制一共涉及五张表     
        yx_admin_user 后台用户登录表
        yx_role    角色表
        yx_permission   权限表
        yx_user_role   用户角色表
        yx_role_permission  角色权限表
      
               利用这五张表的管理可以精确控制到方法级别的拦截以及页面的列级别拦截
 
                                               本权限系统采用springMVC的拦截器拦截URL和自定义权限标签实现
                                               页面采用权限标控制到列级别
                                              拦截器拦截到模块级别  
                                              利用权限标签可以拦截到按钮级别
      
           本系统一共设计如下表
            
  			yx_admin_stat
  			yx_admin_user
  			yx_banner
  			yx_category
  			yx_channel
  			yx_content
  			yx_content
  			yx_hcl_detail
  			yx_message
  			yx_music
  			yx_music_category
  			yx_permission
  			yx_role
  			yx_role_permission
  			yx_role_user
        