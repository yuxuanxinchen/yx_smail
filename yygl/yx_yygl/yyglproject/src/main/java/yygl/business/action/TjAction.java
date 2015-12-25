package yygl.business.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yygl.base.pojo.po.Dictinfo;
import yygl.base.pojo.vo.ActiveUser;
import yygl.base.pojo.vo.PageQuery;
import yygl.base.process.result.DataGridResultInfo;
import yygl.base.service.SystemConfigService;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;
import yygl.business.service.BusinessService;
import yyglutil.util.MyUtil;


/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.action.TjAction.java]  
 * @ClassName:    [TjAction]   
 * @Description: 统计分析
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月1日 下午3:27:01]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月1日 下午3:27:01]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/tj")
public class TjAction {

	@Autowired
	private SystemConfigService systemConfigService;

	@Autowired
	private BusinessService businessService;

	/**
	 * @Title: businesslist 
	 * @Description:  交易明细查询
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:32:27]  
	 * @throws  
	 */
	@RequestMapping("/businesslist")
	public String businesslist(Model model) throws Exception {
		// 采购状态字典
		/*List<Dictinfo> cgztlist = systemConfigService.findDictinfoByType("011");
		model.addAttribute("cgztlist", cgztlist);*/
		model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));// 默认当前年份
		return "/business/tj/businesslist";
	}

	/**
	 * @Title: businesslist_result 
	 * @Description: TODO 
	 * @param activeUser
	 * @param year
	 * @param yycgdQueryVo
	 * @param page
	 * @param rows
	 * @return
	 * @throws Exception  
	 * @return DataGridResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:32:19]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("/businesslist_result")
	public DataGridResultInfo businesslist_result(ActiveUser activeUser, String year,YycgdQueryVo yycgdQueryVo, int page, int rows) throws Exception {
		String sysid = activeUser.getSysid();	// 单位id
		String groupid = activeUser.getGroupid();// 用户类型
		int total = businessService.findYybusinessCount(year, sysid, groupid,yycgdQueryVo);// 列表总数
		PageQuery pageQuery = new PageQuery();// 分页参数
		pageQuery.setPageParams(total, rows, page);
		yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数
		List<YycgdmxCustom> list = businessService.findYybusinessList(year,sysid, groupid, yycgdQueryVo);
		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);
		return dataGridResultInfo;
	}

	/**
	 * @Title: groupbyypxx 
	 * @Description: 按药品统计
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:31:18]  
	 * @throws  
	 */
	@RequestMapping("/groupbyypxx")
	public String groupbyypxx(Model model) throws Exception {
		List<Dictinfo> cgztlist = systemConfigService.findDictinfoByType("011");// 采购状态字典
		model.addAttribute("cgztlist", cgztlist);
		model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));// 默认当前年份
		return "/business/tj/groupbyypxx";
	}
	
	/**
	 * @Title: groupbyypxx_result 
	 * @Description: 信息
	 * @param activeUser
	 * @param year
	 * @param yycgdQueryVo
	 * @param page
	 * @param rows
	 * @return
	 * @throws Exception  
	 * @return DataGridResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月1日 下午3:30:53]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("/groupbyypxx_result")
	public DataGridResultInfo groupbyypxx_result(ActiveUser activeUser, String year,YycgdQueryVo yycgdQueryVo, int page, int rows) throws Exception {
		String sysid = activeUser.getSysid();// 单位id
		String groupid = activeUser.getGroupid();// 用户类型
		int total = businessService.findYybusinessGroupbyYpxxCount(year, sysid, groupid, yycgdQueryVo);// 列表总数
		PageQuery pageQuery = new PageQuery();// 分页参数
		pageQuery.setPageParams(total, rows, page);
		yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数
		List<YycgdmxCustom> list = businessService.findYybusinessGroupbyYpxxList(year, sysid, groupid, yycgdQueryVo);
		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);
		return dataGridResultInfo;
	}

}
