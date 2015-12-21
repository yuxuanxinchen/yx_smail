package test;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yx.dao.user.IUserMapper;
import com.yx.entity.AdminUser;
import com.yx.entity.Content;
import com.yx.entity.YParams;
import com.yx.service.adminstat.IAdminStatService;
import com.yx.service.adminstat.IStatService;
import com.yx.service.content.IContentService;
import com.yx.service.user.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext.xml")
public class TestApplications{

	@Autowired
    private IUserMapper uMapper;
	
	@Autowired
	private IUserService userService;

	@Autowired
	private IContentService contentService;
	
	@Autowired
	private IStatService statService;
	
	@Autowired
	private IAdminStatService adminStatService;
	
		
		//ApplicationContext context = new ClassPathXmlApplicationContext("classpath:config/spring/applicationContext.xml");
		//ApplicationContext context = new  FileSystemXmlApplicationContext("G://WORK_PROJECT//moon//config//spring//applicationContext.xml"); 
		//G:\WORK_PROJECT\moon\config\spring\applicationContext.xml
		
//	public static void main(String[] args) throws JSONException {
//		new TestApplications().ststCountYear();
//	}
//	
	
	@Test 
	public void groupUsers(){
		YParams yParams = new YParams();
		yParams.setOrder(" create_time desc ");
		yParams.setDate("2015-11-28");
		List<Map<String, Object>> lists = adminStatService.groupUsers(yParams);
		System.out.println(lists.toString());
		
	}
	
	
	@Test
	public void groupContenxts(){
		YParams yParams = new YParams();
		yParams.setMonth(5);
		yParams.setOrder(" create_time desc ");
		List<Map<String, Object>> lists = adminStatService.groupContents(yParams);
		System.out.println(lists.toString());
	}
	
	
	@Test
	public void ststCountYear() throws JSONException{
		List<Integer> lists = statService.getContentYear();
		System.out.println(lists.size());
		
		
	}
	
	@Test
	public void ststService() throws JSONException{
		YParams yParams = new YParams();
		yParams.setYear(2015);
		List<Map<String, Object>> lists = statService.groupContent(yParams);
		System.out.println(JSONUtil.serialize(lists));
		
		
	}
	
	@Test
	public void Update(){
		Content content = new Content();
		content.setId(50);
		content.setStatus(1);
		content.setIsDelete(1);
		int count = contentService.update(content);
	    System.out.println(count);
	}
	
	
	@Test
	public void batchUser(){
		List<AdminUser> adminUsers = new ArrayList<AdminUser>();
		AdminUser am = new AdminUser();
		am.setAddress("甘肃省兰州市");
		am.setId(7);
		
		AdminUser am1 = new AdminUser();
		am1.setId(8);
		am1.setAddress("吉林省长春市");
		adminUsers.add(am);
		adminUsers.add(am1);
		int count = userService.batchUpdate(adminUsers);
		System.out.println(count);
	}
	
	
	@Test
	public void ContentServiceImplTest(){
		YParams yParams = new YParams();
		yParams.setKeyword("遇见");
		List<Content> contents = contentService.findContents(yParams);
		for (Content content : contents) {
			System.out.println(content.getId());
		}
		
	}
	
	
		@Test
		public void St() throws Exception{
			ApplicationContext context   =
					new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
			
//			DruidDataSource dataSource = (DruidDataSource) context.getBean("dataSource");
//			System.out.println(dataSource);
//			IUserMapper uMapper =  context.getBean(IUserMapper.class);
			
////			YParamx yParamx = new YParamx();
//			yParamx.setId(1);
//			yParamx.setAccount("keke");
//			yParamx.setPassword("4QrcOUm6Wau+VuBX8g+IPg==");
//			User user = userService.getLogin(yParamx);
//			System.out.println(user.getUsername());
			
		}
		
		
	
}