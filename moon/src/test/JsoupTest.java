package test;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JsoupTest {

	public static void main(String[] args) throws IOException {
		
		Document document = Jsoup.connect("http://www.xiuqq.com/wenzhang/youqing/18609.html").get();
//		System.out.println(document.body());
		System.out.println(document.body().select("h2").text());
		Element element  = document.body();
		Elements es = element.getElementsByClass("content");
		for (Element e2 : es) {
			System.out.println(e2.select("p").text());
		}
		 
//		Elements es = element.getElementsByTag("img");
//		System.out.println(es.size());
//		for (Element e2 : es) {
//			System.out.println(e2.attr("src"));
//		}
		
		
//		Document document2 = Jsoup.connect("http://localhost:8012/moon/userlogin").data("username", "admin")
//				.data("password","admin").userAgent("Mozilla")
//				.cookie("auth", "token")
//				.timeout(5000).post();
//		  System.out.println(document2.title());
		
		
	}
	
}
