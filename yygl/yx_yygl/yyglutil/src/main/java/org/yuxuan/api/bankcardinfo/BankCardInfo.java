package org.yuxuan.api.bankcardinfo;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.yuxuan.utils.sysConfig;
import com.alibaba.fastjson.JSONObject;

public class BankCardInfo {

	private static String cardtype ; //银行卡的类型
	private static String cardprefixnum ; //银行卡前缀
	private static String cardname ; //银行卡名称
	private static String bankname ; //归属银行
	private static String banknum ; //内部结算代码
	private static String cardlength ; //银行卡的长度
	private static Map<String, String> map = null;
	
	/**
	 * @Title: getBankCardInfo 
	 * @Description: TODO 
	 * @param bankNumber
	 *cardtype:银行卡的类型
	  cardlength:银行卡的长度
	  cardprefixnum:银行卡前缀
	  cardname:银行卡名称
	  bankname:归属银行
	  banknum:内部结算代码
	 * @return  
	 * @return Map<String,String> 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午9:07:01]  
	 * @throws  
	 */
	public static Map<String, String> getBankCardInfo(String bankNumber){
		String httpUrl = "http://apis.baidu.com/datatiny/cardinfo/cardinfo";
		String httpArg = "cardnum="+bankNumber;
		String jsonResult = request(httpUrl, httpArg);
		JSONObject jsonObject = JSONObject.parseObject(jsonResult);
		JSONObject data_result = jsonObject.getJSONObject("data");
		cardtype = data_result.getString("cardtype");
		cardprefixnum = data_result.getString("cardprefixnum");
		cardname = data_result.getString("cardname");
		banknum = data_result.getString("banknum");
		cardlength = data_result.getString("cardlength");
		return getbankInfo();
		
	}

	
	private static Map<String,String> getbankInfo(){
		map = new HashMap<String, String>();
		map.put("cardtype", cardtype);
		map.put("cardprefixnum", cardprefixnum);
		map.put("cardname", cardname);
		map.put("banknum", banknum);
		map.put("cardlength", cardlength);
		return map;
	}
	
	/**
	 * @Title: request 
	 * @Description: TODO 
	 * @param httpUrl
	 * @param httpArg
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午8:53:39]  
	 * @throws  
	 */
	private static String request(String httpUrl, String httpArg) {
	    BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    httpUrl = httpUrl + "?" + httpArg;
	    try {
	        URL url = new URL(httpUrl);
	        HttpURLConnection connection = (HttpURLConnection) url
	                .openConnection();
	        connection.setRequestMethod("GET");
	        connection.setRequestProperty("apikey",  sysConfig.apikey);
	        connection.connect();
	        InputStream is = connection.getInputStream();
	        reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
	        String strRead = null;
	        while ((strRead = reader.readLine()) != null) {
	            sbf.append(strRead);
	            sbf.append("\r\n");
	        }
	        reader.close();
	        result = sbf.toString();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return result;
	}
}
