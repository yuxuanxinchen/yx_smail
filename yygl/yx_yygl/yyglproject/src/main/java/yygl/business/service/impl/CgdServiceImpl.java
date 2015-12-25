package yygl.business.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import yygl.base.dao.mapper.UserjdMapper;
import yygl.base.dao.mapper.UseryyMapper;
import yygl.base.pojo.po.Userjd;
import yygl.base.pojo.po.Useryy;
import yygl.base.process.context.Config;
import yygl.base.process.result.ResultUtil;
import yygl.base.service.SystemConfigService;
import yygl.business.dao.mapper.YpxxMapper;
import yygl.business.dao.mapper.YycgdMapper;
import yygl.business.dao.mapper.YycgdMapperCustom;
import yygl.business.dao.mapper.YycgdmxMapper;
import yygl.business.dao.mapper.YycgdrkMapper;
import yygl.business.pojo.po.Ypxx;
import yygl.business.pojo.po.Yycgd;
import yygl.business.pojo.po.YycgdExample;
import yygl.business.pojo.po.Yycgdmx;
import yygl.business.pojo.po.YycgdmxExample;
import yygl.business.pojo.po.Yycgdrk;
import yygl.business.pojo.vo.YycgdCustom;
import yygl.business.pojo.vo.YycgdQueryVo;
import yygl.business.pojo.vo.YycgdmxCustom;
import yygl.business.pojo.vo.YycgdrkCustom;
import yygl.business.service.CgdService;
import yyglutil.util.MyUtil;
import yyglutil.util.UUIDBuild;

public class CgdServiceImpl implements CgdService{

	@Autowired
	private YycgdMapper yycgdMapper;
	
	@Autowired
	private YycgdMapperCustom yycgdMapperCustom;
	
	@Autowired
	private SystemConfigService systemConfigService;
	
	@Autowired
	private UseryyMapper useryyMapper;
	
	@Autowired
	private YpxxMapper ypxxMapper;
	
	@Autowired
	private YycgdrkMapper yycgdrkMapper;
	
	@Autowired
	private YycgdmxMapper yycgdmxMapper;
	
	@Autowired
	private UserjdMapper userjdMapper;
	
	@Override
	public String insertYycgd(String useryyid, String year,
			YycgdCustom yycgdCustom) throws Exception {
		String bm = yycgdMapperCustom.getYycgdBm(year);  //采购单号，采用oracle序列
		yycgdCustom.setId(UUIDBuild.getUUID());  //采购单主键
		yycgdCustom.setBm(bm);  //采购单单号
		yycgdCustom.setUseryyid(useryyid);
		yycgdCustom.setCjtime(new Date());
		yycgdCustom.setZt("1"); //1未提交
		yycgdCustom.setBusinessyear(year);
		yycgdMapper.insert(yycgdCustom);
		return bm;
	}

