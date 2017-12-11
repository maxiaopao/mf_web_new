/**
 * @Title: MmDepartService.java
 * @Package com.ct.service.ht
 * @功能描述: TODO(用一句话描述该文件做什么)
 * @创建人： 马飞
 * @创建时间： 2013-8-9 下午02:43:53
 * @修改内容：（无）
 * @修改人：（无）
 * @修改时间：（无）
 * @版本： V1.0
 */
package com.ct.modules.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.DataGrid;
import com.ct.common.util.SysUtil;
import com.ct.modules.sys.entity.Role;
import com.ct.modules.sys.entity.RoleMenu;

/**
 * @类名: MmDepartService
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:43:53
 */
@Service
public class RoleService {
	
	@Autowired
	private MyBatisDao<Role> roleMapper;
	
	@Autowired
	private MyBatisDao<RoleMenu> roleMenuMapper;
	
	/**
	 * EasyUI-DataGrid-分页查询-封装结果集
	 * @author mafei
	 * @param MmRole record
	 * @param PageHelper ph
	 * @return DataGrid
	 */
	public DataGrid dataGrid(Role entity)throws Exception{
		return roleMapper.getDataGrid("roleMapper.getAllByPage", entity, entity.getPage(), entity.getRows());
	}
	
	public boolean add(Role entity,String checkList) throws Exception{
		if (entity == null) {
			throw new Exception(Role.class + "对象参数信息为Empty！");
		}
		entity.setRoleid(SysUtil.createID("JS"));
		entity.setStatus(Short.valueOf("1"));
		boolean falg = false;
		if(roleMapper.add("roleMapper.insert", entity)){
			
			RoleMenu  roleMenu = new RoleMenu();
			roleMenu.setRoleid(entity.getRoleid());
			String[] checkArray = checkList.split("\\,");
			for (int i = 0; i < checkArray.length; i++) {
				roleMenu.setMenuid(checkArray[i]);
				roleMenu.setStatus(Short.valueOf("1"));
				falg = roleMenuMapper.add("roleMenuMapper.insert",roleMenu);
				if(falg){
					
				}else{
					return falg;
				}
			}
			return falg;
		}else{
			return falg;
		}
	}
	
	/**
	 * 
	 * @方法名: edit
	 * @功能描述: 编辑
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:13
	 */
	public boolean edit(Role entity,String checkList) throws Exception {
		 if (entity == null) {
	            throw new Exception(Role.class + "对象参数信息为Empty！");
	     }
		
		 RoleMenu rm = new RoleMenu();
		 
		 rm.setRoleid(entity.getRoleid());
		 
		 if(roleMenuMapper.remove("roleMenuMapper.delete", rm)){
			 
		 }else{
			 return false;
		 }
		 
		 boolean falg = false;
		 if(roleMapper.edit("roleMapper.updateByPrimaryKeySelective", entity)){
			 falg = true;
			 if(checkList.length()!=0){
				RoleMenu  roleMenu = new RoleMenu();
				roleMenu.setRoleid(entity.getRoleid());
				String[] checkArray = checkList.split("\\,");
				for (int i = 0; i < checkArray.length; i++) {
					roleMenu.setMenuid(checkArray[i]);
					roleMenu.setStatus(Short.valueOf("1"));
					falg = roleMenuMapper.add("roleMenuMapper.insert",roleMenu);
				}
			 }
			 return falg;
		 }else{
			return falg;
		 }
		
		
		
		
		
	}
	
	/**
	 * 
	 * @方法名: get
	 * @功能描述: 获取单条数据
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:21
	 */
	public Role get(String roleid) throws Exception {
		if (roleid == null) {
	            throw new Exception(roleid + "参数信息为Empty！");
	     }
		Role entity = new Role();
		entity.setRoleid(roleid);
		return roleMapper.get("roleMapper.get", entity);
	}
	
	
	
	
	/**
	 * 
	 * @方法名: delete
	 * @功能描述: 物理删除
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:30
	 */
	public boolean delete(String id) throws Exception {
		if (id == null) {
	            throw new Exception(id + "参数信息为Empty！");
	     }
		Role entity = new Role();
		entity.setRoleid(id);
		entity.setStatus(Short.valueOf("0"));
		return roleMapper.edit("roleMapper.updateByPrimaryKeySelective", entity);
	}
	
	public List<Role> getRoleTree() throws Exception  {
			return roleMapper.getAll("roleMapper.getAll");
	}
	
	public List<RoleMenu> getMenuIdByRoleId(String roleid) throws Exception{
		RoleMenu rm = new RoleMenu();
		rm.setRoleid(roleid);
		return roleMenuMapper.getAllByEntity("roleMenuMapper.getMenuIdByRoleId", rm);
	}

}
