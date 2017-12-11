package com.ct.modules.${packagename}.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.modules.${packagename}.entity.${objectname};
import com.ct.modules.${packagename}.service.${objectname}Service;
import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;

/**
 * @类名: ${objectname}Ctrl
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
 */
@Controller
@RequestMapping("/${"${objectname}"?uncap_first}Ctrl")
public class ${objectname}Ctrl {
	
	@Autowired
	private ${objectname}Service ${"${objectname}"?uncap_first}Service;
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}DataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/${"${objectname}"?uncap_first}DataGrid")
	@ResponseBody
	public DataGrid ${"${objectname}"?uncap_first}DataGrid(${objectname} ${"${objectname}"?uncap_first}){
		try {
			return ${"${objectname}"?uncap_first}Service.${"${objectname}"?uncap_first}DataGrid(${"${objectname}"?uncap_first});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Add
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/${"${objectname}"?uncap_first}Add")
	@ResponseBody
	public Json ${"${objectname}"?uncap_first}Add(${objectname} ${"${objectname}"?uncap_first}){
		Json j = new Json();
		try {
			if(${"${objectname}"?uncap_first}Service.${"${objectname}"?uncap_first}Add(${"${objectname}"?uncap_first})){
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
	 * @方法名: ${"${objectname}"?uncap_first}EditPage
	 * @功能描述: 跳转页面
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/${"${objectname}"?uncap_first}EditPage")
	public String ${"${objectname}"?uncap_first}EditPage(HttpServletRequest request, String ${"${primary}"?lower_case}) {
		try {
			${objectname} ${"${objectname}"?uncap_first} = ${"${objectname}"?uncap_first}Service.getByPrimaryKey(${"${primary}"?lower_case});
			request.setAttribute("${"${objectname}"?uncap_first}", ${"${objectname}"?uncap_first});
			return "/${packagename}/${"${objectname}"?uncap_first}Edit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Edit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/${"${objectname}"?uncap_first}Edit")
	@ResponseBody
	public Json ${"${objectname}"?uncap_first}Edit(${objectname} ${"${objectname}"?uncap_first}){
		Json j = new Json();
		try {
			if(${"${objectname}"?uncap_first}Service.${"${objectname}"?uncap_first}Edit(${"${objectname}"?uncap_first})){
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
	 * @方法名: ${"${objectname}"?uncap_first}Delete
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/${"${objectname}"?uncap_first}Delete")
	@ResponseBody
	public Json ${"${objectname}"?uncap_first}Delete(String ${"${primary}"?lower_case}){
		Json j = new Json();
		try {
			if(${"${objectname}"?uncap_first}Service.${"${objectname}"?uncap_first}Delete(${"${primary}"?lower_case})){
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
	 * @方法名: get${objectname}List
	 * @功能描述: 获取所有
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	@RequestMapping("/get${objectname}List")
	@ResponseBody
	public List<${objectname}>  get${objectname}List(${objectname} ${"${objectname}"?uncap_first}){
		List<${objectname}> list ;
		try {
			list = ${"${objectname}"?uncap_first}Service.get${objectname}List(${"${objectname}"?uncap_first});
		} catch (Exception e) {
			return null;
		}
		return list;
	}
	
}