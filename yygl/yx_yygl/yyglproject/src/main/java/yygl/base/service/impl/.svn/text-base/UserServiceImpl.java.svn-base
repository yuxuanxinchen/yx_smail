package yygl.base.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import yygl.base.dao.mapper.SysuserMapper;
import yygl.base.dao.mapper.SysuserMapperCustom;
import yygl.base.dao.mapper.UsergysMapper;
import yygl.base.dao.mapper.UserjdMapper;
import yygl.base.dao.mapper.UseryyMapper;
import yygl.base.pojo.po.Sysuser;
import yygl.base.pojo.po.SysuserExample;
import yygl.base.pojo.po.Usergys;
import yygl.base.pojo.po.UsergysExample;
import yygl.base.pojo.po.Userjd;
import yygl.base.pojo.po.UserjdExample;
import yygl.base.pojo.po.Useryy;
import yygl.base.pojo.po.UseryyExample;
import yygl.base.pojo.vo.ActiveUser;
import yygl.base.pojo.vo.SysuserCustom;
import yygl.base.pojo.vo.SysuserQueryVo;
import yygl.base.process.result.ResultInfo;
import yygl.base.process.result.ResultUtil;
import yygl.base.service.UserService;
import yyglutil.util.MD5;
import yyglutil.util.UUIDBuild;

public class UserServiceImpl implements UserService{

	@Autowired
	private SysuserMapper sysuserMapper;  //注入mapper
	
	@Autowired
	private SysuserMapperCustom sysuserMapperCustom;
	
	@Autowired
	private UserjdMapper userjdMapper;
	
	@Autowired
	private UseryyMapper useryyMapper;
	
	@Autowired
	private UsergysMapper usergysMapper;
	
	private ResultInfo resultInfo = new ResultInfo();
	
	
	
	/**
	 * Title: findSysuserById
	 * Description: 根据主键来查询
	 * @param id
	 * @return
	 * @throws Exception 
	 * @see yygl.base.service.UserService#findSysuserById(java.lang.String)
	 */
	@Override
	public Sysuser findSysuserById(String id) throws Exception {
		return sysuserMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public List<SysuserCustom> findSysuserList(SysuserQueryVo sysuserQueryVo)
			throws Exception {
		return sysuserMapperCustom.findSysuserList(sysuserQueryVo);
	}


	@Override
	public int findSysuserCount(SysuserQueryVo sysuserQueryVo) throws Exception {
		return sysuserMapperCustom.findSysuserCount(sysuserQueryVo);
	}
	
	
	public Sysuser findSysuserByUserid(String userid) throws Exception{
		SysuserExample sysuserExample = new SysuserExample();
		SysuserExample.Criteria criteria = sysuserExample.createCriteria();
		criteria.andUseridEqualTo(userid);
		List<Sysuser> lists = sysuserMapper.selectByExample(sysuserExample);
		if(lists!=null && lists.size() == 1){
			return lists.get(0);
		}
		return null;
	}

	
	public Userjd findUserjdByMc(String mc) throws Exception{
		UserjdExample userjdExample = new UserjdExample();
		UserjdExample.Criteria criteria = userjdExample.createCriteria();
		criteria.andMcEqualTo(mc);
		List<Userjd> lists = userjdMapper.selectByExample(userjdExample);
		if(lists != null && lists.size() ==1){
			return lists.get(0);
		}
	    return null;
	}
	
	public Useryy findUseryyByMc(String mc) throws Exception{
		UseryyExample useryyExample = new UseryyExample();
		UseryyExample.Criteria criteria = useryyExample.createCriteria();
		criteria.andMcEqualTo(mc);
		List<Useryy> lists = useryyMapper.selectByExample(useryyExample);
		if(lists != null && lists.size() ==1){
			return lists.get(0);
		}
	    return null;
	}
	
	
	public Usergys findUsergysByMc(String mc) throws Exception{
		UsergysExample useryyExample = new UsergysExample();
		UsergysExample.Criteria criteria = useryyExample.createCriteria();
		criteria.andMcEqualTo(mc);
		List<Usergys> lists = usergysMapper.selectByExample(useryyExample);
		if(lists != null && lists.size() ==1){
			return lists.get(0);
		}
	    return null;
	}
	

	@Override
	public void insertSysuer(SysuserCustom sysuserCustom) throws Exception {
		
	      Sysuser sysuser = this.findSysuserById(sysuserCustom.getUserid());
	      if(sysuser!=null){  //帐号重复  抛出异常,
	    	  ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 217, null));
	      }
		  
