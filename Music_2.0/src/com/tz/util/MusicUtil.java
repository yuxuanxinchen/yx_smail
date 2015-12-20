package com.tz.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

/**
 * ���ָ�ʽ��������� 
 * @author arry
 * @version v1.0
 * 
 */
public class MusicUtil {

	/**
	 * ��ȡ���ָ�� 
	 * @param request ����������
	 * @return String ���
	 * 
	 */
	public static String getLrc(HttpServletRequest request){
		
		StringBuffer buffer = new StringBuffer();
		
		// ��ȡ��������
		String musicName = request.getParameter("name"); 
		// ��ȡ���ֶ�Ӧ�ĸ��·��
		String filePath = request.getRealPath("mp3") + "/" + musicName + ".lrc";
		
		FileInputStream fis = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		
		try{
			// ��ʼ��ȡ����ļ�
			fis = new FileInputStream(filePath);
			isr = new InputStreamReader(fis, "utf-8");
			// ��ȡ����ļ������������ж�ȡ
			br = new BufferedReader(isr);
			
			// ������ʱ�ļ�
			String temp = null;
			while((temp = br.readLine()) != null){
				buffer.append(temp);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		} finally{
			try {
				if(br != null){
					br.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(fis != null){
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return buffer.toString();
		
	}
	
	// java���
	public static void main(String[] args){
		
		System.out.println("�װ���ͬѧ�ǣ�������Ϻã� �Ұ����� ^_^");
		
	}
	
}
