package yygl.business.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yygl.base.pojo.po.Dictinfo;
import yygl.base.pojo.vo.ActiveUser;
import yygl.base.pojo.vo.PageQuery;
import yygl.base.process.context.Config;
import yygl.base.process.result.DataGridResultInfo;
import yygl.base.process.result.ExceptionResultInfo;
import yygl.base.process.result.ResultInfo;
import yygl.base.process.result.ResultUtil;
import yygl.base.process.result.SubmitResultInfo;
import yygl.base.service.SystemConfigService;
import yygl.business.pojo.po.GysypmlControl;
import yygl.business.pojo.vo.GysypmlCustom;
import yygl.business.pojo.vo.GysypmlQueryVo;
import yygl.business.pojo.vo.YpxxCustom;
import yygl.business.service.YpmlService;

 /**
  * 
  * Simple to Introduction  
  * @ProjectName:  [yyglproject] 
  * @Package:      [yygl.business.action.YpmlAction.java]  
  * @ClassName:    [YpmlAction]   
  * @Description:  供货商药品目录   
  * @Author:       [yuxuan]   
  * @CreateDate:   [2015年11月26日 下午6:34:23]   
  * @UpdateUser:   [yuxuan]   
  * @UpdateDate:   [2015年11月26日 下午6:34:23]   
  * @UpdateRemark: [说明本次修改内容]  
  * @Version:      [v1.0]
  */
@Controller
@RequestMapping("/ypml")
public class YpmlAction {

	@Autowired
	private SystemConfigService systemConfigService;

	@Autowired
	private YpmlService ypmlService;

	/**
	 * @Title: querygysypml 
	 * @Description:查询页面
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月26日 下午6:35:32]  
	 * @throws  
	 */
	@RequestMapping("/querygysypml")
	public String querygysypml(Model model) throws Exception {
		// 药品类别
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");
		model.addAttribute("yplblist", yplblist);

		return "/business/ypml/querygysypml";
	}

