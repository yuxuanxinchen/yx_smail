package yygl.base.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.HashAttributeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yygl.base.pojo.po.Dictinfo;
import yygl.base.pojo.vo.PageQuery;
import yygl.base.pojo.vo.SysuserCustom;
import yygl.base.pojo.vo.SysuserQueryVo;
import yygl.base.process.result.DataGridResultInfo;
import yygl.base.process.result.ExceptionResultInfo;
import yygl.base.process.result.ResultInfo;
import yygl.base.process.result.ResultUtil;
import yygl.base.process.result.SubmitResultInfo;
import yygl.base.service.SystemConfigService;
import yygl.base.service.UserService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.base.action.UserAction.java]  
 * @ClassName:    [UserAction]   
 * @Description:  系统用户管理
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月23日 下午2:06:41]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月23日 下午2:06:41]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("user")
public class UserAction {

	@Autowired
	private UserService userService;
	
	@Autowired
	private SystemConfigService systemConfigService;
	
	//用户查询页面
	@RequestMapping("/queryuser")
	public String queryuser(Model model)throws Exception{
		//将页面所需要的数据取出，传到页面
		List<Dictinfo> lists =systemConfigService.findDictinfoByType("s01");
		model.addAttribute("grouplist", lists);
		return "/base/user/queryuser";
	}
	

	/**
	 * @Title: queryuser_result 
	 * @Description: 	//用户查询页面的结果集   最终DataGridResultInfo通过@ResponseBody将java对象转成json
	 * @param sysuserQueryVo
	 * @param page
	 * @param rows
	 * @return
	 * @throws Exception  
	 * @return DataGridResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午4:47:40]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("/queryuser_result")
	public DataGridResultInfo queryuser_result(SysuserQueryVo sysuserQueryVo,int page, int rows) throws Exception {
		// 非空校验
		sysuserQueryVo = sysuserQueryVo != null ? sysuserQueryVo:new SysuserQueryVo();
		// 查询列表的总数
		int total = userService.findSysuserCount(sysuserQueryVo);
 
		PageQuery pageQuery = new PageQuery();
		pageQuery.setPageParams(total, rows, page);
        sysuserQueryVo.setPageQuery(pageQuery);
		// 分页查询，向sysuserQueryVo中传入pageQuery
		List<SysuserCustom> list = userService.findSysuserList(sysuserQueryVo);

		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		// 填充 total
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);
		// 填充 rows
		return dataGridResultInfo;
	}
	
	/**
	 * @Title: addsysuser 
	 * @Description:添加页面
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:56:16]  
	 * @throws  
	 */
	@RequestMapping("/addsysuser")
	public String addsysuser(Model model)throws Exception{
		return "/base/user/addsysuser";
	}
	
	/**
	 * @Title: addSysuserSubmit 
	 * @Description: 提交的用户数据
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午7:01:10]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("addsysusersubmit")
	public SubmitResultInfo addSysuserSubmit(SysuserQueryVo sysuserCustom)throws Exception{
		userService.insertSysuer(sysuserCustom.getSysuserCustom());
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 906, null));
	}
	
	/**
	 * @Title: deletesysuer 
	 * @Description: 删除用户
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午3:55:25]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("deleteuser")
	public SubmitResultInfo deletesysuer(String id) throws Exception{
		userService.deleteSysuser(id);
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 906, null));
	}
	
	
	/**
	 * @Title: edituser 
	 * @Description:修改页面 
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午5:51:41]  
	 * @throws  
	 */
	@RequestMapping("/edituser")
	public String edituser(Model model,String id) throws Exception{
		SysuserCustom sysuserCustom = userService.searchSysuserById(id);
		model.addAttribute("sysuserCustom", sysuserCustom);
		return "/base/user/editsysuser";
	}
	
	/**
	 * @Title: editusersubmit 
	 * @Description: 提交 
	 * @param model
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午6:08:11]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("/editsysusersubmit")
	public SubmitResultInfo editusersubmit(String id , SysuserQueryVo sysuserQueryVo) throws Exception{
		userService.updateSysuser(id, sysuserQueryVo.getSysuserCustom());
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 906, null));
	}
	
	
}
