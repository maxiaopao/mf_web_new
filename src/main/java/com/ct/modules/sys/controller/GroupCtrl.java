package com.ct.modules.sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;
import com.ct.modules.sys.entity.Group;
import com.ct.modules.sys.service.GroupService;

/**
 * @类名: GroupCtrl
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： 2016-05-07 02:21:30
 */
@Controller
@RequestMapping("/groupCtrl")
public class GroupCtrl {
	
	@Autowired
	private GroupService groupService;
	
	/**
	 * @方法名: groupDataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/groupDataGrid")
	@ResponseBody
	public DataGrid groupDataGrid(Group group){
		try {
			return groupService.groupDataGrid(group);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: groupAdd
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/groupAdd")
	@ResponseBody
	public Json groupAdd(Group group){
		Json j = new Json();
		try {
			if(groupService.groupAdd(group)){
				j.setSuccess(true);
				j.setMsg("添加成功！");
			}else{
				j.setMsg("添加失败！");
			}
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * @方法名: groupEditPage
	 * @功能描述: 跳转页面
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/groupEditPage")
	public String groupEditPage(HttpServletRequest request, String groupid) {
		try {
			Group group = groupService.getByPrimaryKey(groupid);
			request.setAttribute("group", group);
			return "/ht/groupEdit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: groupEdit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/groupEdit")
	@ResponseBody
	public Json groupEdit(Group group){
		Json j = new Json();
		try {
			if(groupService.groupEdit(group)){
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
	 * @方法名: groupDelete
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/groupDelete")
	@ResponseBody
	public Json groupDelete(String groupid){
		Json j = new Json();
		try {
			if(groupService.groupDelete(groupid)){
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
	 * @方法名: getGroupList
	 * @功能描述: 获取所有
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	@RequestMapping("/getGroupList")
	@ResponseBody
	public List<Group>  getGroupList(Group group){
		List<Group> list ;
		try {
			list = groupService.getGroupList(group);
		} catch (Exception e) {
			return null;
		}
		return list;
	}
	
}