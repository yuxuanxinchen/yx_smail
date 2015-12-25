package org.yuxuan.api.phone.attribution;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.yuxuan.utils.sysConfig;
import com.alibaba.fastjson.JSONObject;
public class PhoneAttribution {


		private static String httpUrl = sysConfig.httpUrl;
		private static String errNum ;
		private static String errMsg ;
		private static String province;
		private static String carrier ;
		private static String telString ;
		
		/**
		 * @throws IllegalAccessException 
		 * @throws InstantiationException 
		 * @Title: getPhoneAttributionPlace 
		 * @Description: 返回数据
		 * @return  
		 * @return String 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午7:13:32]  
		 * @throws  
		{"errNum":0,"errMsg":"success","retData":{"telString":"15568813450","province":"\u5409\u6797","carrier":"\u5409\u6797\u8054\u901a"}}
		 */
	public static String getPhoneAttributionPlace(String httpArg) {
		try {
			String jsonResult = request(httpUrl, "tel=" + httpArg);
			JSONObject jsonObject = JSONObject.parseObject(jsonResult);
			JSONObject result = jsonObject.getJSONObject("retData");
			errNum = jsonObject.getString("errNum");
			errMsg = jsonObject.getString("errMsg");
			province = result.getString("province");
			carrier = result.getString("carrier");
			telString = result.getString("telString");
			return getPhoneInfo();
		} catch (Exception e) {
			if (sysConfig.isExceptionShow) {
				e.printStackTrace();
			}
		}
		return null;
	}
		
		/**
		 * @Title: getPhoneInfo 
		 * @Description:返回信息
		 * @return  
		 * @return String 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月30日 下午7:49:35]  
		 * @throws  
		 */
		public static String getPhoneInfo(){
			return getCarrier();
		}
		
	/**
	 * @Title: request 
	 * @Description: 归属地获取
	 * @param httpUrl
	 * @param httpArg
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月30日 下午7:08:41]  
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
	        // 填入apikey到HTTP header
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
	
	
	public static String getErrNum() {
		return errNum;
	}
	public static String getErrMsg() {
		return errMsg;
	}
	public static String getProvince() {
		return province;
	}
	public static String getCarrier() {
		return carrier;
	}
	public static String getTelString() {
		return telString;
	}
}
