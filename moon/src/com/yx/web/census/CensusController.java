package com.yx.web.census;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yx.entity.YParams;
import com.yx.service.census.ICensusService;
import com.yx.service.content.IContentService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.web.census.CensusController.java]  
 * @ClassName:    [CensusController]   
 * @Description:  访问统计 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月25日 下午6:12:44]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月25日 下午6:12:44]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/admin/census")
public class CensusController {

	@Autowired
	private ICensusService censusService;
	
	
	@RequestMapping("list")
	public String list(){
		return "census/list";
	}
	
	@ResponseBody
	@RequestMapping("datas")
	public List<HashMap<String, Object>> datas(YParams yParams){
			return censusService.findModelBtns(yParams);
		
	}
	
	
}
