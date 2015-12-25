package yygl.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import yygl.business.dao.mapper.YpxxMapper;
import yygl.business.pojo.po.Ypxx;
import yyglutil.util.HxlsOptRowsInterface;
import yyglutil.util.UUIDBuild;

public class YpxxImportServceImpl implements HxlsOptRowsInterface{

	@Autowired
	private YpxxMapper ypxxMapper;
	
	@Override
	public String optRows(int sheetIndex, int curRow, List<String> rowlist)
			throws Exception {

			String mc = rowlist.get(0); //通用名
			String jx = rowlist.get(1); //剂型
			String gg = rowlist.get(2); //规格
			String zhxs = rowlist.get(3); // 转换系数
			String zbjg = rowlist.get(4); // 中标价格
			String scqymc = rowlist.get(5); // 生产企业名称
			String spmc = rowlist.get(6); //商品名称
			String jyzt = rowlist.get(7); //交易状态
			
			if(jyzt == null || (!jyzt.equals("1") || !jyzt.equals("2"))){
				return "交易状态的值输入不对,请输入1:正常，2：暂停";
			}
			
			Ypxx ypxx = new Ypxx();
			ypxx.setId(UUIDBuild.getUUID());
			ypxx.setMc(mc);
			ypxx.setJky(jx);
			ypxx.setGg(gg);
			ypxx.setZhxs(zhxs);
			ypxx.setZbjg(Float.parseFloat(zbjg));
			ypxx.setJyzt(jyzt);
			ypxx.setScqymc(scqymc);
			ypxx.setSpmc(spmc);
			
			ypxxMapper.insert(ypxx);
			
		
		
		return "SUCCESS";
	}

}
