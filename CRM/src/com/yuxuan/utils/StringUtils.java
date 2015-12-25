package com.yuxuan.utils;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


 /**
  * 
  * Simple to Introduction  
  * @ProjectName:  [yx] 
  * @Package:      [yx.StringUtils.java]  
  * @ClassName:    [StringUtils]   
  * @Description:  字符串工具类  
  * @Author:       [yuxuan]   
  * @CreateDate:   [2015年4月20日 下午4:19:46]   
  * @UpdateUser:   [yuxuan]   
  * @UpdateDate:   [2015年4月20日 下午4:19:46]   
  * @UpdateRemark: [说明本次修改内容]  
  * @Version:      [v1.0]
  */
public class StringUtils {
	/**
	 * 将一个日期转换成String 
	 * 方法名：getDateString<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月11日-下午9:59:14 <BR>
	 * 
	 * @param date
	 * @param pattern
	 * @return String<BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static String getFormatDateToString(Date date, String pattern) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		return simpleDateFormat.format(date);
	}

	/**
	 * 将日期字符串转换成Date 方法名：getDateString<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月11日-下午10:04:06 <BR>
	 * 
	 * @param dateString
	 * @param pattern
	 * @return
	 * @throws ParseException
	 *             Date<BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static Date parseStringToDate(String dateString, String pattern)
			throws ParseException {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		return simpleDateFormat.parse(dateString);
	}

	/**
	 * 
	 * 将小数格式化成字符串，会进行四舍五入 如：3656.4554===结果:3656.46<BR>
	 * 方法名：formatDoubleToString<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月12日-下午9:12:01 <BR>
	 * 
	 * @param dou
	 * @return String<BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static String formatDoubleToString(double dou,String format) {
		if(isEmpty(format))format = "#.##";
		DecimalFormat decimalFormat = new DecimalFormat(format);
		String string = decimalFormat.format(dou);// �������룬�����һ
		return string;
	}
	/**
	 * 判断字符串是否为空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		return null == str || str.length() == 0 || "".equals(str)
				|| str.matches("\\s*");
	}
	
	/**
	 * 非空判断
	 * (这里用一句话描述这个方法的作用)<BR>
	 * 方法名：isNotEmpty<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月12日-下午9:36:18 <BR>
	 * @param str
	 * @return boolean<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}
	
	
	/**
	 * 百分比转换
	 * 方法名：getPercent<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月12日-下午9:50:46 <BR>
	 * @param num
	 * @param totalCount
	 * @param format
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public static String getPercent(int num,double totalCount,String...objects){
		String format = "#.##";
		if(objects!=null && objects.length>0){
			format = objects[0];
		}
		return StringUtils.formatDoubleToString((num/totalCount)*100,format)+"%";
	}
	
	/**
	 * 百分比转换
	 * 方法名：getPercent<BR>
	 * 创建人：xuchengfei <BR>
	 * 时间：2014年8月12日-下午9:50:46 <BR>
	 * @param num 当前的数字
	 * @param totalCount 总数
	 * @param format 
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public static String getPercent(int num,float totalCount,String...objects){//��̬����
		String format = "#.##";
		if(objects!=null && objects.length>0){
			format = objects[0];
		}
		return StringUtils.formatDoubleToString((num/totalCount)*100,format)+"%";
	}
	
	/**
	 * 
	 * @Title: countToZH 
	 * @Description: 统计每个英文单词出现的个数 
	 * @param @param str
	 * @param @param index
	 * @param @return  
	 * @return String[] 
	 * @Author:[yuxuan]
	 * @Date:[2015年4月21日 下午5:45:57]  
	 * @throws  
	 */
	public static String[] getCountToZH(String str, int index) {  
        str = str.replace(" ", "").replace("，", "").replace("。", "");  
        String[] re_str = new String[index];  
        char[] chs = str.toCharArray();  
        ArrayList<String> array = new ArrayList<String>();  
        for (char ch : chs) {  
            array.add(String.valueOf(ch));  
        }  
        TreeMap<String, Integer> map = new TreeMap<String, Integer>();  
        for (String tstr : array) {  
            Integer val = map.get(tstr);  
            if (val == null) {  
                map.put(tstr, 1);  
            } else {  
                val++;  
                map.put(tstr, val);  
            }  
        }  
        TreeSet<String> sortSet = new TreeSet<String>();  
        Set<Map.Entry<String, Integer>> sme = map.entrySet();  
        for (Map.Entry<String, Integer> me : sme) {  
            String s = me.getValue().toString() + me.getKey();  
            sortSet.add(s);  
        }  
        int o = sortSet.size();  
        int c = 0;  
        for (int i = o - index; i < sortSet.size();) {  
            String te = sortSet.last();  
            sortSet.remove(te);  
            String temp = (o - sortSet.size()) + "："  
                    + te.replaceAll("[^\\d]", "") + "  "  
                    + te.replaceAll("[\\d+]", "");  
            re_str[c++] = temp;  
        }  
        return re_str;  
    } 
	
