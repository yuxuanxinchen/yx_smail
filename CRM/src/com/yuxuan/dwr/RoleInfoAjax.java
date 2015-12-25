package com.yuxuan.dwr;


import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.yuxuan.po.MenuInfo;
import com.yuxuan.po.RoleInfo;
import com.yuxuan.po.RoleRelation;
import com.yuxuan.service.MenuInfoService;
import com.yuxuan.service.RoleInfoService;
import com.yuxuan.service.RoleRelationService;
import com.yuxuan.vo.CustomRoleInfo;
import com.yuxuan.vo.CustomerContactsInfo;

public class RoleInfoAjax {

	private RoleInfoService roleInfoService;
	private RoleRelationService roleRelationService;
	private MenuInfoService menuInfoService;
	
	
	public String addRole(Integer[] ids, String roleName) {
		try {
			int size = menuInfoService.queryMenuCount();
			boolean flag = true;
			boolean isOk = false;
			int temp = 0;
			RoleInfo roleInfo = new RoleInfo();
			roleInfo.setRoleName(roleName);
			if (roleInfoService.findByRoleInfoName(roleName)) {
				roleInfoService.saveRoleInfo(roleInfo, null);
				for (int i = 0; i < size; i++) {
					RoleRelation relation = new RoleRelation();
					relation.setRoleInfo(roleInfo);
					MenuInfo menuInfo = new MenuInfo();
					relation.setRoleRelactionAccess(0);
					menuInfo.setMenuId(i + 1);
					 for(Integer integer:ids){
						 if(integer == i+1){
							relation.setRoleRelactionAccess(1);
							 break;
						 }
					 }

					relation.setMenuInfo(menuInfo);
					roleRelationService.saveRoleRelationInfo(relation);
				}
				return "SUCCESS";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "角色已经存在，请仔细查看";
	}
	
	/**
	 * @Title: getRoleInfo 
	 * @Description: 获取角色信息
	 * @param id
	 * @return  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午6:54:50]  
	 * @throws  
	 */
	public String getRoleInfo(Integer id){
		try {
		CustomRoleInfo cinfo = new CustomRoleInfo();
		RoleInfo roleInfo = roleInfoService.queryRoleInfoById(id);
		List<RoleRelation> relations = roleRelationService.findRelationsById(roleInfo);
		XStream xstream ;
		cinfo.setRelations(relations);
		cinfo.setRoleInfo(roleInfo);
		xstream = new XStream(new JsonHierarchicalStreamDriver ());
		xstream.alias("cinfo", CustomRoleInfo.class);
		System.out.println(xstream.toXML(cinfo));
		return xstream.toXML(cinfo);
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	
	public String updaeRoleInfo(Integer[] ids, String roleName,Integer roleId) {
		try {
			
			RoleInfo roleInfo = roleInfoService.queryRoleInfoById(roleId);
			int size = menuInfoService.queryMenuCount();
			List<RoleRelation> relations = roleRelationService.findRelationsById(roleInfo);
			for (int i = 0; i < size; i++) {
				relations.get(i).setRoleRelactionAccess(0);
				for(Integer integer : ids){
					if(i+1 == integer){
						relations.get(i).setRoleRelactionAccess(1);
						break;
					}
				}
				roleRelationService.updateRoleRelationInfo(relations.get(i));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}
	
	/**
	 * @Title: deleteBatch 
	 * @Description: 批量删除
	 * @param ids
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:27:53]  
	 * @throws  
	 */
	public String deleteBatch(Integer[] ids) throws Exception{
		 for (Integer integer : ids) {
			 RoleInfo roleInfo  =  roleInfoService.queryRoleInfoById(integer);
			 List<RoleRelation> relation = roleRelationService.findRelationsById(roleInfo);
				for (int i = 0; i < relation.size(); i++) {
					roleRelationService.deleteRoleRelationInfo(relation.get(i));
				}  
				roleInfoService.deleteRoleInfo(roleInfo);
		}
		
		return "SUCCESS";
		
	}
	
	/**
	 * @Title: deleteRole 
	 * @Description: 删除
	 * @param ids
	 * @return
	 * @throws Exception  
	 * @return String 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午12:28:02]  
	 * @throws  
	 */
	public String deleteRole(Integer ids) throws Exception{
		RoleInfo roleInfo  =  roleInfoService.queryRoleInfoById(ids);
		List<RoleRelation> relation = roleRelationService.findRelationsById(roleInfo);
		for (int i = 0; i < relation.size(); i++) {
			roleRelationService.deleteRoleRelationInfo(relation.get(i));
		}  
		roleInfoService.deleteRoleInfo(roleInfo);
		return "SUCCESS";
	}
	
	
	public RoleInfoService getRoleInfoService() {
		return roleInfoService;
	}
	public void setRoleInfoService(RoleInfoService roleInfoService) {
		this.roleInfoService = roleInfoService;
	}
	public RoleRelationService getRoleRelationService() {
		return roleRelationService;
	}
	public void setRoleRelationService(RoleRelationService roleRelationService) {
		this.roleRelationService = roleRelationService;
	}
	public MenuInfoService getMenuInfoService() {
		return menuInfoService;
	}
	public void setMenuInfoService(MenuInfoService menuInfoService) {
		this.menuInfoService = menuInfoService;
	}
	
}
