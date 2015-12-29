package com.yx.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.yx.entity.Spider;

public class SpiderUtils {

	/**
	 * @Title: getHtml 
	 * @Description: 获取网页源代码
	 * @param netLike
	 * @param charset
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月28日 上午9:21:27]  
	 * @throws  
	 */
  public static String getHtml(String netLike,String charset){
		try {
			Document document = Jsoup.connect(netLike).get();
			  SysConstant.SPIDER_ARTICLE.clear();
			  String divDom = document.getElementsByClass("content").outerHtml();
			  String stime = document.getElementsByClass("info").outerHtml();
			  String title = document.getElementsByTag("h2").html();
			  SysConstant.SPIDER_ARTICLE.put("content", divDom);
			  SysConstant.SPIDER_ARTICLE.put("stime", stime);
			  SysConstant.SPIDER_ARTICLE.put("title",title);
			return document.html();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
  /**
   * @Title: parseAlink 
   * @Description: 获取网页中的A标签
   * @param netLike
   * @return  
   * @return Set<String> 
   * @Author:[yuxuan]
   * @Date:[2015年12月28日 下午1:23:27]  
   * @throws  
   */
  public static Set<String> parseAlink(String netLike){
		try {
			Set<String> sets = new HashSet<String>();
			Document document = Jsoup.connect(netLike).get();
			Elements es = document.getElementsByTag("a");
			for (Element element : es) {
				sets.add(element.html());
				System.out.println(element.outerHtml());
			}
			return sets;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
  
  
  public static Set<String> getAlink(String netDr,String charset){
	  try {
		  HttpClient httpClient = new HttpClient();
		  HttpMethod method = new GetMethod(netDr);
		  method.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
		  method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,new DefaultHttpMethodRetryHandler());  
		  method.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
		  method.getParams().setContentCharset("GBK");
		  int statusCode = httpClient.executeMethod(method);
		  Set<String> sets = new HashSet<String>();
		  if(statusCode==HttpStatus.SC_OK){
				 byte[] string =  method.getResponseBody();
				 String html = new String(string,"GBK");
				    Document document = Jsoup.parse(html);
					Elements es = document.getElementsByTag("a");
					for (Element element : es) {
						System.out.println(element.outerHtml());
						sets.add(element.outerHtml());
					}
					return sets;
			  }
		  
		  method.abort();
	} catch (Exception e) {
		e.printStackTrace();
	}
	   
	  return null;
  }
  
  
	public static String propertyCondition(Spider spider) {
		try {
			HttpClient httpClient = new HttpClient();
			HttpMethod method = new GetMethod(spider.getUrl());
			method.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
			method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
					new DefaultHttpMethodRetryHandler());
			method.getParams().setParameter(
					HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
			method.getParams().setContentCharset("GBK");
			int statusCode = httpClient.executeMethod(method);
			if (statusCode == HttpStatus.SC_OK) {
				byte[] string = method.getResponseBody();
				String html = new String(string, "GBK");
				Document document = Jsoup.parse(html);
				if (TmStringUtils.isNotEmpty(spider.getLabel())) {
					return document.getElementsByTag(spider.getLabel()).toString();
				} else if (TmStringUtils.isNotEmpty(spider.getId())) {
					return document.getElementById(spider.getId()).toString();
				} else if (TmStringUtils.isNotEmpty(spider.geteClass())) {
					return document.getElementsByClass(spider.geteClass())
							.toString();
				} else if (TmStringUtils.isNotEmpty(spider.getProperty())) {
					return document
							.getElementsByAttribute(spider.getProperty())
							.toString();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
  
  
	public static String gParseImg(Spider spider){
		try {
		  SysConstant.SPIDERDOWNIMAGES.clear();
		  HttpClient httpClient = new HttpClient();
		  HttpMethod method = new GetMethod(spider.getUrl());
		  method.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
		  method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,new DefaultHttpMethodRetryHandler());  
		  method.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
		  method.getParams().setContentCharset("GBK");
		  int statusCode = httpClient.executeMethod(method);
		  Set<String> sets = new HashSet<String>();
		  if(statusCode==HttpStatus.SC_OK){
			     String indexHost = "";
				 byte[] string =  method.getResponseBody();
				 Pattern pattern = Pattern.compile("^[https|http]+://[\\w]+\\.[\\w]+\\.com");
					Matcher m = pattern.matcher(method.getURI().toString());
					while(m.find()){
						indexHost = m.group();
					}
				 String html = new String(string,"GBK");
				    Document document = Jsoup.parse(html);
					Elements es =  document.getElementsByTag("img");
					for (Element element : es) {
						System.out.println(element.outerHtml());
						if(!element.attr("src").startsWith("http:")){
							SysConstant.SPIDERDOWNIMAGES.add(indexHost+element.attr("src"));
							 element = element.attr("src", indexHost+element.attr("src"));
							sets.add(element.outerHtml());
						}else{
							SysConstant.SPIDERDOWNIMAGES.add(element.attr("src"));
							sets.add(element.outerHtml());
						}
					}
					return sets.toString();
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static void imgDown(){
		Set<String> set = SysConstant.SPIDERDOWNIMAGES;
		for (String string : set) {
			imageDown(string,SysConstant.UPLOAD_IMAGES_PATH+"/"+UUID.randomUUID()+".jpg");
		}
	}
		
	
	/**
	 * @Title: imageDown 
	 * @Description: 下载图片 
	 * @param imageUrl
	 * @param targetPath  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月28日 上午12:53:32]  
	 * @throws  
	 */
	public static void imageDown(String imageUrl,String targetPath){
		try {
			URL url = new URL(imageUrl);
			URLConnection con = url.openConnection();
			InputStream ins = con.getInputStream();
			byte[] bs = new byte[5012];
			int len = 0;
			long tLength = con.getContentLengthLong();
			long currentLen = 0;
			FileOutputStream fOutputStream = new FileOutputStream(targetPath);
			while((len=ins.read(bs))!=-1){
				fOutputStream.write(bs,0, len);
				currentLen+=len;
				System.out.println("-------------【总长度为】"+(tLength/1000)+"KB 【当前进度为】："+(int)(((float)currentLen/(float)tLength)*100)+"%---------------");
			}
			fOutputStream.close();
			ins.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
  
  public static void main(String[] args) throws HttpException, IOException {
	
//	  SysConstant.SPIDER_ARTICLE.clear();
//	  Document document =  Jsoup.connect("http://www.xiuqq.com/wenzhang/suibi/18933.html").get();
//	  String divDom = document.getElementsByClass("content").outerHtml();
//	  String stime = document.getElementsByClass("info").outerHtml();
//	  String title = document.getElementsByTag("h2").html();
//	 
//	  SysConstant.SPIDER_ARTICLE.put("divDom", divDom);
//	  SysConstant.SPIDER_ARTICLE.put("stime", stime);
//	  SysConstant.SPIDER_ARTICLE.put("title",title);
	  
//	  System.out.println(divDom);
	  
	  HttpClient httpClient = new HttpClient();
	  HttpMethod method = new GetMethod("http://society.people.com.cn/");
	  method.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
	  method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,new DefaultHttpMethodRetryHandler());  
	  method.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
	  method.getParams().setContentCharset("GBK");
	  int statusCode = httpClient.executeMethod(method);
	  Set<String> sets = new HashSet<String>();
	  if(statusCode==HttpStatus.SC_OK){
		     String indexHost = "";
			 byte[] string =  method.getResponseBody();
			 Pattern pattern = Pattern.compile("^[https|http]+://[\\w]+\\.[\\w]+\\.com");
				Matcher m = pattern.matcher(method.getURI().toString());
				while(m.find()){
					indexHost = m.group();
				}
			 
			 String html = new String(string,"GBK");
			    Document document = Jsoup.parse(html);
//			    System.out.println(document.html());
				Elements es =  document.getElementsByTag("img");
				for (Element element : es) {
					if(!element.attr("src").startsWith("http")){
						System.out.println(indexHost+element.attr("src"));
					}else{
						System.out.println(element.attr("src"));
					}
					
				}
		  }
	  
	  
	  
	  
	  
	  
	  
//	  Spider spider = new Spider();
//	  spider.setUrl("http://news.qq.com/a/20151227/026858.htm");
//	  spider.setLabel("div");
//	  spider.setId("tcopyright");
//	  System.out.println(propertyCondition(spider));
	  
//	try {
//		
//	  HttpClient httpClient = new HttpClient();
//	  Set<String> sets = new HashSet<String>();
//	  HttpMethod method = new GetMethod("http://www.xiuqq.com/wenzhang/qinqing/18810.html");
//	  method.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
//	  method.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,new DefaultHttpMethodRetryHandler());  
//	  method.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET, "GBK");
//	  method.getParams().setContentCharset("GBK");
//	  int statusCode = httpClient.executeMethod(method);
//	  
//	  if(statusCode==HttpStatus.SC_OK){
//		 byte[] string =  method.getResponseBody();
//		 String html = new String(string,"GBK");
//		    Document document = Jsoup.parse(html);
//			Elements es = document.getElementsByTag("a");
//			for (Element element : es) {
//				System.out.println(element.outerHtml());
//				sets.add(element.outerHtml());
//			}
//	  }
//	  
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
}
  
}
