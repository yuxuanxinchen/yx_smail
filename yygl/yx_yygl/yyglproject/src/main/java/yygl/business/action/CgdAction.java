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
import yygl.business.pojo.vo.YycgdCustom;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;
import yygl.business.pojo.vo.YycgdrkCustom;
import yygl.business.service.CgdService;
import yyglutil.util.MyUtil;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.action.CgdAction.java]  
 * @ClassName:    [CgdAction]   
 * @Description:  采购单Action
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月28日 下午3:31:52]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月28日 下午3:31:52]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Controller
@RequestMapping("/cgd")
public class CgdAction {

	@Autowired
	private CgdService cgdService;
	
	@Autowired
	private SystemConfigService systemConfigService;
	
	/**
	 * @Title: addYycgd 
	 * @Description: 创建采购单的基本信息页面 
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:33:43]  
	 * @throws  
	 */
	@RequestMapping("addyyycgd")
	public String addYycgd(HttpSession session,Model model) throws Exception{
		ActiveUser activeUser = (ActiveUser) session.getAttribute(Config.ACTIVEUSER_KEY);
		String sysmc = activeUser.getSysmc();     //单位名称
		String yycgdmc = sysmc+MyUtil.getDate()+"采购单";
		String year = MyUtil.get_YYYY(MyUtil.getDate());
		year = (Integer.parseInt(year)-1)+"";
		model.addAttribute("yycgdmc", yycgdmc);
		model.addAttribute("year", year);
		return "/business/cgd/addcgd";
	}
	
	
	/**
	 * @Title: addcgdSubmit 
	 * @Description:创建采购单的基本信息保存方法 
	 * @param session
	 * @param yycgdQueryVo
	 * @return
	 * @throws Exception  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午3:38:23]  
	 * @throws  
	 */
	@ResponseBody
	@RequestMapping("addcgdsubmit")
	public SubmitResultInfo addcgdSubmit(HttpSession session,String year,YycgdQueryVo yycgdQueryVo) throws Exception{
		ActiveUser activeUser = (ActiveUser) session.getAttribute(Config.ACTIVEUSER_KEY);
		String useryyid = activeUser.getSysid();
		String yycgdid = cgdService.insertYycgd(useryyid, year,yycgdQueryVo.getYycgdCustom());
		ResultInfo resultInfo = ResultUtil.createSuccess(Config.MESSAGE, 906,null);
		resultInfo.getSysdata().put("yycgdid", yycgdid);
		return ResultUtil.createSubmitResult(resultInfo);

	}
	
	
	/**
	 * @Title: editcgd 
	 * @Description: 创建采购单修改页面方法 
	 * @param model
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月28日 下午4:24:40]  
	 * @throws  
	 */
	@RequestMapping("/editcgd")
	public String editcgd(Model model ,String id) throws Exception{
		// 采购状态
				List<Dictinfo> cgztlist = systemConfigService.findDictinfoByType("011");
				List<Dictinfo> jyztlist = systemConfigService.findDictinfoByType("003");
				model.addAttribute("cgztlist", cgztlist);
				model.addAttribute("jyztlist", jyztlist);
				YycgdCustom yycgdCustom = cgdService.findYycgdById(id);
				model.addAttribute("yycgd", yycgdCustom);
				return "/business/cgd/editcgd";
	}
	