	/**
	 * @Title: querygysypml_result 
	 * @Description:查询列表结果集,json
	 * @param session
	 * @param gysypmlQueryVo
	 * @param page
	 * @param rows
	 * @return
	 * @throws Exception  
	 * @return DataGridResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月26日 下午6:36:03]  
	 * @throws  
	 */
	 @ResponseBody
	@RequestMapping("/querygysypml_result")
	public DataGridResultInfo querygysypml_result(HttpSession session,
			GysypmlQueryVo gysypmlQueryVo,int page, int rows) throws Exception {

		ActiveUser activeUser = (ActiveUser) session.getAttribute(Config.ACTIVEUSER_KEY);// 当前用户
		String usergysid = activeUser.getSysid();// 单位id// 用户所属的单位
		int total = ypmlService.findGysypmlCount(usergysid, gysypmlQueryVo);// 列表的总数
		PageQuery pageQuery = new PageQuery();// 分页参数
		pageQuery.setPageParams(total, rows, page);
		gysypmlQueryVo.setPageQuery(pageQuery);// 设置分页参数
		List<GysypmlCustom> list = ypmlService.findGysypmlList(usergysid,gysypmlQueryVo);// 分页查询列表
		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);
		return dataGridResultInfo;
	}

	// 查询页面
	@RequestMapping("/queryaddgysypml")
	public String queryaddgysypml(Model model) throws Exception {
		// 药品类别
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");
		model.addAttribute("yplblist", yplblist);
		return "/business/ypml/queryaddgysypml";
	}

	// 查询列表结果集,json
	@RequestMapping("/queryaddgysypml_result")
	public @ResponseBody
	DataGridResultInfo queryaddgysypml_result(HttpSession session,
			GysypmlQueryVo gysypmlQueryVo,// 查询条件
			int page, int rows) throws Exception {

		// 当前用户
		ActiveUser activeUser = (ActiveUser) session
				.getAttribute(Config.ACTIVEUSER_KEY);
		// 用户所属的单位
		String usergysid = activeUser.getSysid();// 单位id

		// 列表的总数
		int total = ypmlService.findAddGysypmlCount(usergysid, gysypmlQueryVo);

		// 分页参数
		PageQuery pageQuery = new PageQuery();
		pageQuery.setPageParams(total, rows, page);
		gysypmlQueryVo.setPageQuery(pageQuery);// 设置分页参数

		// 分页查询列表
		List<GysypmlCustom> list = ypmlService.findAddGysypmlList(usergysid,gysypmlQueryVo);

		DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
		dataGridResultInfo.setTotal(total);
		dataGridResultInfo.setRows(list);

		return dataGridResultInfo;
	}
	
	/**
	 * @Title: addgysypmlsubmit 
	 * @Description: 添加药品目录
	 * @param session
	 * @param indexs
	 * @param gysypmlQueryVo
	 * @return
	 * @throws Exception  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月27日 下午2:48:42]  
	 * @throws  
	 */
	@RequestMapping("/addgysypmlsubmit")
	public @ResponseBody SubmitResultInfo addgysypmlsubmit(
			HttpSession session,
			int[] indexs,//接收页面选中的行序号(多个)
			GysypmlQueryVo gysypmlQueryVo//页面提交的业务数据，保存在list中
			)throws Exception{
		
		ActiveUser activeUser = (ActiveUser)session.getAttribute(Config.ACTIVEUSER_KEY);
		String usergysid = activeUser.getSysid();//当前用户所属单位 即供货商的id
		List<YpxxCustom> list = gysypmlQueryVo.getYpxxCustoms();//页面提交的业务数据（多个），要处理的业务数据，页面中传入的参数
		int count = indexs.length;//处理数据的总数
		int count_success = 0;//处理成功的数量
		int count_error = 0;//处理失败的数量
		List<ResultInfo> msgs_error = new ArrayList<ResultInfo>();//处理失败的原因
		for(int i=0;i<count;i++){
			ResultInfo resultInfo = null;
			YpxxCustom ypxxCustom =  list.get(indexs[i]);//根据选中行的序号获取要处理的业务数据(单个)
			String ypxxid = ypxxCustom.getId();//页面中传入的参数
			try {
				ypmlService.insertGysypml(usergysid, ypxxid);
			} catch (Exception e) {
				e.printStackTrace();
				if(e instanceof ExceptionResultInfo){//进行异常解析
					resultInfo = ((ExceptionResultInfo)e).getResultInfo();
				}else{
					resultInfo = ResultUtil.createFail(Config.MESSAGE, 900, null);//构造未知错误异常
				}
			}
			if(resultInfo == null){
				count_success++;
			}else{
				count_error++;
				msgs_error.add(resultInfo);//记录失败原因
			}
		}
		//提示用户成功数量、失败数量、失败原因
		/*return ResultUtil.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE, 907, new Object[]{
				count_success,
				count_error
		}));*/
		//改成返回详细信息
		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE, 907, new Object[]{
				count_success,
				count_error
		}), msgs_error);
	}

	/**
	 * @Title: SearchgysymLlist 
	 * @Description: 查找
	 * @param session
	 * @param ypxxCustom
	 * @return
	 * @throws Exception  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月29日 下午2:01:07]  
	 * @throws  
	 */
	@RequestMapping("/searchgysymllist")
	public SubmitResultInfo SearchgysymLlist(HttpSession session,YpxxCustom ypxxCustom) throws Exception{
		ActiveUser activeUser = (ActiveUser)session.getAttribute(Config.ACTIVEUSER_KEY);
		String usergysid = activeUser.getSysid();//当前用户所属单位 即供货商的id
		return ResultUtil.createSubmitResult(new ResultUtil().createSuccess(Config.MESSAGE, 100, null));
	}
	    /**
	     * @Title: querygysypmlcontrol 
	     * @Description:供货商药品目录控制查询页面
	     * @param model
	     * @return
	     * @throws Exception  
	     * @return String 
	     * @Author:[yuxuan]
	     * @Date:[2015年11月29日 下午2:01:24]  
	     * @throws  
	     */
		@RequestMapping("/querygysypmlcontrol")
		public String querygysypmlcontrol(Model model) throws Exception {
			List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");// 药品类别
			model.addAttribute("yplblist", yplblist);
			List<Dictinfo> jyztlist = systemConfigService.findDictinfoByType("003");// 交易状态
			model.addAttribute("jyztlist", jyztlist);
			List<Dictinfo> controllist = systemConfigService.findDictinfoByType("008");// 供货状态
			model.addAttribute("controllist", controllist);
			return "/business/ypml/querygysypmlcontrol";
		}

		/**
		 * @Title: querygysypmlcontrol_result 
		 * @Description:查询列表结果集,json
		 * @param session
		 * @param gysypmlQueryVo
		 * @param page
		 * @param rows
		 * @return
		 * @throws Exception  
		 * @return DataGridResultInfo 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午2:02:08]  
		 * @throws  
		 */
		@ResponseBody
		@RequestMapping("/querygysypmlcontrol_result")
		public
		DataGridResultInfo querygysypmlcontrol_result(HttpSession session,GysypmlQueryVo gysypmlQueryVo,int page, int rows) throws Exception {
			int total = ypmlService.findGysypmlControlCount(gysypmlQueryVo);// 列表的总数
			// 分页参数
			PageQuery pageQuery = new PageQuery();
			pageQuery.setPageParams(total, rows, page);
			gysypmlQueryVo.setPageQuery(pageQuery);// 设置分页参数
			// 分页查询列表
			List<GysypmlCustom> list = ypmlService.findGysypmlControlList(gysypmlQueryVo);

			DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
			dataGridResultInfo.setTotal(total);
			dataGridResultInfo.setRows(list);
			return dataGridResultInfo;
		}

		/**
		 * @Title: gysypmlcontrolsubmit 
		 * @Description: 供货商药品目录控制提交 
		 * @param session
		 * @param indexs
		 * @param gysypmlQueryVo
		 * @return
		 * @throws Exception  
		 * @return SubmitResultInfo 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午2:02:48]  
		 * @throws  
		 */
		@ResponseBody
		@RequestMapping("/gysypmlcontrolsubmit")
		public SubmitResultInfo gysypmlcontrolsubmit(HttpSession session, int[] indexs,GysypmlQueryVo gysypmlQueryVo) throws Exception {
			// 页面提交的业务数据（多个），要处理的业务数据，页面中传入的参数
			List<GysypmlControl> list = gysypmlQueryVo.getGysypmlControls();
			int count = indexs.length;// 处理数据的总数
			int count_success = 0;// 处理成功的数量
			int count_error = 0;// 处理失败的数量
			List<ResultInfo> msgs_error = new ArrayList<ResultInfo>();// 处理失败的原因
			for (int i = 0; i < count; i++) {
				ResultInfo resultInfo = null;
				// 根据选中行的序号获取要处理的业务数据(单个)
				GysypmlControl gysypmlControl = list.get(indexs[i]);
				String usergysid = gysypmlControl.getUsergysid();
				String ypxxid = gysypmlControl.getYpxxid();
				String control = gysypmlControl.getControl();
				String advice = gysypmlControl.getAdvice();
				try {
					ypmlService.updateGysypmlControl(usergysid, ypxxid, control, advice);
				} catch (Exception e) {
					e.printStackTrace();
					// 进行异常解析
					if (e instanceof ExceptionResultInfo) {
						resultInfo = ((ExceptionResultInfo) e).getResultInfo();
					} else {
						// 构造未知错误异常
						resultInfo = ResultUtil.createFail(Config.MESSAGE, 900,null);
					}
				}
				if (resultInfo == null) {
					count_success++;// 说明成功
				} else {
					count_error++;
					msgs_error.add(resultInfo);// 记录失败原因
				}
			}

			// 提示用户成功数量、失败数量、失败原因

			// 改成返回详细信息
			return ResultUtil.createSubmitResult(
					ResultUtil.createSuccess(Config.MESSAGE, 907, new Object[] {
							count_success, count_error }), msgs_error);

		}
}
