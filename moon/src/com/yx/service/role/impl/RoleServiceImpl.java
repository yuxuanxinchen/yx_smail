package com.yx.service.role.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.role.IRoleMapper;
import com.yx.entity.Role;
import com.yx.entity.YParams;
import com.yx.service.role.IRoleService;
import com.yx.utils.TmStringUtils;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [com.yx.service.role.impl.RoleServiceImpl.java]  
 * @ClassName:    [RoleServiceImpl]   
 * @Description:  角色管理serviceImpl
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午6:36:56]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
@Service
public class RoleServiceImpl implements IRoleService{

	@Autowired
	private IRoleMapper roleMapper;
	
	@Override
	public List<Role> findRoles(YParams params){
		if(TmStringUtils.isEmpty(params.getOrder()))params.setOrder("create_time desc");
		return roleMapper.findRoles(params);
	}
	
	@Override
	public int count(YParams params){
		return roleMapper.count(params);
	}

	@Override
	public Role get(Integer id) {
		return roleMapper.get(id);
	}

	@Override
	public int save(Role role) {
		return roleMapper.save(role);
	}

	@Override
	public int update(Role role) {
		return roleMapper.update(role);
	}

	@Override
	public int delete(YParams params) {
		return roleMapper.delete(params);
	}

	@Override
	public int saveRoleUser(Integer userId, Integer roleId) {
		return roleMapper.saveRoleUser(userId, roleId);
	}

	@Override
	public List<HashMap<String, Object>> findFilterUsers(YParams params) {
		return roleMapper.findFilterUsers(params);
	}

	
	@Override
	public int countFilterUsers(YParams params) {
		return roleMapper.countFilterUsers(params);
	}

	@Override
	public int saveRolePermission(Integer roleId, Integer permissionId) {
		return roleMapper.saveRolePermission(roleId, permissionId);
	}
	
	@Override
	public int deleteRolePermission(Integer roleId) {
		return roleMapper.deleteRolePermission(roleId);
	}

	@Override
	public HashMap<String, Object> findRolesByUserId(Integer userId) {
		return roleMapper.findRolesByUserId(userId);
	}

	@Override
	public List findRolePermission(Integer roleId) {
		List<Integer> lists = roleMapper.findRolePermission(roleId);
		if(lists!=null && lists.size() > 0){
			return roleMapper.findRolePermission(roleId);
		}
		return null;
	}
}
