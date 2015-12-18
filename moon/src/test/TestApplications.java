package test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yx.dao.user.IUserMapper;
import com.yx.entity.User;
import com.yx.entity.YParamx;
import com.yx.service.user.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext.xml")
public class TestApplications{

	@Autowired
    private IUserMapper uMapper;
	
	@Autowired
	private IUserService userService;

		
		//ApplicationContext context = new ClassPathXmlApplicationContext("classpath:config/spring/applicationContext.xml");
		//ApplicationContext context = new  FileSystemXmlApplicationContext("G://WORK_PROJECT//moon//config//spring//applicationContext.xml"); 
		//G:\WORK_PROJECT\moon\config\spring\applicationContext.xml
		
		
		@Test
		public void St() throws Exception{
			ApplicationContext context   =
					new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
			
//			DruidDataSource dataSource = (DruidDataSource) context.getBean("dataSource");
//			System.out.println(dataSource);
//			IUserMapper uMapper =  context.getBean(IUserMapper.class);
			
			YParamx yParamx = new YParamx();
			yParamx.setId(1);
			yParamx.setAccount("keke");
			yParamx.setPassword("4QrcOUm6Wau+VuBX8g+IPg==");
			User user = userService.getLogin(yParamx);
			System.out.println(user.getUsername());
			
		}
		
		
	
}
