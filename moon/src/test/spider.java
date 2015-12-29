package test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.io.filefilter.OrFileFilter;
import org.apache.taglibs.standard.lang.jstl.NamedValue;
import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;
import org.htmlparser.util.SimpleNodeIterator;
import org.junit.Test;

public class spider{
	
	public static void main(String[] args) throws HttpException, IOException {
		
		File file = new File("G:/spider.txt");
		if(!file.exists())file.createNewFile();
		
		
		HttpClient httpClient = new HttpClient();
		httpClient.getHttpConnectionManager().getParams().setConnectionTimeout(5000);
		
		GetMethod gMethod = new GetMethod("http://news.163.com/");
		gMethod.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
		gMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
		
		//状态值
		int statusCode = httpClient.executeMethod(gMethod);
		
		if(statusCode!=HttpStatus.SC_OK){
			System.err.println("Method failed" + gMethod.getStatusLine());
		}
		
		//处理HTTP响应内容
		Header[] headers = gMethod.getRequestHeaders();
		for (Header header : headers) {
			System.out.println(header.getName()+"-----"+header.getValue());
			
			//读取http响应内容，这里简单打印网页内容
			byte[] responseBody = gMethod.getResponseBody();
			System.out.println(new String (responseBody,"UTF-8"));
			InputStream inputStream = gMethod.getResponseBodyAsStream();
			OutputStream op = new FileOutputStream(file);
			int c = 0;
			while((c=inputStream.read(responseBody))!=-1){
				op.write(responseBody, 0, c);
			}
			op.close();
			inputStream.close();
			
		}
		
		gMethod.releaseConnection();
		
	}
	
	
	
}
