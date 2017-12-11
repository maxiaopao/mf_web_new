/**
 * @Title: MenuCtrl.java
 * @Package com.ct.controller.ht
 * @功能描述: TODO(用一句话描述该文件做什么)
 * @创建人： 马飞
 * @创建时间： 2013-8-9 下午04:03:30
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

import com.ct.common.entity.Json;
import com.ct.common.entity.JsonTreeData;
import com.ct.modules.sys.entity.Csr;
import com.ct.modules.sys.entity.Menu;
import com.ct.modules.sys.service.MenuService;

/**
 * @类名: MenuCtrl
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午04:03:30
 */

@Controller
@RequestMapping("/menuCtrl")
public class MenuCtrl {

	@Autowired
	private MenuService menuService;
	
	
	@RequestMapping("/editPageMenu")
	public String editPageMenu(HttpServletRequest request, String menuid) {
		try {
			Menu menu = menuService.getMenuByMenuid(menuid);
			request.setAttribute("menu", menu);
			return "/ht/menuEdit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 
	 * @方法名: updateMenu
	 * @功能描述: 更新菜单通过menuid
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-20 下午10:29:04
	 */
	@RequestMapping("/updateMenu")
	@ResponseBody
	public Json updateMenu(Menu menu){
		Json j = new Json();
		try {
			if(menuService.updateMenu(menu)){
				j.setSuccess(true);
				j.setMsg("编辑成功！");
			}else{
				j.setMsg("编辑失败！");
			}
			
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 
	 * @方法名: addMenu
	 * @功能描述: 添加菜单
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Evan
	 * @创建时间： 2016-1-8 下午02:16:29
	 */
	@RequestMapping("/addMenu")
	@ResponseBody
	public Json addMenu(Menu menu){
		Json j = new Json();
		try {
			if(menuService.addMenu(menu)){
				j.setSuccess(true);
				j.setMsg("添加成功");
			}else{
				j.setMsg("添加失败");
			}
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	
	/**
	 * @方法名: menuDelete
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/menuDelete")
	@ResponseBody
	public Json menuDelete(String menuid){
		Json j = new Json();
		try {
			if(menuService.menuDelete(menuid)){
				j.setSuccess(true);
				j.setMsg("删除成功！");
			}else{
				j.setMsg("删除失败！");
			}
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	
	/**
	 * 
	 * @方法名: menuTree
	 * @功能描述: 左侧菜单
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2016-5-7 下午06:44:34
	 */
	@RequestMapping("/menuTree")
	@ResponseBody
	public List<JsonTreeData> menuTree(HttpServletResponse response,HttpServletRequest request){
		Csr session = (Csr) request.getSession().getAttribute("csrSession");
		try {
			return menuService.getTreeData(session.getUser_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@RequestMapping("/menuTreeAdd")
	@ResponseBody
	public List<JsonTreeData> menuTreeAdd(HttpServletResponse response,String roletype){
		try {
			return menuService.getTreeDataAdd();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/getTreeMenuAdd")
	@ResponseBody
	public List<JsonTreeData> getTreeMenuAdd(HttpServletResponse response){
		try {
			return menuService.getTreeMenuAdd();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