	      String groupidString = sysuserCustom.getGroupid();
	      String sysmcString = sysuserCustom.getSysmc(); //单位名称
	      String sysid = sysuserCustom.getSysid();
	      if(groupidString.equals("1") || "2".equals(groupidString)){
	    	  //监督单位  //根据单位名称查询单位信息
	    	   Userjd userjd = this.findUserjdByMc(sysmcString);
	    	    if(userjd==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 209, null));
	    	    	 return ;
	    	    }
	    	   sysid = userjd.getId();
	      }else  if(groupidString.equals("3")){
	    	   Useryy useryy = this.findUseryyByMc(sysmcString);
	    	    if(useryy==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 207, null));
	    	    }
	    	  sysid = useryy.getId();
	      }else  if(groupidString.equals("4")){
	    	   Usergys usergys = this.findUsergysByMc(sysmcString);
	    	    if(usergys==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 911, null));
	    	    }
	    	  sysid = usergys.getId();
	      }
	      
	      //设置主键
	      sysuserCustom.setId(UUIDBuild.getUUID());
	      sysuserCustom.setPwd(new MD5().getMD5ofStr(sysuserCustom.getPwd()));
	      sysuserCustom.setSysid(sysid);
	      sysuserCustom.setUserstate(sysuserCustom.getUserstate()==""||sysuserCustom.getUserstate()==null?1+"":sysuserCustom.getUserstate());
	      sysuserMapper.insert(sysuserCustom);
		
	}


	@Override
	public void deleteSysuser(String id) throws Exception {
		
		Sysuser sysuser = sysuserMapper.selectByPrimaryKey(id);
		if(sysuser==null){
		  ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 108, null));
		}
		sysuserMapper.deleteByPrimaryKey(id);
	}


	@SuppressWarnings("unused")
	@Override
	public void updateSysuser(String id, SysuserCustom sysuserCustom)
			throws Exception {
		String pwd_page = sysuserCustom.getPwd().trim();
		String pwd_md5 = null;
		String userid_page = sysuserCustom.getUserid();//页面提交的账号可能是用户修改的账号
		Sysuser sysuser = sysuserMapper.selectByPrimaryKey(id); //原来帐号的信息
		if(sysuser == null){
			//.....
		}
		String userid = sysuser.getUserid();//用户原始账号
		if(!userid_page.equals(userid)){//判断和数据库中帐号有没有冲突
			Sysuser sysuserdb = this.findSysuserByUserid(userid_page);
			if(sysuserdb!=null){//帐号冲突
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 213, null));
			}
		}
		
		//根据页面提交的单位名称查询单位id
		String groupid = sysuserCustom.getGroupid();//用户类型
		if(groupid.equals("0")){ //系统管理员
			Sysuser sysuser_update = sysuserMapper.selectByPrimaryKey(id);
			if(pwd_md5!=null){
				sysuser_update.setPwd(pwd_md5);
			}
			sysuser_update.setGroupid(sysuserCustom.getGroupid());
			sysuser_update.setUserid(sysuserCustom.getUserid());
			sysuser_update.setUsername(sysuserCustom.getUsername());
			sysuser_update.setUserstate(sysuserCustom.getUserstate());
			sysuserMapper.updateByPrimaryKey(sysuser_update);
		   ResultUtil.createSuccess(yygl.base.process.context.Config.MESSAGE, 912, null);
		}else{
		String sysmc = sysuserCustom.getSysmc();//页面输入的单位名称
		String sysid = null;//单位id
		if(groupid.equals("1") || groupid.equals("2")){//监督单位   根据单位名称查询单位信息
			Userjd userjd = this.findUserjdByMc(sysmc);
			if(userjd==null){//抛出异常，可预知异常
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 217, null));
			}
			sysid = userjd.getId();
		}else if(groupid.equals("3")){//卫生室 根据单位名称查询单位信息
			Useryy useryy = this.findUseryyByMc(sysmc);
			if(useryy==null){//抛出异常，可预知异常
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 217, null));
			}
			sysid = useryy.getId();
		}else if(groupid.equals("4")){//供货商 根据单位名称查询单位信息
			Usergys usergys = this.findUsergysByMc(sysmc);
			if(usergys==null){//抛出异常，可预知异常
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 217, null));
			}
			sysid = usergys.getId();
		}
		
		//如果密码不为空则修改
	
		if(pwd_page!=null && !pwd_page.equals("")){
			pwd_md5 = new MD5().getMD5ofStr(pwd_page);
		}
		
		Sysuser sysuser_update = sysuserMapper.selectByPrimaryKey(id);

		sysuser_update.setUserid(sysuserCustom.getUserid());
		sysuser_update.setUsername(sysuserCustom.getUsername());
		sysuser_update.setUserstate(sysuserCustom.getUserstate());
		if(pwd_md5!=null){
			sysuser_update.setPwd(pwd_md5);
		}
		sysuser_update.setGroupid(sysuserCustom.getGroupid());
		sysuser_update.setSysid(sysid);//单位id
		sysuserMapper.updateByPrimaryKey(sysuser_update);
		}
	}


	@Override
	public SysuserCustom searchSysuserById(String id) throws Exception {
		
		Sysuser sysuser = sysuserMapper.selectByPrimaryKey(id);
		
		  String groupid = sysuser.getGroupid();
		  String sysid = sysuser.getSysid();
		  String mc = null;
	      if(groupid.equals("1") || "2".equals(groupid)){
	    	  //监督单位   根据单位名称查询单位信息
	    	   Userjd userjd = this.userjdMapper.selectByPrimaryKey(sysid);
	    	    if(userjd==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 209, null));
	    	    }
	    	   mc = userjd.getMc();
	      }else  if(groupid.equals("3")){
	    	   Useryy useryy = this.useryyMapper.selectByPrimaryKey(sysid);
	    	    if(useryy==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 207, null));
	    	    }
	    	  mc = useryy.getMc();
	      }else  if(groupid.equals("4")){
	    	   Usergys usergys = this.usergysMapper.selectByPrimaryKey(sysid);
	    	    if(usergys==null){
	    	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 911, null));
	    	    }
	    	    mc = usergys.getMc();
	      }

	      SysuserCustom sysuserCustom = new SysuserCustom();
	      BeanUtils.copyProperties(sysuser, sysuserCustom); //属性值拷贝
	      sysuserCustom.setSysmc(mc);
	      
		return sysuserCustom;
	}


	@Override
	public ActiveUser checkUserInfo(String userId, String pwd) throws Exception {
        Sysuser sysuser = this.findSysuserByUserid(userId);
		if(sysuser == null){
	    	 ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 101, null));
	    	 return null;
		}
		
		String pwd_db = sysuser.getPwd();
		String pwd_md5 = new MD5().getMD5ofStr(pwd);
		if(!pwd_db.equalsIgnoreCase(pwd_md5)){
			ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE, 114, null));
		     return null;
		}
		
		//构建用户身份信息
		ActiveUser activeUser = new ActiveUser();
		activeUser.setUserid(userId);
		activeUser.setUsername(sysuser.getUsername());
		activeUser.setGroupid(sysuser.getGroupid());
		activeUser.setSysid(sysuser.getSysid());  //单位ID
		String sysmc  = null;
		String groupid = sysuser.getGroupid();
		String sysid = sysuser.getSysid();// 单位id
		if (groupid.equals("1") || groupid.equals("2")) {
			Userjd userjd = userjdMapper.selectByPrimaryKey(sysid);
			if (userjd == null) {
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE,
						217, null));
			}
			sysmc = userjd.getMc();
		} else if (groupid.equals("3")) {
			Useryy useryy = useryyMapper.selectByPrimaryKey(sysid);
			if (useryy == null) {
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE,
						217, null));
			}
			sysmc = useryy.getMc();
		} else if (groupid.equals("4")) {
			Usergys usergys = usergysMapper.selectByPrimaryKey(sysid);
			if (usergys == null) {
				ResultUtil.throwExcepion(ResultUtil.createFail(yygl.base.process.context.Config.MESSAGE,
						217, null));
			}
			sysmc = usergys.getMc();
		}
		activeUser.setSysmc(sysmc);
		return activeUser;
	}

}
