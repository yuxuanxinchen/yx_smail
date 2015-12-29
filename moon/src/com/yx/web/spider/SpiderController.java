package com.yx.web.spider;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.jndi.url.corbaname.corbanameURLContextFactory;
import com.yx.entity.AdminUser;
import com.yx.entity.Spider;
import com.yx.entity.SpiderArticle;
import com.yx.service.spider.ISpiderService;
import com.yx.utils.SpiderUtils;
import com.yx.utils.SysConstant;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.spider.SpiderController.java]  
 * @ClassName:    [SpiderController]   
 * @Description:  抓取网页内容
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月27日 下午10:50:51]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月27日 下午10:50:51]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/spider")
public class SpiderController {

	@Autowired
	private ISpiderService spiderService;
	
	
	/**
	 * @Title: list 
	 * @Description:蜘蛛首页
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月27日 下午10:52:20]  
	 * @throws  
	 */
	@RequestMapping("/list")
	public String list(){
		return "spider/list";
	}
	
	@ResponseBody
	@RequestMapping(value="html",produces = "text/html;charset=UTF-8")
	public String getHtml(Spider spider){
	  String html =  SpiderUtils.getHtml(spider.getUrl(), spider.getCharset());;
	   return html;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/parseAlink",produces = "text/html;charset=UTF-8")
	public String parseAlink(Spider spider){
		Set<String> sts = SpiderUtils.getAlink(spider.getUrl(), spider.getCharset());
		if(sts==null){
			return null;
		}
		return sts.toString();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/propertyQuery",produces = "text/html;charset=UTF-8")
	public String propertyQuery(Spider spider){
		String result =  SpiderUtils.propertyCondition(spider);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/imgs",produces = "text/html;charset=UTF-8")
	public String gParseImg(Spider spider){
		return SpiderUtils.gParseImg(spider);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/imgAllDown",method=RequestMethod.POST)
	public String imgAllDown(Spider spider){
		SpiderUtils.imgDown();
		return "SUCCESS";
	}
	
	@ResponseBody
	@RequestMapping(value="articleDb",method=RequestMethod.POST)
	public String articleDb(HttpSession session){
		AdminUser as  = (AdminUser) session.getAttribute(SysConstant.SESSION_USER);
		SpiderArticle spiderArticle = new SpiderArticle();
		spiderArticle.setContent(SysConstant.SPIDER_ARTICLE.get("content").toString());
		spiderArticle.setKeywords(SysConstant.SPIDER_ARTICLE.get("title").toString());
		spiderArticle.setTitle(SysConstant.SPIDER_ARTICLE.get("title").toString());
		spiderArticle.setStime(SysConstant.SPIDER_ARTICLE.get("stime").toString());
		spiderArticle.setUserId(as.getId());
		spiderService.insert(spiderArticle);
		return "SUCCESS";
	}
	
	
	
	public static void main(String[] args) {
		
//		System.out.println(getHtmlSource("http://www.xiuqq.com/wenzhang/suibi/18933.html", "gbk"));
//	parseHtml("http://www.xiuqq.com/wenzhang/suibi/18933.html","");
	
//	imageDown("http://p3.so.qhimg.com/t011fd64776e672353d.jpg", "G:/1.jpg");
//	System.out.println(SpiderUtils.getHtml("http://www.xiuqq.com/wenzhang/suibi/18933.html", "utf-8"));
	
//	System.out.println(SpiderUtils.getHtml("http://www.qktsw.com/playbook/2968-1-34.html", "gb2312"));
	parseHtml("http://www.xiuqq.com/wenzhang/suibi/18933.html", "");
	}
	
	
	
	
	
	
	public static String parseHtml(String netLike,String charset){
		try {
			Set<String> sets = new HashSet<String>();
			Document document = Jsoup.connect(netLike).get();
			Elements es = document.getElementsByTag("a");
			for (Element element : es) {
				sets.add(element.outerHtml());
				System.out.println(element.outerHtml());
			}
			
			return document.html();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	public static String jsoupHtmlSource(String netLike,String charset){
		try {
			Document document = Jsoup.connect(netLike).get();
			return document.html();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static String getHtmlSource(String netLike,String charset){
		try {
			StringBuffer bf = new StringBuffer();
			URL url = new URL(netLike);
			URLConnection connection = url.openConnection();
			connection.setConnectTimeout(3500);
			connection.setReadTimeout(3000);
			InputStream ins = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(ins,charset);
			BufferedReader bReader = new BufferedReader(reader);
			String line = null;
			while((line=bReader.readLine())!=null){
			   bf.append(line);
			}
			reader.close();
			ins.close();
			connection.connect();
			return bf.toString();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;	
	}
	
	
	
}