	/**
	 * @Title: unicode2String 
	 * @Description: unicode 转字符串
	 * @param unicode 
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年9月7日 上午10:03:02]  
	 * @throws  
	 */
	public static String unicode2String(String unicode) {
	    StringBuffer string = new StringBuffer();
	    String[] hex = unicode.split("\\\\u");
	    for (int i = 1; i < hex.length; i++) {
	        // 转换出每一个代码点
	        int data = Integer.parseInt(hex[i], 16);
	        // 追加成string
	        string.append((char) data);
	    }
	    return string.toString();
	}
	
	
	/**
	 * @Title: string2Unicode 
	 * @Description:字符串转unicode
	 * @param string
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年9月7日 上午10:12:30]  
	 * @throws  
	 */
	public static String string2Unicode(String string) {
	    StringBuffer unicode = new StringBuffer();
	    for (int i = 0; i < string.length(); i++) {
	        // 取出每一个字符
	        char c = string.charAt(i);
	        // 转换为unicode
	        unicode.append("\\u" + Integer.toHexString(c));
	    }
	    return unicode.toString();
	}
	
    /**
     * 	
     * @Title: countToEng 
     * @Description: 统计每个英文单词出现的个数 
     * @param @param str
     * @param @param index
     * @param @return  
     * @return String[] 
     * @Author:[yuxuan]
     * @Date:[2015年4月21日 下午5:53:07]  
     * @throws  
     */
	 public static String[] getCountToEng(String str, int index) {  
	        String[] re_str = new String[index];  
	        ArrayList<String> array = new ArrayList<String>();  
	        Pattern pattern = Pattern.compile("\\b[\\w+\\-']+\\b");  
	        Matcher matcher = pattern.matcher(str);  
	        while (matcher.find()) {  
	            array.add(matcher.group());  
	        }  
	        TreeMap<String, Integer> map = new TreeMap<String, Integer>();  
	        for (String tstr : array) {  
	            Integer val = map.get(tstr);  
	            if (val == null) {  
	                map.put(tstr, 1);  
	            } else {  
	                val++;  
	                map.put(tstr, val);  
	            }  
	        }  
	        TreeSet<String> sortSet = new TreeSet<String>();  
	        Set<Map.Entry<String, Integer>> sme = map.entrySet();  
	        for (Map.Entry<String, Integer> me : sme) {  
	            String s = me.getValue().toString() + me.getKey();  
	            sortSet.add(s);  
	        }  
	        int o = sortSet.size();  
	        int c = 0;  
	        for (int i = o - index; i < sortSet.size();) {  
	            String te = sortSet.last();  
	            sortSet.remove(te);  
	            String temp = (o - sortSet.size()) + "："  
	                    + te.replaceAll("[^\\d]", "") + "  "  
	                    + te.replaceAll("[\\d+]", "");  
	            re_str[c++] = temp;  
	        }  
	        return re_str;  
	    }  
	 
