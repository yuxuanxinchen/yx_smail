package test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class regexp {

//	static String net = "http://www.1688.com/pic/-61D5BEB5C4CDBCC6AC.html";
	static String net = "https://www.baidu.com/link?url=fZc5-5pSIdUrjZfqFczgo8sDtevisQN6augheIjs4_K&wd=&eqid=c27c8a7a000bd4700000000356814b50";
	public static void main(String[] args) {
		
		//155 6881 3450
//		Pattern pattern = Pattern.compile("^1([3568]{1})(\\d+{5})(\\d+{4})$");
//		Matcher matcher = pattern.matcher("13568813450");
//		if(matcher.find()){
//			System.out.println(matcher.group()+matcher.groupCount());
//		}
		
		
		Pattern pattern = Pattern.compile("^(\\w+)+@(\\w{5})\\.(\\w{3,5}(\\.(\\w{2,5}))?)");
		Matcher matcher = pattern.matcher("46668sdfsdfs@d1163.com.cn");
		if(matcher.find()){
			System.out.println(matcher.group()+matcher.groupCount());
		}
		
		
		
		
//		Pattern pattern = Pattern.compile("^[https|http]+://[\\w]+\\.[\\w]+\\.com");
//		Matcher m = pattern.matcher(net);
//		while(m.find()){
//			System.out.println(m.groupCount()+"---"+m.group());
//		}
//		
		
	}
	
}
