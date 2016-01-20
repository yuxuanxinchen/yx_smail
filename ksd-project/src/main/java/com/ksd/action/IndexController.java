package com.ksd.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mongodb.morphia.Morphia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.document.mongodb.MongoTemplate;
import org.springframework.data.document.mongodb.query.Criteria;
import org.springframework.data.document.mongodb.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ksd.entity.Agent;
import com.ksd.entity.City;
import com.ksd.entity.Course;
import com.ksd.entity.Message;
import com.ksd.entity.Persion;
import com.ksd.entity.Photo;
import com.ksd.service.CityService;
import com.ksd.service.ICity;
import com.mongodb.Mongo;
/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [ksd-project] 
 * @Package:      [com.ksd.action.IndexController.java]  
 * @ClassName:    [IndexController]   
 * @Description:  测试
 * @Author:       [yuxuan]   
 * @CreateDate:   [2016年1月18日 下午1:34:08]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2016年1月18日 下午1:34:08]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
public class IndexController {

	@Autowired
	ICity cityService;
	@Autowired
	CityService cityService2;
	
//	@Autowired
//	private Mongo mongo;
	
	/**
	 * @Title: index 
	 * @Description: TODO 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2016年1月18日 下午1:34:21]  
	 * @throws  
	 */
	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView md = new ModelAndView();
		List<String> list = new ArrayList<String>();
		list.add("张三");
		list.add("李四");
		list.add("001");
		list.add("002");
		md.addObject("lis", list);
		md.addObject("user","我们好像在哪儿见过");
		
		List<Photo> lists = cityService2.findPhotoAll();
		System.out.println(lists.size());
		
		Persion p = new Persion();
		p.setName("王晓晓");
		p.setAge(25);
		p.setAddress("甘肃省 兰州市");
		p.setDate(new Date());
		
		md.addObject("per", p);
		md.setViewName("index");
		return md;
	}
	
	@ResponseBody
	@RequestMapping("t_ajax")
	public String Rep(String str){
		return str;
	}
	
//	@RequestMapping("list")
//	public  ModelAndView list(){
//		ModelAndView md = new ModelAndView();
//		System.out.println("-----------");
//		
//        List<City> lists = cityService.findAll();
//		System.out.println(lists.size());
//		md.setViewName("showdata");
//		return md;
//	}
	
	@RequestMapping("list")
	public  String  list2(ModelMap model){
		System.out.println("-----------");
		model.put("users", "你好");
        List<Agent> lists = cityService2.findAgentAll();
		System.out.println(lists.size());
		model.put("agent", lists);
	/*	Agent agent = new Agent();
		agent.setName("mongo");
		agent.setCreateDate(new Date());
		cityService2.getMongoTemplate().insert("Agent",agent);
		System.out.print(agent.getId());*/

		return "showdata";
	
	}
}
