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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;
import com.ct.modules.sys.entity.Depart;
import com.ct.modules.sys.service.DepartService;

/**
 * @类名: MmDepartCtrl
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:35:15
 */

@Controller
@RequestMapping("/departCtrl")
public class DepartCtrl {
	
	@Autowired
	private DepartService departService;
	
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Depart depart){
		try {
			depart.setStatus(Short.valueOf("1"));
			return departService.dataGrid(depart);
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
	@RequestMapping("/addDepart")
	@ResponseBody
	public Json addDepart(Depart depart){
		Json j = new Json();
		try {
			departService.add(depart);
			j.setSuccess(true);
			j.setMsg("添加成功！");
			j.setObj(depart);
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
	public String editPage(HttpServletRequest request, String departid) {
		try {
			Depart depart = departService.get(departid);
			request.setAttribute("depart", depart);
			return "/ht/departEdit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * @方法名: edit
	 * @功能描述: 编辑
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:35
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Depart depart){
		Json j = new Json();
		try {
			departService.edit(depart);
			j.setSuccess(true);
			j.setMsg("编辑成功！");
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * @方法名: delete
	 * @功能描述: 物理删除
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:58
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Json delete(String departid){
		Json j = new Json();
		try {
			departService.delete(departid);
			j.setSuccess(true);
			j.setMsg("删除成功！");
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 
	 * @方法名: getDepartList
	 * @功能描述: TODO(这里用一句话描述这个方法的作用)
	 * @return
	 * @创建人：马飞
	 * @创建时间： 2013-8-20 下午04:30:46
	 */
	@RequestMapping("/getDepartList")
	@ResponseBody
	public List<Depart>  getDepartList(){
		List<Depart> list ;
		try {
//			json = JSONObject.toJSON(departService.getDepartList()).toString();
			list = departService.getDepartList();
		} catch (Exception e) {
			return null;
		}
		return list;
	}
	

}
