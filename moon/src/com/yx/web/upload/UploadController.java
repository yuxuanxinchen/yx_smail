package com.yx.web.upload;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yx.utils.TmFileUtil;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.upload.UploadController.java]  
 * @ClassName:    [UploadController]   
 * @Description:  件上传
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月30日 下午2:31:04]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月30日 下午2:31:04]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("admin/uplod")
public class UploadController {

	   
	
	
	@RequestMapping(value="/ups")
	public String upload() {
		return "uplod/yupload";
		}
		
		@ResponseBody
		@RequestMapping(value="/fileupload")
		public String upload(@RequestParam("doc") MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException, JSONException{
			if(!file.isEmpty()){
				String path = request.getRealPath("/upload/f_imgs");
				File pfile = new File(path);
				if(!pfile.exists()){
					pfile.mkdir();
				}
				
				HashMap<String,Object> map = new HashMap<String, Object>();
				long size = file.getSize();
				String sizeString = TmFileUtil.countFileSize(file.getSize());
				String oldName = file.getOriginalFilename();
				String ext = TmFileUtil.getExtNoPoint(oldName);
				String newFileName = TmFileUtil.generateFileName(oldName, 10, "yyyyMMddHHmmss");
				String url = "upload/f_imgs"+newFileName;
				file.transferTo(new File(pfile,newFileName));
				map.put("oldName", oldName);
				map.put("size", size);
				map.put("name",newFileName);
				map.put("url", url);
				map.put("ext",ext);
				map.put("sizeString", sizeString);
				 return JSONUtil.serialize(map);
			}
			   return null;
	}
		
}
