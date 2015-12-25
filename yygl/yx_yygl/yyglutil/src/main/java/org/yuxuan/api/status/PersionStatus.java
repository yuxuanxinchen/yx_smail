package org.yuxuan.api.status;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.yuxuan.utils.sysConfig;

import com.alibaba.fastjson.JSONObject;

public class PersionStatus {
	
	private static String address ;
	private static String sex ;
	private static String birthday ;
	private static String personStatusNumber ;
	private static String httpUrl = "http://apis.baidu.com/apistore/idservice/id";
	private static Map<String, String> map = null;


    public static Map<String, String> getPersonStatusInfo(String personNumber){
    	String jsonResult = request(httpUrl, personNumber);
        JSONObject jsonObject = JSONObject.parseObject(jsonResult);;
        JSONObject ar =  jsonObject.getJSONObject("retData");
        address = ar.getString("address");
        sex = ar.getString("sex");
        birthday = ar.getString("birthday");
    	return persionInfo();
    }

    private static Map<String, String> persionInfo(){
    	map = new HashMap<String, String>();
    	map.put("address", address);
    	map.put("sex", sex);
    	map.put("birthday", birthday);
    	return map;
    }


	private static String request(String httpUrl, String httpArg) {
	    BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    httpUrl = httpUrl + "?" + "id="+httpArg;
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

	public static String getAddress() {
		return address;
	}
	public static String getSex() {
		return sex;
	}
	public static String getBirthday() {
		return birthday;
	}
	public static void setPersonStatusNumber(String personStatusNumber) {
		PersionStatus.personStatusNumber = personStatusNumber;
	}
	
}
