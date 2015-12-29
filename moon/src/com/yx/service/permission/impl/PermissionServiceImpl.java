package com.yx.service.permission.impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yx.dao.permission.IPermissionMapper;
import com.yx.entity.Permission;
import com.yx.entity.YParams;
import com.yx.entity.vo.CustomerPermission;
import com.yx.service.permission.IPermissionService;

@Service
public class PermissionServiceImpl implements IPermissionService{

	@Autowired
	private IPermissionMapper permissionMapper;
	
	//子类
	private TreeMap<String,List<HashMap<String, Object>>> childrenMap = null;
	
	@Override
	public HashMap<String,Object> findPermissions(YParams params){
		//返回类型
		HashMap<String, Object> datas = new HashMap<>();
		//装载所有的子元素
		childrenMap = new TreeMap<>();
		//所有的根目标
		List<Permission> permissions = permissionMapper.findPermissionRoot(params);
		if(permissions!=null && permissions.size()>0){
			List<HashMap<String, Object>> maps = new ArrayList<>();//泛型的菱形写法 jdk1.7
			for (Permission permission : permissions) {
				HashMap<String, Object> map = new HashMap<>();
				map.put("name", permission.getName());
				map.put("url", "javascript:void(0);");
				map.put("opid", permission.getId());
				map.put("pid", permission.getId());
				maps.add(map);
				getChildrenData(permission.getId());
			}
			datas.put("root", maps);
			datas.put("children", childrenMap);
			return datas;
		}else{
			return null;
		}
	}
	
	
	/**
	 * @Title: getChildrenData 
	 * @Description: 子类
	 * @param pid  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2014-下午2:17:59]  
	 * @throws  
	 */
	private void getChildrenData(Integer pid){
		//查询所有的子类
		List<Permission> childrenPermissions = permissionMapper.findPermissionChildren(pid);
		//判断是否还有子类对象
		if(childrenPermissions!=null && childrenPermissions.size()>0){
			//数据类型接受
			List<HashMap<String, Object>> maps = new ArrayList<>();
			//开始循环所有子类
			for (Permission permission : childrenPermissions) {
				HashMap<String, Object> map = new HashMap<>();
				map.put("name", permission.getName());
				map.put("url", "javascript:void(0);");
				map.put("opid", permission.getId());
				map.put("pid", permission.getId());
				//添加到返回值中
				maps.add(map);
				getChildrenData(permission.getId());
			}
			childrenMap.put(pid+"", maps);
		}
	}
	
	
	
	@Override
	public int count(YParams params){
		return permissionMapper.count(params);
	}

	@Override
	public Permission get(Integer id) {
		return permissionMapper.get(id);
	}

	@Override
	public int save(Permission permission) {
		return permissionMapper.save(permission);
	}

	@Override
	public int update(Permission permission) {
		return permissionMapper.update(permission);
	}

	@Override
	public int delete(YParams params) {
		return permissionMapper.delete(params);
	}


	@Override
	public List<HashMap<String, Object>> findUserPermission(Integer userId) {
		return permissionMapper.findUserPermission(userId);
	}


	@Override
	public void insert(Permission permission) {
		permissionMapper.insert(permission);
		
	}


	@Override
	public List<Permission> findparents() {
		return permissionMapper.findparents();
	}


	@Override
	public List<CustomerPermission> findListPermissions(YParams yParams) {
		return permissionMapper.findListPermissions(yParams);
	}


	@Override
	public List<HashMap<String, Object>> findzTreeDatas() {
		return permissionMapper.findzTreeDatas();
	}



}
