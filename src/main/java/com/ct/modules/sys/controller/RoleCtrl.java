/**
 * @Title: MmDepartCtrl.java
 * @Package com.ct.controller.ht
 * @功能描述: TODO(用一句话描述该文件做什么)
 * @创建人： 马飞
 * @创建时间： 2013-8-9 下午02:35:15
 * @修改内容：（无）
 * @修改人：（无）
 * @修改时间：（无）
 * @版本： V1.0
 */
package com.ct.modules.sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;
import com.ct.modules.sys.entity.Role;
import com.ct.modules.sys.entity.RoleMenu;
import com.ct.modules.sys.service.RoleService;

/**
 * @类名: MmDepartCtrl
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:35:15
 */

@Controller
@RequestMapping("/roleCtrl")
public class RoleCtrl {
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Role entity){
		try {
			return roleService.dataGrid(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: add
	 * @功能描述: 新增
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:27:54
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Role role, String checkList) {
		Json j = new Json();
		try {
			if (roleService.add(role, checkList)) {
				j.setSuccess(true);
				j.setMsg("添加成功！");
				j.setObj(role);
			} else {
				j.setSuccess(false);
				j.setMsg("添加失败！");
				j.setObj(role);
			}

		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * @方法名: edit
	 * @功能描述: 编辑
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:35
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Role role,String checkList){
		Json j = new Json();
		try {
			if (roleService.edit(role, checkList)) {
				j.setSuccess(true);
				j.setMsg("编辑成功！");
				j.setObj(role);
			} else {
				j.setSuccess(false);
				j.setMsg("编辑失败！");
				j.setObj(role);
			}

		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	
	/**
	 * @方法名: editPage
	 * @功能描述: 跳转到修改页面
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:18
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String roleid) {
		try {
			Role role = roleService.get(roleid);
			request.setAttribute("role", role);
			return "/ht/roleEdit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	
	/**
	 * @方法名: delete
	 * @功能描述: 物理删除
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:58
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Json delete(String roleid){
		Json j = new Json();
		try {
			roleService.delete(roleid);
			j.setSuccess(true);
			j.setMsg("删除成功！");
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	
	@RequestMapping("/getMenuIdByRoleId")
	@ResponseBody
	public List<RoleMenu>  getMenuIdByRoleId(String roleid){
		try {
			return roleService.getMenuIdByRoleId(roleid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	/**
	 * 
	 * @方法名: getRoleTree
	 * @功能描述: TODO(这里用一句话描述这个方法的作用)
	 * @param roleid
	 * @return
	 * @创建人：马飞
	 * @创建时间： 2013-8-16 下午02:15:01
	 */
	private StringBuilder builder ;
	@RequestMapping("/getRoleTree")
//	@ResponseBody
	public void getRoleTree(HttpServletResponse response){
		builder = new StringBuilder();
		try {
			List<Role> list =roleService.getRoleTree();
			
			if(list.size()!=0){
				builder.append("[");
				builder.append("{\"id\":");
				builder.append("\"" + "123123" + "\"");
				builder.append(",");
				builder.append("\"text\":");
				builder.append("\"" + "角色列表" + "\"");
				builder.append(",");
				builder.append("\"iconCls\":");
				builder.append("\"group_add\"");
				builder.append(getRoleTree(list));
				builder.append("}");
				builder.append("]");
			
		}
			
			response.getWriter().print(builder.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private String getRoleTree(List<Role> list) {

		
		StringBuilder builder = new StringBuilder();

		for (int i = 0; i < list.size(); i++) {
			Role treeRole = list.get(i);
			if (i == 0) {
				if (treeRole == null) {
				} else {
					builder.append(",");
					builder.append("\"children\":");
				}
				builder.append("[");
			}
			builder.append("{\"id\":");
			builder.append("\"" + treeRole.getRoleid() + "\"");
			builder.append(",");
			builder.append("\"text\":");
			builder.append("\"" + treeRole.getRolename() + "\"");
			builder.append(",");
			builder.append("\"iconCls\":");
			builder.append("\"group_key\"");
			builder.append("}");
			if (list.size() == i + 1) {
				builder.append("]");
			} else {
				builder.append(",");
			}
		}
		return builder.toString();
	}

}
