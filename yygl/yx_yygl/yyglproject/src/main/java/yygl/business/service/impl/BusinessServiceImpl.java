package yygl.business.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import yygl.base.dao.mapper.UsergysMapper;
import yygl.base.dao.mapper.UserjdMapper;
import yygl.base.dao.mapper.UseryyMapper;
import yygl.base.pojo.po.Usergys;
import yygl.base.pojo.po.Userjd;
import yygl.base.pojo.po.Useryy;
import yygl.business.dao.mapper.YybusinessMapperCustom;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;
import yygl.business.service.BusinessService;

public class BusinessServiceImpl implements BusinessService {

	@Autowired
	private UserjdMapper userjdMapper;

	@Autowired
	private UseryyMapper useryyMapper;

	@Autowired
	private UsergysMapper usergysMapper;

	@Autowired
	private YybusinessMapperCustom yybusinessMapperCustom;

	@Override
	public List<YycgdmxCustom> findYybusinessList(String year, String sysid,
			String groupid, YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		if (groupid.equals("2") || groupid.equals("1")) {// 监管单位
			Userjd userjd = userjdMapper.selectByPrimaryKey(sysid);
			String dq = userjd.getDq();// 监管单位的管理地区
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setDq(dq);// 设置管理地区，根据地区查询交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("3")) {// 医院
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setId(sysid);// 设置医院id，只查询医院的交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("4")) {// 供货商
			Usergys usergys = yycgdQueryVo.getUsergys();
			usergys = usergys != null ? usergys : new Usergys();
			usergys.setId(sysid);// 设置供货商id，只查询本供货商相关交易明细
			yycgdQueryVo.setUsergys(usergys);
		}
		yycgdQueryVo.setBusinessyear(year); // 设置年份
		return yybusinessMapperCustom.findYybusinessList(yycgdQueryVo);
	}

	@Override
	public int findYybusinessCount(String year, String sysid, String groupid,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		if (groupid.equals("2") || groupid.equals("1")) {// 监管单位
			Userjd userjd = userjdMapper.selectByPrimaryKey(sysid);
			String dq = userjd.getDq();// 监管单位的管理地区
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setDq(dq);// 设置管理地区，根据地区查询交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("3")) {// 医院
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setId(sysid);// 设置医院id，只查询医院的交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("4")) {// 供货商
			Usergys usergys = yycgdQueryVo.getUsergys();
			usergys = usergys != null ? usergys : new Usergys();
			usergys.setId(sysid);// 设置供货商id，只查询本供货商相关交易明细
			yycgdQueryVo.setUsergys(usergys);
		}
		yycgdQueryVo.setBusinessyear(year);// 设置年份

		return yybusinessMapperCustom.findYybusinessCount(yycgdQueryVo);
	}

	@Override
	public List<YycgdmxCustom> findYybusinessGroupbyYpxxList(String year,
			String sysid, String groupid, YycgdQueryVo yycgdQueryVo)
			throws Exception {
		if (groupid.equals("2") || groupid.equals("1")) { // 监管单位
			Userjd userjd = userjdMapper.selectByPrimaryKey(sysid);
			String dq = userjd.getDq();// 监管单位的管理地区
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setDq(dq);// 设置管理地区，根据地区查询交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("3")) {// 医院
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setId(sysid);// 设置医院id，只查询医院的交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("4")) {// 供货商
			Usergys usergys = yycgdQueryVo.getUsergys();
			usergys = usergys != null ? usergys : new Usergys();
			usergys.setId(sysid);// 设置供货商id，只查询本供货商相关交易明细
			yycgdQueryVo.setUsergys(usergys);
		}
		yycgdQueryVo.setBusinessyear(year); // 设置年份
		return yybusinessMapperCustom
				.findYybusinessGroupbyYpxxList(yycgdQueryVo);
	}

	@Override
	public int findYybusinessGroupbyYpxxCount(String year, String sysid,
			String groupid, YycgdQueryVo yycgdQueryVo) throws Exception {
		if (groupid.equals("2") || groupid.equals("1")) {// 监管单位
			Userjd userjd = userjdMapper.selectByPrimaryKey(sysid);
			String dq = userjd.getDq(); // 监管单位的管理地区
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setDq(dq);// 设置管理地区，根据地区查询交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("3")) {// 医院
			Useryy useryy = yycgdQueryVo.getUseryy();
			useryy = useryy != null ? useryy : new Useryy();
			useryy.setId(sysid);// 设置医院id，只查询医院的交易明细
			yycgdQueryVo.setUseryy(useryy);
		} else if (groupid.equals("4")) {// 供货商
			Usergys usergys = yycgdQueryVo.getUsergys();
			usergys = usergys != null ? usergys : new Usergys();
			usergys.setId(sysid);// 设置供货商id，只查询本供货商相关交易明细
			yycgdQueryVo.setUsergys(usergys);
		}
		yycgdQueryVo.setBusinessyear(year);// 设置年份
		return yybusinessMapperCustom.findYybusinessGroupbyYpxxCount(yycgdQueryVo);
	}

}