	 /**
	  * 
	  * @Title: getEnCount 
	  * @Description: 统计单词的总个数
	  * @param @param str
	  * @param @return  
	  * @return int 
	  * @Author:[yuxuan]
	  * @Date:[2015年4月21日 下午6:50:20]  
	  * @throws  
	  */
	 public static int getEnWordCount(String str){
			int i,num=0,word=0;
			char[] st=str.toCharArray();
			for(i=0;i<st.length;i++)
				if(st[i]==' '){  
					word=0;      
				}else if(word==0){
					word=1;
					num++;            
				}
			return num;  
		}
	 /**
	  * @Title: MD5 
	  * @Description: TODO 
	  * @param message
	  * @return  
	  * @return String 
	  * @Author:[yuxuan]
	  * @Date:[2015年5月10日 下午7:53:04]  
	  * @throws  
	  */
	/* public String MD5(String message){
		MessageDigest me;
			try {
				me = MessageDigest.getInstance("md5");
			} catch (Exception e) {
				  throw new RuntimeException(e);
			}
			byte[] md5=me.digest(message.getBytes());
			BASE64Encoder base64Encoder = new BASE64Encoder();
			BASE64Encoder encoder=base64Encoder;
			return  encoder.encode(md5);
		}*/
		
	 private final static String[] hex = { "00", "01", "02", "03", "04", "05","06", "07", "08", "09", "0A", "0B", "0C", "0D", "0E", "0F", "10","11", "12", "13", "14", "15", "16", "17", "18", "19", "1A", "1B","1C", "1D", "1E", "1F", "20", "21", "22", "23", "24", "25", "26","27", "28", "29", "2A", "2B", "2C", "2D", "2E", "2F", "30", "31","32", "33", "34", "35", "36", "37", "38", "39", "3A", "3B", "3C","3D", "3E", "3F", "40", "41", "42", "43", "44", "45", "46", "47","48", "49", "4A", "4B", "4C", "4D", "4E", "4F", "50", "51", "52","53", "54", "55", "56", "57", "58", "59", "5A", "5B", "5C", "5D","5E", "5F", "60", "61", "62", "63", "64", "65", "66", "67", "68","69", "6A", "6B", "6C", "6D", "6E", "6F", "70", "71", "72", "73","74", "75", "76", "77", "78", "79", "7A", "7B", "7C", "7D", "7E","7F", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89","8A", "8B", "8C", "8D", "8E", "8F", "90", "91", "92", "93", "94","95", "96", "97", "98", "99", "9A", "9B", "9C", "9D", "9E", "9F","A0", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "AA","AB", "AC", "AD", "AE", "AF", "B0", "B1", "B2", "B3", "B4", "B5","B6", "B7", "B8", "B9", "BA", "BB", "BC", "BD", "BE", "BF", "C0","C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "CA", "CB","CC", "CD", "CE", "CF", "D0", "D1", "D2", "D3", "D4", "D5", "D6","D7", "D8", "D9", "DA", "DB", "DC", "DD", "DE", "DF", "E0", "E1","E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "EA", "EB", "EC","ED", "EE", "EF", "F0", "F1", "F2", "F3", "F4", "F5", "F6", "F7","F8", "F9", "FA", "FB", "FC", "FD", "FE", "FF" };
	 private final static byte[] val = { 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x00, 0x01,0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F,0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F };
		
	   /**
	    * @Title: escape 
	    * @Description: JavaScript escape函数算法
	    * @param value
	    * @return  
	    * @return String 
	    * @Author:[yuxuan]
	    * @Date:[2015年6月24日 上午9:32:16]  
	    * @throws  
	    */
		public static String escape(String value){
			StringBuffer buffer = new StringBuffer();
			int length = value.length();
			int ch = 0;
			for (int i = 0; i < length; i++) {
				ch = value.charAt(i);
				if ('A' <= ch && ch <= 'Z')buffer.append((char) ch);
				else if ('a' <= ch && ch <= 'z')buffer.append((char) ch);
				else if ('0' <= ch && ch <= '9')buffer.append((char) ch);
				else if (ch == '-' || ch == '_'	|| ch == '.' || ch == '!' || ch == '~' || ch == '*' || ch == '\'' || ch == '(' || ch == ')')buffer.append((char) ch);
				else if (ch <= 0x007F) {buffer.append('%');buffer.append(hex[ch]);}
				else{buffer.append('%');buffer.append('u');buffer.append(hex[(ch >>> 8)]);buffer.append(hex[(0x00FF & ch)]);}
			}
			return buffer.toString();
		}
		
	    /**
	     * @Title: unescape 
	     * @Description: JavaScript unescape函数算法
	     * @param value
	     * @return  
	     * @return String 
	     * @Author:[yuxuan]
	     * @Date:[2015年6月24日 上午9:32:01]  
	     * @throws  
	     */
		public static String unescape(String value) {
			StringBuffer buffer = new StringBuffer();
			int i = 0;
			int length = value.length();
			int ch = 0;
			while (i < length) {
				ch = value.charAt(i);
				if ('A' <= ch && ch <= 'Z')buffer.append((char) ch);
				else if ('a' <= ch && ch <= 'z')buffer.append((char) ch);
				else if ('0' <= ch && ch <= '9')buffer.append((char) ch);
				else if (ch == '-' || ch == '_' || ch == '.' || ch == '!' || ch == '~' || ch == '*' || ch == '\'' || ch == '(' || ch == ')')buffer.append((char) ch);
				else if (ch == '%') {
					int cint = 0;
					if('u' != value.charAt(i + 1)) {
						cint = (cint << 4) | val[value.charAt(i + 1)];
						cint = (cint << 4) | val[value.charAt(i + 2)];
						i += 2;
					}
					else {
						cint = (cint << 4) | val[value.charAt(i + 2)];
						cint = (cint << 4) | val[value.charAt(i + 3)];
						cint = (cint << 4) | val[value.charAt(i + 4)];
						cint = (cint << 4) | val[value.charAt(i + 5)];
						i += 5;
					}
					buffer.append((char) cint);
				}
				else buffer.append((char) ch);
				i++;
			}
			return buffer.toString();
		}
		
		/**
		 * @Title: encrypt 
		 * @Description: 加密计算
		 * @param bytes
		 * @return  
		 * @return String 
		 * @Author:[yuxuan]
		 * @Date:[2015年6月24日 上午9:33:49]  
		 * @throws  
		 */
		private static String encrypt(byte[] bytes){
			String value = "";
			String stmp = "";
			for (int i = 0;i < bytes.length;i++){
				stmp = Integer.toHexString(bytes[i] & 0XFF);
				if (stmp.length() == 1)value = value + "0" + stmp;
				else value = value + stmp;
			}
			return value.toUpperCase();
	    }
		
		/**
		 * @Title: doEncrypt 
		 * @Description: MD5加密
		 * @param password
		 * @return  
		 * @return String 
		 * @Author:[yuxuan]
		 * @Date:[2015年6月24日 上午9:34:01]  
		 * @throws  
		 */
		public static String doEncrypt(String password){
			try{
				MessageDigest digest = MessageDigest.getInstance("MD5");
				byte[] bytes = digest.digest(password.getBytes());
				password = StringUtils.encrypt(bytes);
			}
			catch(Exception e){
				e.printStackTrace();
				password = null;
			}
			return password;
		}
		
		/**
		 * @Title: createDOM 
		 * @Description: 返回XML
		 * @return  
		 * @return String 
		 * @Author:[yuxuan]
		 * @Date:[2015年6月24日 上午9:35:57]  
		 * @throws  
		 */
		private ArrayList contentList = new ArrayList();//存放主XML字符串
		public String str[];
		public String createDOM(){
			String xml = "<?xml version=\"1.0\" encoding=\"GB2312\"?>\t\n";
			xml += "<RootSet>\t\n";
			String[] values = null;
			for(int i=0;i<contentList.size();i++){
				xml += "  <RowSet index=\"" + i + "\">\t\n";
				values = (String[])contentList.get(i);
				for(int k=0;k<values.length;k++){
					xml += "    <ColumnSet index=\"" + k + "\" Filed=\"" + str[k] + "\">";
					xml += values[k]; 
					xml += "</ColumnSet>\t\n";
				}
				xml += "  </RowSet>\t\n";
			}
			for(int i=0;i<str.length;i++){
				xml += "  <FieldSet index=\"" + i + "\">" + str[i] + "</FieldSet>\t\n";
			}
			xml += "</RootSet>\t\n";
			return xml;
		}
		
		
		
	 
}



