package yygl.base.service;

import java.util.List;

import yygl.base.pojo.po.Sysuser;
import yygl.base.pojo.po.Usergys;
import yygl.base.pojo.po.Userjd;
import yygl.base.pojo.po.Useryy;
import yygl.base.pojo.vo.ActiveUser;
import yygl.base.pojo.vo.SysuserCustom;
import yygl.base.pojo.vo.SysuserQueryVo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.base.service.impl.UserService.java]  
 * @ClassName:    [UserService]   
 * @Description:  用户接口
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月22日 上午8:55:33]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月22日 上午8:55:33]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface UserService {

	/**
	 * @Title: findSysuserById 
	 * @Description:根据ID来查询用户
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return Sysuser 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月22日 上午8:56:30]  
	 * @throws  
	 */
	public Sysuser findSysuserById(String id) throws Exception;
	
	/**
	 * @Title: findSysuserList 
	 * @Description: 查询用户信息
	 * @param sysuserQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<SysuserCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:42:11]  
	 * @throws  
	 */
	public List<SysuserCustom> findSysuserList(SysuserQueryVo sysuserQueryVo) throws Exception;
	
	/**
	 * @Title: findSysuserCount 
	 * @Description: 查询总数 
	 * @param sysuserQueryVo
	 * @return
	 * @throws Exception  
	 * @return int 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午4:25:02]  
	 * @throws  
	 */
	public int findSysuserCount(SysuserQueryVo sysuserQueryVo) throws Exception;

	
	/**
	 * @Title: insertSysuer 
	 * @Description: 添加用户 
	 * @param sysuserCustom
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:08:42]  
	 * @throws  
	 */
	public void insertSysuer(SysuserCustom sysuserCustom) throws Exception;
	
	/**
	 * @Title: findSysuserByUserid 
	 * @Description: 获取用户ID
	 * @param userid
	 * @return
	 * @throws Exception  
	 * @return Sysuser 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:22:48]  
	 * @throws  
	 */
	public Sysuser findSysuserByUserid(String userid) throws Exception;
	
	/**
	 * @Title: findUserjdByMc 
	 * @Description: TODO 
	 * @param mc
	 * @return
	 * @throws Exception  
	 * @return Userjd 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:41:16]  
	 * @throws  
	 */
	public Userjd findUserjdByMc(String mc) throws Exception;
	
	/**
	 * @Title: findUseryyByMc 
	 * @Description: TODO 
	 * @param mc
	 * @return
	 * @throws Exception  
	 * @return Useryy 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:41:35]  
	 * @throws  
	 */
	public Useryy findUseryyByMc(String mc) throws Exception;
	
	/**
	 * @Title: findUsergysByMc 
	 * @Description: TODO 
	 * @param mc
	 * @return
	 * @throws Exception  
	 * @return Usergys 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月23日 下午6:41:59]  
	 * @throws  
	 */
	public Usergys findUsergysByMc(String mc) throws Exception;
	
	/**
	 * @Title: deleteSysuser 
	 * @Description: 根据ID来删除用户
	 * @param id
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午3:46:22]  
	 * @throws  
	 */
	public void deleteSysuser(String id) throws Exception;
	
	/**
	 * @Title: updateSysuser 
	 * @Description:修改用户 
	 * @param id
	 * @param sysuserCustom
	 * @throws Exception  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午5:23:04]  
	 * @throws  
	 */
	public void updateSysuser(String id,SysuserCustom sysuserCustom) throws Exception;
	
	/**
	 * @Title: findSysuserById 
	 * @Description: 获取用户信息 根据主键
	 * @param id
	 * @return
	 * @throws Exception  
	 * @return SysuserCustom 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月24日 下午5:53:21]  
	 * @throws  
	 */
	public SysuserCustom searchSysuserById(String id) throws Exception;
	
	/**
	 * @Title: checkUserInfo 
	 * @Description: 效验用户信息
	 * @param userId
	 * @param pwd
	 * @return
	 * @throws Exception  
	 * @return ActiveUser 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午2:01:43]  
	 * @throws  
	 */
	public  ActiveUser checkUserInfo(String userId,String pwd) throws Exception;
	
}
