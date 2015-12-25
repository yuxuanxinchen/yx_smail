
package com.yuxuan.action.code;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.opensymphony.xwork2.ActionSupport;
import com.yuxuan.utils.TzCodeUtil;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [spring_10] 
 * @Package:      [com.yuxuan.web.code.CodeController.java]  
 * @ClassName:    [CodeController]   
 * @Description:  [һ�仰��������Ĺ���]   
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015��9��13�� ����2:15:33]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015��9��13�� ����2:15:33]   
 * @UpdateRemark: [˵�������޸�����]  
 * @Version:      [v1.0]
 */
@Controller
public class CodeController {

	@ResponseBody
	@RequestMapping("/code")
	public String code() throws IOException{
		TzCodeUtil codeUtil = new TzCodeUtil();
		String code = codeUtil.createCode();
		System.out.println(code);
		ByteArrayOutputStream ouputArrayOutputStream = new ByteArrayOutputStream();
		ImageOutputStream imageOutputStream = ImageIO.createImageOutputStream(ouputArrayOutputStream);
		ImageIO.write(codeUtil.getBuffImg(), "JPEG",imageOutputStream);
		imageOutputStream.close();
	     return "SUCCESS";
	
	}	
}