	    /**
	     *  @Title: editcgdsubmit 
	     * @Description: 采购单修改提交 
	     * @param id
	     * @param yycgdQueryVo
	     * @return
	     * @throws Exception  
	     * @return SubmitResultInfo 
	     * @Author:[yuxuan]
	     * @Date:[2015年11月28日 下午5:43:44]  
	     * @throws  
	     */
	 	@ResponseBody
		@RequestMapping("/editcgdsubmit")
		public SubmitResultInfo editcgdsubmit(String id, YycgdQueryVo yycgdQueryVo)
				throws Exception {
			cgdService.updateYycgd(id, yycgdQueryVo.getYycgdCustom());// 执行修改操作
			return ResultUtil.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE, 906, null));
		}
	    
	 	/**
	 	 * @Title: queryYycgdmx_result 
	 	 * @Description:采购单药品明细查询结果集
	 	 * @param id
	 	 * @param yycgdQueryVo
	 	 * @param page
	 	 * @param rows
	 	 * @return
	 	 * @throws Exception  
	 	 * @return DataGridResultInfo 
	 	 * @Author:[yuxuan]
	 	 * @Date:[2015年11月28日 下午8:13:23]  
	 	 * @throws  
	 	 */
	 	@ResponseBody
		@RequestMapping("/queryYycgdmx_result")
		public DataGridResultInfo queryYycgdmx_result(String id,// 采购单id
				YycgdQueryVo yycgdQueryVo, int page, int rows) throws Exception {
			int total = cgdService.findYycgdmxCountByYycgdid(id, yycgdQueryVo);// 查询数据总数
			PageQuery pageQuery = new PageQuery();// 分页参数
			pageQuery.setPageParams(total, rows, page);
			yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数
			List<YycgdmxCustom> list = cgdService.findYycgdmxListByYycgdid(id,yycgdQueryVo);// 分页查询
			DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
			dataGridResultInfo.setTotal(total);
			dataGridResultInfo.setRows(list);
			if(total>0){
				List<YycgdmxCustom> sumList = cgdService.findYycgdmxListSum(id, yycgdQueryVo);
				dataGridResultInfo.setFooter(sumList);;
			}
			
			// dataGridResultInfo.setFooter(footer);
			return dataGridResultInfo;
		}

	 	/**
	 	 * @Title: yycgdlist 
	 	 * @Description: 采购单列表维护页面
	 	 * @param model
	 	 * @return
	 	 * @throws Exception  
	 	 * @return String 
	 	 * @Author:[yuxuan]
	 	 * @Date:[2015年11月29日 下午5:35:18]  
	 	 * @throws  
	 	 */
		@RequestMapping("/yycgdlist")
		public String yycgdlist(Model model) throws Exception {
			List<Dictinfo> cgdztlist = systemConfigService.findDictinfoByType("010");// 药品类别
			model.addAttribute("cgdztlist", cgdztlist);
			model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));//当前年份
			return "/business/cgd/yycgdlist";
		}

		/**
		 * @Title: yycgdlist_result 
		 * @Description:采购单列表维护结果集,json
		 * @param activeUser
		 * @param year
		 * @param yycgdQueryVo
		 * @param page
		 * @param rows
		 * @return
		 * @throws Exception  
		 * @return DataGridResultInfo 
		 * @Author:[yuxuan]
		 * @Date:[2015年11月29日 下午5:35:39]  
		 * @throws  
		 */
		 @ResponseBody
		@RequestMapping("/yycgdlist_result")
		public DataGridResultInfo yycgdlist_result(ActiveUser activeUser,String year,//年份
				YycgdQueryVo yycgdQueryVo,// 查询条件
				int page, int rows) throws Exception {

			// 当前用户
			/*ActiveUser activeUser = (ActiveUser) session
					.getAttribute(Config.ACTIVEUSER_KEY);*/
			// 用户所属的单位(医院单位id)
			String useryyid = activeUser.getSysid();// 单位id
			// 列表的总数
			int total = cgdService.findYycgdCount(useryyid, year, yycgdQueryVo);
			// 分页参数
			PageQuery pageQuery = new PageQuery();
			pageQuery.setPageParams(total, rows, page);
			yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数
			// 分页查询列表
			List<YycgdCustom> list = cgdService.findYycgdList(useryyid, year, yycgdQueryVo);
			DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
			dataGridResultInfo.setTotal(total);
			dataGridResultInfo.setRows(list);
			return dataGridResultInfo;
		}
		 
		 /**
		  * @Title: submitYycgd 
		  * @Description: TODO 
		  * @param id
		  * @return
		  * @throws Exception  
		  * @return SubmitResultInfo 
		  * @Author:[yuxuan]
		  * @Date:[2015年11月30日 下午2:28:41]  
		  * @throws  
		  */
		 @ResponseBody
		 @RequestMapping("/submitYycgd")
			public 
			SubmitResultInfo submitYycgd(String id) throws Exception {cgdService.saveYycgdSubmitStatus(id);
				return ResultUtil.createSubmitResult(ResultUtil.createSuccess(
						Config.MESSAGE, 906, null));

			}

			/**
			 * @Title: checkyycgdlist 
			 * @Description: 采购单审核列表页面
			 * @param model
			 * @return
			 * @throws Exception  
			 * @return String 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:28:57]  
			 * @throws  
			 */
			@RequestMapping("/checkyycgdlist")
			public String checkyycgdlist(Model model) throws Exception {
				List<Dictinfo> cgdztlist = systemConfigService.findDictinfoByType("010");// 药品类别
				model.addAttribute("cgdztlist", cgdztlist);
				model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));// 当前年份
				return "/business/cgd/checkyycgdlist";
			}

			/**
			 *  @Title: checkyycgdlist_result 
			 * @Description: 采购单审核列表结果集,json
			 * @param activeUser
			 * @param year
			 * @param yycgdQueryVo
			 * @param page
			 * @param rows
			 * @return
			 * @throws Exception  
			 * @return DataGridResultInfo 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:29:34]  
			 * @throws  
			 */
			@ResponseBody
			@RequestMapping("/checkyycgdlist_result")
			public DataGridResultInfo checkyycgdlist_result(// HttpSession session,
					ActiveUser activeUser, String year,// 年份
					YycgdQueryVo yycgdQueryVo,// 查询条件
					int page, int rows) throws Exception {
				// 监管单位id
				String userjdid = activeUser.getSysid();// 单位id
				// 列表的总数
				int total = cgdService.findCheckYycgdCount(year, userjdid, yycgdQueryVo);

				// 分页参数
				PageQuery pageQuery = new PageQuery();
				pageQuery.setPageParams(total, rows, page);
				yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数

				// 分页查询列表
				List<YycgdCustom> list = cgdService.findCheckYycgdList(year, userjdid,
						yycgdQueryVo);

				DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
				dataGridResultInfo.setTotal(total);
				dataGridResultInfo.setRows(list);

				return dataGridResultInfo;
			}

			/**
			 * @Title: checkcgdsubmit 
			 * @Description: 采购单审核提交
			 * @param yycgdQueryVo
			 * @param indexs
			 * @return
			 * @throws Exception  
			 * @return SubmitResultInfo 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:30:09]  
			 * @throws  
			 */
			@ResponseBody
			@RequestMapping("/checkcgdsubmit")
			public
			SubmitResultInfo checkcgdsubmit(YycgdQueryVo yycgdQueryVo, int[] indexs) throws Exception {

				// 页面提交的业务数据（多个），要处理的业务数据，页面中传入的参数
				List<YycgdCustom> list = yycgdQueryVo.getYycgdCustoms();

				// 处理数据的总数
				int count = indexs.length;
				// 处理成功的数量
				int count_success = 0;
				// 处理失败的数量
				int count_error = 0;

				// 处理失败的原因
				List<ResultInfo> msgs_error = new ArrayList<ResultInfo>();

				for (int i = 0; i < count; i++) {

					ResultInfo resultInfo = null;

					// 根据选中行的序号获取要处理的业务数据(单个)
					YycgdCustom yycgdCustom = list.get(indexs[i]);
					// 采购单id
					String yycgdid = yycgdCustom.getId();

					try {
						cgdService.saveYycgdCheckStatus(yycgdid, yycgdCustom);
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
						// 说明成功
						count_success++;
					} else {
						count_error++;
						// 记录失败原因
						msgs_error.add(resultInfo);
					}

				}

				// 提示用户成功数量、失败数量、失败原因
				// 改成返回详细信息
				return ResultUtil.createSubmitResult(
						ResultUtil.createSuccess(Config.MESSAGE, 907, new Object[] {
								count_success, count_error }), msgs_error);
			}

			// 采购单受理页面
			@RequestMapping("/disposeyycgd")
			public String disposeyycgd(Model model) throws Exception {

				// 当前年份
				model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));

				return "/business/cgd/disposeyycgd";
			}

			// 采购单受理列表结果集,json
			@RequestMapping("/disposeyycgd_result")
			public @ResponseBody
			DataGridResultInfo disposeyycgd_result(// HttpSession session,
					ActiveUser activeUser, String year,// 年份
					YycgdQueryVo yycgdQueryVo,// 查询条件
					int page, int rows) throws Exception {

				// 供货商id
				String usergysid = activeUser.getSysid();// 单位id

				// 列表的总数
				int total = cgdService.findDisposeYycgdCount(usergysid, year,
						yycgdQueryVo);

				// 分页参数
				PageQuery pageQuery = new PageQuery();
				pageQuery.setPageParams(total, rows, page);
				yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数

				// 分页查询列表
				List<YycgdmxCustom> list = cgdService.findDisposeYycgdList(usergysid,year, yycgdQueryVo);

				DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
				dataGridResultInfo.setTotal(total);
				dataGridResultInfo.setRows(list);
				return dataGridResultInfo;
			}

			/**
			 * @Title: disposeyycgdsubmit 
			 * @Description: 采购单受理提交 
			 * @param yycgdQueryVo
			 * @param indexs
			 * @return
			 * @throws Exception  
			 * @return SubmitResultInfo 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:31:28]  
			 * @throws  
			 */
			@ResponseBody
			@RequestMapping("/disposeyycgdsubmit")
			public SubmitResultInfo disposeyycgdsubmit(YycgdQueryVo yycgdQueryVo, int[] indexs ) throws Exception {

				// 页面提交的业务数据（多个），要处理的业务数据，页面中传入的参数
				List<YycgdmxCustom> list = yycgdQueryVo.getYycgdmxCustoms();
				// 处理数据的总数
				int count = indexs.length;
				// 处理成功的数量
				int count_success = 0;
				// 处理失败的数量
				int count_error = 0;
				// 处理失败的原因
				List<ResultInfo> msgs_error = new ArrayList<ResultInfo>();
				for (int i = 0; i < count; i++) {
					ResultInfo resultInfo = null;
					// 根据选中行的序号获取要处理的业务数据(单个)
					YycgdmxCustom yycgdmxCustom = list.get(indexs[i]);
					// 采购单id
					String yycgdid = yycgdmxCustom.getYycgdid();
					// 药品id
					String ypxxid = yycgdmxCustom.getYpxxid();
					try {
						cgdService.saveSendStatus(yycgdid, ypxxid);
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
						// 说明成功
						count_success++;
					} else {
						count_error++;
						// 记录失败原因
						msgs_error.add(resultInfo);
					}
				}

				// 提示用户成功数量、失败数量、失败原因
				// 改成返回详细信息
				return ResultUtil.createSubmitResult(
						ResultUtil.createSuccess(Config.MESSAGE, 907, new Object[] {
								count_success, count_error }), msgs_error);
			}

			/**
			 * @Title: receivceyycgd 
			 * @Description: 采购单入库页面
			 * @param model
			 * @return
			 * @throws Exception  
			 * @return String 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:32:15]  
			 * @throws  
			 */
			@RequestMapping("/receiveyycgd")
			public String receivceyycgd(Model model) throws Exception {
				// 当前年份
				model.addAttribute("year", MyUtil.get_YYYY(MyUtil.getDate()));
				return "/business/cgd/receiveyycgd";
			}

			/**
			 * @Title: receiveyycgd_result 
			 * @Description: 采购单入库列表结果集,json
			 * @param activeUser
			 * @param year
			 * @param yycgdQueryVo
			 * @param page
			 * @param rows
			 * @return
			 * @throws Exception  
			 * @return DataGridResultInfo 
			 * @Author:[yuxuan]
			 * @Date:[2015年11月30日 下午2:32:26]  
			 * @throws  
			 */
			@RequestMapping("/receiveyycgd_result")
			public @ResponseBody
			DataGridResultInfo receiveyycgd_result(// HttpSession session,
					ActiveUser activeUser, String year,// 年份
					YycgdQueryVo yycgdQueryVo,// 查询条件
					int page, int rows) throws Exception {
				// 医院id
				String useryyid = activeUser.getSysid();// 单位id
				// 列表的总数
				int total = cgdService.findYycgdReceivceCount(useryyid, year,yycgdQueryVo);
				// 分页参数
				PageQuery pageQuery = new PageQuery();
				pageQuery.setPageParams(total, rows, page);
				yycgdQueryVo.setPageQuery(pageQuery);// 设置分页参数

				// 分页查询列表
				List<YycgdmxCustom> list = cgdService.findYycgdReceivceList(useryyid,year, yycgdQueryVo);

				DataGridResultInfo dataGridResultInfo = new DataGridResultInfo();
				dataGridResultInfo.setTotal(total);
				dataGridResultInfo.setRows(list);

				return dataGridResultInfo;
			}

		     /**
		      * @Title: receiveyycgdsubmit 
		      * @Description: 采购单入库提交
		      * @param yycgdQueryVo
		      * @param indexs
		      * @return
		      * @throws Exception  
		      * @return SubmitResultInfo 
		      * @Author:[yuxuan]
		      * @Date:[2015年11月30日 下午2:32:53]  
		      * @throws  
		      */
			 @ResponseBody
			@RequestMapping("/receiveyycgdsubmit")
			public
			SubmitResultInfo receiveyycgdsubmit(YycgdQueryVo yycgdQueryVo, int[] indexs ) throws Exception {
				// 页面提交的业务数据（多个），要处理的业务数据，页面中传入的参数yycgdQueryVo
				List<YycgdrkCustom> list = yycgdQueryVo.getYycgdrkCustoms();
				int count = indexs.length;// 处理数据的总数
				int count_success = 0;// 处理成功的数量
				int count_error = 0;// 处理失败的数量
				List<ResultInfo> msgs_error = new ArrayList<ResultInfo>();// 处理失败的原因
				for (int i = 0; i < count; i++) {
					ResultInfo resultInfo = null;
					YycgdrkCustom yycgdrkCustom = list.get(indexs[i]);// 根据选中行的序号获取要处理的业务数据(单个)
					String yycgdid = yycgdrkCustom.getYycgdid();//采购单id
					String ypxxid = yycgdrkCustom.getYpxxid();//药品id
					try {
						cgdService.saveYycgdrk(yycgdid, ypxxid, yycgdrkCustom);
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