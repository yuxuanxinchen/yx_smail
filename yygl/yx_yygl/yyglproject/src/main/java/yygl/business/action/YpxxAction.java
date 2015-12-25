package yygl.business.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import yygl.base.pojo.po.Dictinfo;
import yygl.base.process.context.Config;
import yygl.base.process.result.ResultUtil;
import yygl.base.process.result.SubmitResultInfo;
import yygl.base.service.SystemConfigService;
import yygl.business.pojo.vo.YpxxCustom;
import yygl.business.pojo.vo.YpxxQueryVo;
import yygl.business.service.YpxxService;
import yyglutil.util.ExcelExportSXXSSF;
import yyglutil.util.HxlsOptRowsInterface;
import yyglutil.util.HxlsRead;
import yyglutil.util.UUIDBuild;

 /**
  * 
  * Simple to Introduction  
  * @ProjectName:  [yyglproject] 
  * @Package:      [yygl.business.action.YpxxAction.java]  
  * @ClassName:    [YpxxAction]   
  * @Description: 药品目录  
  * @Author:       [yuxuan]   
  * @CreateDate:   [2015年11月25日 下午7:09:44]   
  * @UpdateUser:   [yuxuan]   
  * @UpdateDate:   [2015年11月25日 下午7:09:44]   
  * @UpdateRemark: [说明本次修改内容]  
  * @Version:      [v1.0]
  */
@Controller
@RequestMapping("/ypml")
public class YpxxAction {

	@Autowired
	private YpxxService ypxxService;
	
	@Autowired
	private SystemConfigService systemConfigService;
	
	private String webpath; //文件下载路径
	
	@Autowired
	private HxlsOptRowsInterface ypxxImportServce;

	/**
	 * @Title: exportYpxx 
	 * @Description:导出页面展示
	 * @param model
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午7:10:02]  
	 * @throws  
	 */
	@RequestMapping("/exportYpxx")
	public String exportYpxx(Model model) throws Exception {
		
		List<Dictinfo> yplblist = systemConfigService.findDictinfoByType("001");//药品类别
		List<Dictinfo> jyztlist = systemConfigService.findDictinfoByType("003");//交易状态
		model.addAttribute("yplblist", yplblist);
		model.addAttribute("jyztlist", jyztlist);
		return "/business/ypml/exportYpxx";
	}

	/**
	 * @Title: exportYpxxSubmit 
	 * @Description: 导出提交  默认导出路径 "d:/upload/linshi/";
	 * @param ypxxQueryVo
	 * @return
	 * @throws Exception  
	 * @return SubmitResultInfo 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午7:10:22]  
	 * @throws  
	 */
	@RequestMapping("/exportYpxxSubmit")
	public @ResponseBody
	SubmitResultInfo exportYpxxSubmit(YpxxQueryVo ypxxQueryVo) throws Exception {

		String filePath = systemConfigService.findBasicinfoById("00301").getValue();
		String filePrefix = "ypxx";// 导出文件的前缀
		// -1表示关闭自动刷新，手动控制写磁盘的时机，其它数据表示多少数据在内存保存，超过的则写入磁盘
		int flushRows = 100;
		List<String> fieldNames = new ArrayList<String>();// 定义导出数据的title
		fieldNames.add("流水号");
		fieldNames.add("通用名");
		fieldNames.add("剂型");
		fieldNames.add("规格");
		fieldNames.add("转换系数");
		fieldNames.add("生产企业");
		fieldNames.add("商品名称");
		fieldNames.add("中标价格");
		fieldNames.add("交易状态");
		
		List<String> fieldCodes = new ArrayList<String>();// 告诉导出类数据list中对象的属性，让ExcelExportSXXSSF通过反射获取对象的值
		fieldCodes.add("bm");// 药品流水号
		fieldCodes.add("mc");// 通用名
		fieldCodes.add("jx");
		fieldCodes.add("gg");
		fieldCodes.add("zhxs");
		fieldCodes.add("scqymc");
		fieldCodes.add("spmc");
		fieldCodes.add("zbjg");
		fieldCodes.add("jyztmc");

		// 开始导出，执行一些workbook及sheet等对象的初始创建
		ExcelExportSXXSSF excelExportSXXSSF = ExcelExportSXXSSF.start(filePath,"/upload/", filePrefix, fieldNames, fieldCodes, flushRows);

		List<YpxxCustom> list = ypxxService.findYpxxList(ypxxQueryVo);// 导出的数据通过service取出
		excelExportSXXSSF.writeDatasByObject(list);	// 执行导出
		 webpath = excelExportSXXSSF.exportFile();// 输出文件，返回下载文件的http地址，已经包括虚拟目录

		return ResultUtil.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE, 313, new Object[] {list.size(),"downLoad.action"}));
	}

	   /**
	    * @Title: downFile 
	    * @Description: 文件下载 
	    * @param response
	    * @return
	    * @throws IOException  
	    * @return byte[] 
	    * @Author:[yuxuan]
	    * @Date:[2015年11月25日 下午9:37:32]  
	    * @throws  
	    */
	   @RequestMapping("downLoad")
	   public byte[] downFile(HttpServletResponse response) throws IOException{
		   OutputStream outputStream = response.getOutputStream();
		   response.reset();
		   response.setContentType("application/vnd.ms-excel");     
	        response.setHeader("Content-disposition", "attachment;filename=" + webpath.substring(webpath.lastIndexOf("/"),webpath.length())); 
		   File file = new File("d:/upload/linshi"+ webpath.substring(webpath.lastIndexOf("/"),webpath.length()));
		   InputStream iStream = new FileInputStream(file);
		   byte[] bytes = new byte[1024];
		   int line ;
		   while((line = iStream.read(bytes))!=-1){
			   outputStream.write(bytes, 0,line);
		   }
	       return null;
	   }
	
	   /**
	    * @Title: importYpxx 
	    * @Description:药品导入页面返回 
	    * @return  
	    * @return String 
	    * @Author:[yuxuan]
	    * @Date:[2015年11月26日 下午2:15:19]  
	    * @throws  
	    */
	   @RequestMapping("importypxx")
	   public String importYpxx(){
		   return "/business/ypml/importypxx";
	   }
	   
	   /**
	    * @Title: importsubmit 
	    * @Description: 导入 
	    * @param multipartFile
	    * @return
	    * @throws Exception  
	    * @return String 
	    * @Author:[yuxuan]
	    * @Date:[2015年11月26日 下午2:37:37]  
	    * @throws  
	    */
	   @RequestMapping("importypxxsubmit")
	   public SubmitResultInfo  importsubmit(MultipartFile multipartFile) throws Exception{
		String originalFilename = multipartFile.getOriginalFilename();
		File file = new File("D:/upload/linshi"
				+ UUIDBuild.getUUID()
				+ originalFilename.substring(originalFilename.lastIndexOf("."),
						originalFilename.length()));
		if (!file.exists()) {
			file.mkdirs();
		}
		multipartFile.transferTo(file);
		String abslutePath = file.getAbsolutePath(); // 文件的绝对路径
		HxlsRead xls2csv = null;
		// 第一个参数就是导入的文件 第二个参数就是导入文件中哪个sheet 第三个参数导入接口的实现类对象
		xls2csv = new HxlsRead(abslutePath, 1, ypxxImportServce);
		xls2csv.process();
		long success_num = xls2csv.getOptRows_success();// 提示导入成功条数
		long failure_num = xls2csv.getOptRows_failure();// 导入失败数量
		return ResultUtil
				.createSubmitResult(ResultUtil.createSuccess(Config.MESSAGE,
						314, new Object[] { success_num, failure_num }));
	}
}