	@Override
	public YycgdCustom findYycgdById(String id) throws Exception {
		
				String year = id.substring(0, 4);// 从采购单id中获取年份
				YycgdExample yycgdExample = new YycgdExample();
				YycgdExample.Criteria criteria = yycgdExample.createCriteria();
				criteria.andIdEqualTo(id);
				yycgdExample.setBusinessyear(year);// 通过 yycgdExample传入年份
				List<Yycgd> list = yycgdMapper.selectByExample(yycgdExample);
				Yycgd yycgd = null;
				YycgdCustom yycgdCustom = new YycgdCustom();
				if (list != null && list.size() == 1) {
					yycgd = list.get(0);
					BeanUtils.copyProperties(yycgd, yycgdCustom);// 将yycgd属性值 拷贝到yycgdCustom
				} else {
					ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 501,
							null));
				}
				// 可以向扩展对象添加属性值
				// 添加采购单状态 名称
				String zt = yycgd.getZt();
				String yycgdztmc = systemConfigService.findDictinfoByDictcode("010", zt).getInfo();// 根据状态 代码查询状态对应的名称
				yycgdCustom.setYycgdztmc(yycgdztmc);
				return yycgdCustom;
		
		
	}

	@Override
	public void updateYycgd(String id, YycgdCustom yycgdCustom)
			throws Exception {
		// 从采购单id中获取年份 
				String year = id.substring(0, 4);
				// 从数据库查询采购单信息
				YycgdCustom yycgdCustom_old = this.findYycgdById(id);
				// 向对象设置修改的值
				yycgdCustom_old.setLxr(yycgdCustom.getLxr());
				yycgdCustom_old.setLxdh(yycgdCustom.getLxdh());
				yycgdCustom_old.setMc(yycgdCustom.getMc());
				yycgdCustom_old.setBz(yycgdCustom.getBz());// 备注信息
				// 设置年份
				yycgdCustom_old.setBusinessyear(year);
				yycgdMapper.updateByPrimaryKey(yycgdCustom_old);
	}
	@Override
	public List<YycgdmxCustom> findYycgdmxListByYycgdid(String yycgdid,
			YycgdQueryVo yycgdQueryVo) throws Exception {

		// 非空判断
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		// 通过采购单id得到年份
		String businessyear = yycgdid.substring(0, 4);
		// 在service设置固定业务参数
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		if (yycgdmxCustom == null) {
			yycgdmxCustom = new YycgdmxCustom();
		}
		yycgdmxCustom.setYycgdid(yycgdid);
		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);
		// 设置年份
		yycgdQueryVo.setBusinessyear(businessyear);

		return yycgdMapperCustom.findYycgdmxList(yycgdQueryVo);
	}

	@Override
	public int findYycgdmxCountByYycgdid(String yycgdid,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		// 非空判断
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		// 通过采购单id得到年份
		String businessyear = yycgdid.substring(0, 4);
		// 在service设置固定业务参数
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		if (yycgdmxCustom == null) {
			yycgdmxCustom = new YycgdmxCustom();
		}
		yycgdmxCustom.setYycgdid(yycgdid);
		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);
		// 设置年份
		yycgdQueryVo.setBusinessyear(businessyear);
		return yycgdMapperCustom.findYycgdmxCount(yycgdQueryVo);
	}

	@Override
	public List<YycgdmxCustom> findAddYycgdmxList(String useryyid,
			String yycgdid, YycgdQueryVo yycgdQueryVo) throws Exception {
		
		//根据医院id得到医院区域id
		Useryy useryy = useryyMapper.selectByPrimaryKey(useryyid);
		String dq = useryy.getDq();//医院区域id
		//向yycgdQueryVo设置业务参数
		//医院地区
		Useryy useryy_l = yycgdQueryVo.getUseryy();
		if(useryy_l == null){
			useryy_l = new Useryy();
		}
		useryy_l.setDq(dq);
		yycgdQueryVo.setUseryy(useryy_l);
		//采购单id
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		if(yycgdCustom == null){
			yycgdCustom = new YycgdCustom();
		}
		yycgdCustom.setId(yycgdid);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);
		//设置年份
		String businessyear = yycgdid.substring(0, 4);
		yycgdQueryVo.setBusinessyear(businessyear);
		return yycgdMapperCustom.findAddYycgdmxList(yycgdQueryVo);
	}

	@Override
	public int findAddYycgdmxCount(String useryyid, String yycgdid,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		Useryy useryy = useryyMapper.selectByPrimaryKey(useryyid);//根据医院id得到医院区域id
		String dq = useryy.getDq();//医院区域id
		//向yycgdQueryVo设置业务参数
		//医院地区
		Useryy useryy_l = yycgdQueryVo.getUseryy();
		if(useryy_l == null){
			useryy_l = new Useryy();
		}
		useryy_l.setDq(dq);
		yycgdQueryVo.setUseryy(useryy_l);
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();//采购单id
		if(yycgdCustom == null){
			yycgdCustom = new YycgdCustom();
		}
		yycgdCustom.setId(yycgdid);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);
		String businessyear = yycgdid.substring(0, 4);	//设置年份
		yycgdQueryVo.setBusinessyear(businessyear);
		return yycgdMapperCustom.findAddYycgdmxCount(yycgdQueryVo);
	}
	
	//根据采购单id和药品id查询采购单明细
	public Yycgdmx findYycgdmxByYycgdidAndYpxxid(String yycgdid, String ypxxid)throws Exception{
		YycgdmxExample yycgdmxExample = new YycgdmxExample();
		YycgdmxExample.Criteria criteria = yycgdmxExample.createCriteria();
		criteria.andYycgdidEqualTo(yycgdid);
		criteria.andYpxxidEqualTo(ypxxid);
		//设置年份
		String year = yycgdid.substring(0, 4);
		yycgdmxExample.setBusinessyear(year);
		List<Yycgdmx> list = yycgdmxMapper.selectByExample(yycgdmxExample);
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;
		
	}

	@Override
	public void insertYycgdmx(String yycgdid, String ypxxid, String usergysid)
			throws Exception {
		Ypxx ypxx = ypxxMapper.selectByPrimaryKey(ypxxid);//根据药品id得到药品信息
		if(ypxx == null){
			//抛出异常，药品在系统中不存在
			//...
		}
		
		//校验采购单明细表唯 一约束
		Yycgdmx yycgdmx_l = this.findYycgdmxByYycgdidAndYpxxid(yycgdid, ypxxid);
		if(yycgdmx_l!=null){
			//该药品在采购单中已存在
			ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 508, null));
		}
		String businessyear = yycgdid.substring(0, 4);
		//对比数据表准备、处理数据
		Yycgdmx yycgdmx = new Yycgdmx();
		//设置年份
		yycgdmx.setBusinessyear(businessyear);
		yycgdmx.setId(UUIDBuild.getUUID());//主键
		yycgdmx.setYycgdid(yycgdid);
		yycgdmx.setYpxxid(ypxxid);
		yycgdmx.setUsergysid(usergysid);
		yycgdmx.setZbjg(ypxx.getZbjg());//中标价格
		yycgdmx.setJyjg(ypxx.getZbjg());//本系统交易价格和中标价格相等
		yycgdmx.setCgzt("1");//默认1、未确认送货
		yycgdmxMapper.insert(yycgdmx);

	}

	@Override
	public List<YycgdCustom> findYycgdList(String useryyid, String year,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		yycgdQueryVo.setBusinessyear(year);// 设置查询年份
		Useryy useryy = yycgdQueryVo.getUseryy();// 设置医院id
		if (useryy == null) {
			useryy = new Useryy();
		}
		useryy.setId(useryyid);
		yycgdQueryVo.setUseryy(useryy);
		return yycgdMapperCustom.findYycgdList(yycgdQueryVo);
	}

	@Override
	public int findYycgdCount(String useryyid, String year,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();
		yycgdQueryVo.setBusinessyear(year);// 设置查询年份
		Useryy useryy = yycgdQueryVo.getUseryy();// 设置医院id
		if (useryy == null) {
			useryy = new Useryy();
		}
		useryy.setId(useryyid);
		yycgdQueryVo.setUseryy(useryy);
		return yycgdMapperCustom.findYycgdCount(yycgdQueryVo);
	}

	@Override
	public void saveYycgdSubmitStatus(String yycgdid) throws Exception {

		// 采购单状态为未提交或审核不通过时方可提交
		Yycgd yycgd = this.findYycgdById(yycgdid);
		if (yycgd == null) {
			// 抛出异常，提交的采购单在系统中不存在
			// ....
		}
		// 采购单状态
		String zt = yycgd.getZt();
		if (!zt.equals("1") && !zt.equals("4")) {
			// 采购单只允许在未提交或审核不通过时方可提交
			ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 502,
					null));
		}

		// 采购单必须包括采购药品明细方可提交
		// 根据采购单id查询所有采购药品明细
		List<YycgdmxCustom> yycgdmxList = this.findYycgdmxListByYycgdid(
				yycgdid, null);

		if (yycgdmxList == null || yycgdmxList.size() <= 0) {
			// 没有添加采购药品不允许提交
			ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 504,
					null));
		}

		// 采购单的采购药品明细信息必须完整（采购量、采购金额必须指定）
		for (YycgdmxCustom yycgdmxCustom : yycgdmxList) {
			Integer cgl = yycgdmxCustom.getCgl();// 采购量
			Float cgje = yycgdmxCustom.getCgje();// 采购金额
			if (cgl == null || cgje == null) {
				ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE,
						505, null));
			}
		}
		String businessyear = yycgdid.substring(0, 4);
		// 更新采购单状态及提交时间
		Yycgd yycgd_update = new Yycgd();
		yycgd_update.setId(yycgdid);
		// 更新状态
		yycgd_update.setZt("2");// 已提交 未审核
		// 更新时间
		yycgd_update.setTjtime(MyUtil.getNowDate());

		yycgd_update.setBusinessyear(businessyear);
		yycgdMapper.updateByPrimaryKeySelective(yycgd_update);

	}

	@Override
	public List<YycgdCustom> findCheckYycgdList(String year, String userjdid,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();

		// 采购单状态
		String zt = "2";// 审核中

		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		if (yycgdCustom == null) {
			yycgdCustom = new YycgdCustom();
		}
		yycgdCustom.setZt(zt);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);
		// 监管单位管理地区
		// 根据监管单位id查询监管单位
		Userjd userjd = userjdMapper.selectByPrimaryKey(userjdid);
		// 管理地区
		String dq = userjd.getDq();

		Useryy useryy = yycgdQueryVo.getUseryy();
		useryy = useryy != null ? useryy : new Useryy();
		// 设置查询条件管理地区
		useryy.setDq(dq);

		yycgdQueryVo.setUseryy(useryy);
		// 设置年份
		yycgdQueryVo.setBusinessyear(year);
		return yycgdMapperCustom.findYycgdList(yycgdQueryVo);
	}

	@Override
	public int findCheckYycgdCount(String year, String userjdid,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();

		// 采购单状态
		String zt = "2";// 审核中

		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		if (yycgdCustom == null) {
			yycgdCustom = new YycgdCustom();
		}
		yycgdCustom.setZt(zt);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);
		// 监管单位管理地区
		// 根据监管单位id查询监管单位
		Userjd userjd = userjdMapper.selectByPrimaryKey(userjdid);
		// 管理地区
		String dq = userjd.getDq();

		Useryy useryy = yycgdQueryVo.getUseryy();
		useryy = useryy != null ? useryy : new Useryy();
		// 设置查询条件管理地区
		useryy.setDq(dq);

		yycgdQueryVo.setUseryy(useryy);
		// 设置年份
		yycgdQueryVo.setBusinessyear(year);
		return yycgdMapperCustom.findYycgdCount(yycgdQueryVo);
	}

	@Override
	public void saveYycgdCheckStatus(String yycgdid, YycgdCustom yycgdCustom)
			throws Exception {
		// 采购单状态为审核中方可提交审核
		// 采购单状态为未提交或审核不通过时方可提交
		Yycgd yycgd = this.findYycgdById(yycgdid);
		if (yycgd == null) {
			// 抛出异常，提交的采购单在系统中不存在
			// ....
		}
		// 采购单状态
		String zt = yycgd.getZt();
		if (!zt.equals("2")) {
			// 采购单只允许在审核中方可提交 审核
			ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 514,
					null));
		}

		// 审核结果（审核通过、审核不通过）必须选择
		if (yycgdCustom == null
				|| yycgdCustom.getZt() == null
				|| (!yycgdCustom.getZt().equals("3") && !yycgdCustom.getZt()
						.equals("4"))) {
			// 审核结果选择的不正确
			// .....
		}
		// 更新采购单状态

		// 年份
		String businessyear = yycgdid.substring(0, 4);

		Yycgd yycgd_update = new Yycgd();
		yycgd_update.setId(yycgdid);

		// 更新状态
		yycgd_update.setZt(yycgdCustom.getZt());
		// 更新审核时间
		yycgd_update.setShtime(MyUtil.getNowDate());
		// 更新审核意见
		yycgd_update.setShyj(yycgdCustom.getShyj());
		yycgd_update.setBusinessyear(businessyear);

		yycgdMapper.updateByPrimaryKeySelective(yycgd_update);

	}

	@Override
	public List<YycgdmxCustom> findDisposeYycgdList(String usergysid,
			String year, YycgdQueryVo yycgdQueryVo) throws Exception {

		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();

		// 供货商只允许查询自己供应的采购药品信息
		// 设置供货商id
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		yycgdmxCustom = yycgdmxCustom != null ? yycgdmxCustom
				: new YycgdmxCustom();
		yycgdmxCustom.setUsergysid(usergysid);

		// 采购药品明细状态为“未确认送货”
		String cgzt = "1";
		yycgdmxCustom.setCgzt(cgzt);

		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);

		// 采购单为审核通过
		String zt = "3";
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		yycgdCustom = yycgdCustom != null ? yycgdCustom : new YycgdCustom();
		yycgdCustom.setZt(zt);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);

		// 设置年份
		yycgdQueryVo.setBusinessyear(year);

		return yycgdMapperCustom.findYycgdmxList(yycgdQueryVo);
	}

	@Override
	public int findDisposeYycgdCount(String usergysid, String year,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		yycgdQueryVo = yycgdQueryVo != null ? yycgdQueryVo : new YycgdQueryVo();

		// 供货商只允许查询自己供应的采购药品信息
		// 设置供货商id
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		yycgdmxCustom = yycgdmxCustom != null ? yycgdmxCustom
				: new YycgdmxCustom();
		yycgdmxCustom.setUsergysid(usergysid);

		// 采购药品明细状态为“未确认送货”
		String cgzt = "1";
		yycgdmxCustom.setCgzt(cgzt);

		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);

		// 采购单为审核通过
		String zt = "3";
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		yycgdCustom = yycgdCustom != null ? yycgdCustom : new YycgdCustom();
		yycgdCustom.setZt(zt);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);

		// 设置年份
		yycgdQueryVo.setBusinessyear(year);
		return yycgdMapperCustom.findYycgdmxCount(yycgdQueryVo);
	}

	@Override
	public void saveSendStatus(String yycgdid, String ypxxid) throws Exception {

		// 查询出采购药品记录
		Yycgdmx yycgdmx = this.findYycgdmxByYycgdidAndYpxxid(yycgdid, ypxxid);

		if (yycgdmx == null) {
			// 提示：找到采购药品明细记录
			// ...
		}
		// 采购状态
		String cgzt = yycgdmx.getCgzt();
		if (!cgzt.equals("1")) {
			// 提示：采购药品在未确定 送货时方可发货
			// ...
		}

		// 设置更新状态为已发货
		yycgdmx.setCgzt("2");
		// 年份
		String year = yycgdid.substring(0, 4);
		yycgdmx.setBusinessyear(year);

		yycgdmxMapper.updateByPrimaryKey(yycgdmx);

	}

	@Override
	public List<YycgdmxCustom> findYycgdReceivceList(String useryyid,
			String year, YycgdQueryVo yycgdQueryVo) throws Exception {
		// 医院只查询本医院采购信息
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		yycgdCustom = yycgdCustom != null ? yycgdCustom : new YycgdCustom();
		// 设置医院id
		yycgdCustom.setUseryyid(useryyid);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);

		// 药品的采购状态为“已发货”
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		yycgdmxCustom = yycgdmxCustom != null ? yycgdmxCustom
				: new YycgdmxCustom();

		// 设置采购状态为2“已发货”
		yycgdmxCustom.setCgzt("2");
		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);

		// 设置年份
		yycgdQueryVo.setBusinessyear(year);

		return yycgdMapperCustom.findYycgdmxList(yycgdQueryVo);
	}

	@Override
	public int findYycgdReceivceCount(String useryyid, String year,
			YycgdQueryVo yycgdQueryVo) throws Exception {
		// 医院只查询本医院采购信息
		YycgdCustom yycgdCustom = yycgdQueryVo.getYycgdCustom();
		yycgdCustom = yycgdCustom != null ? yycgdCustom : new YycgdCustom();
		// 设置医院id
		yycgdCustom.setUseryyid(useryyid);
		yycgdQueryVo.setYycgdCustom(yycgdCustom);

		// 药品的采购状态为“已发货”
		YycgdmxCustom yycgdmxCustom = yycgdQueryVo.getYycgdmxCustom();
		yycgdmxCustom = yycgdmxCustom != null ? yycgdmxCustom
				: new YycgdmxCustom();

		// 设置采购状态为2“已发货”
		yycgdmxCustom.setCgzt("2");
		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);

		// 设置年份
		yycgdQueryVo.setBusinessyear(year);

		return yycgdMapperCustom.findYycgdmxCount(yycgdQueryVo);
	}

	@Override
	public void saveYycgdrk(String yycgdid, String ypxxid,
			YycgdrkCustom yycgdrkCustom) throws Exception {
		String businessyear = yycgdid.substring(0, 4);//年份
		//采购单药品明细状态为“已发货”，方可入库
		Yycgdmx yycgdmx = this.findYycgdmxByYycgdidAndYpxxid(yycgdid, ypxxid);
		if(yycgdmx == null){
			//提示：找不到采购药品记录
			//...
		}
		//采购单药品明细状态
		String cgzt = yycgdmx.getCgzt();
		if(!cgzt.equals("2")){
			//提示：采购药品状态为已发货方可入库
			//....
		}
		//入库量小于等于采购量方可入库
		Integer cgl = yycgdmx.getCgl();
		Integer rkl = yycgdrkCustom.getRkl();
		if(rkl>cgl){
			//提示：入库量必须小于等于采购量
			ResultUtil.throwExcepion(ResultUtil.createFail(Config.MESSAGE, 519, null));
		}
		
		//更新采购单明细表状态为“已入库”
		yycgdmx.setCgzt("3");//更新为已入库
		//设置年份
		yycgdmx.setBusinessyear(businessyear);
		yycgdmxMapper.updateByPrimaryKey(yycgdmx);
		
		//向入库信息表插入记录
		
		Yycgdrk yycgdrk = new Yycgdrk();
		//将页面提交的入库信息设置到yycgdrk
		BeanUtils.copyProperties(yycgdrkCustom, yycgdrk);

		yycgdrk.setBusinessyear(businessyear);
		yycgdrk.setId(UUIDBuild.getUUID());//主键
		yycgdrk.setYycgdid(yycgdid);//采购单id
		yycgdrk.setYpxxid(ypxxid);//药品id
		yycgdrk.setRktime(MyUtil.getNowDate());//入库时间
		
		//入库金额= 入库量*交易价
		//采购药品交易价
		Float jyjg = yycgdmx.getJyjg();
		Float rkje =  jyjg* rkl;
		//设置入库金额
		yycgdrk.setRkje(rkje);
		yycgdrk.setCgzt("3");//采购状态设置固定值 为3已入库,此字段为统计分析时数据聚合使用
		yycgdrkMapper.insert(yycgdrk);
	}

	@Override
	public List<YycgdmxCustom> findYycgdmxListSum(String yycgdid,YycgdQueryVo yycgdQueryVo)
			throws Exception {
		//设置采购单ID
		YycgdmxCustom yycgdmxCustom =  yycgdQueryVo.getYycgdmxCustom();
		yycgdmxCustom=yycgdmxCustom!=null?yycgdmxCustom:new YycgdmxCustom();
		yycgdmxCustom.setYycgdid(yycgdid);
		yycgdQueryVo.setYycgdmxCustom(yycgdmxCustom);
		String bussinessyear = yycgdid.substring(0,4);
		yycgdQueryVo.setBusinessyear(bussinessyear);
		return yycgdMapperCustom.findYycgdmxListSum(yycgdid, yycgdQueryVo);
	}

	
}
