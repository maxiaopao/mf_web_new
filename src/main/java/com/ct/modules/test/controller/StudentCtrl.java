package com.ct.modules.test.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.modules.test.entity.Student;
import com.ct.modules.test.service.StudentService;
import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;

/**
 * @类名: StudentCtrl
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： 2017-08-09 05:09:26
 */
@Controller
@RequestMapping("/studentCtrl")
public class StudentCtrl {
	
	@Autowired
	private StudentService studentService;
	
	/**
	 * @方法名: studentDataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/studentDataGrid")
	@ResponseBody
	public DataGrid studentDataGrid(Student student){
		try {
			return studentService.studentDataGrid(student);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: studentAdd
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/studentAdd")
	@ResponseBody
	public Json studentAdd(Student student){
		Json j = new Json();
		try {
			if(studentService.studentAdd(student)){
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
	 * @方法名: studentEditPage
	 * @功能描述: 跳转页面
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/studentEditPage")
	public String studentEditPage(HttpServletRequest request, String id) {
		try {
			Student student = studentService.getByPrimaryKey(id);
			request.setAttribute("student", student);
			return "/test/studentEdit";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @方法名: studentEdit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/studentEdit")
	@ResponseBody
	public Json studentEdit(Student student){
		Json j = new Json();
		try {
			if(studentService.studentEdit(student)){
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
	 * @方法名: studentDelete
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/studentDelete")
	@ResponseBody
	public Json studentDelete(String id){
		Json j = new Json();
		try {
			if(studentService.studentDelete(id)){
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
	 * @方法名: getStudentList
	 * @功能描述: 获取所有
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	@RequestMapping("/getStudentList")
	@ResponseBody
	public List<Student>  getStudentList(Student student){
		List<Student> list ;
		try {
			list = studentService.getStudentList(student);
		} catch (Exception e) {
			return null;
		}
		return list;
	}
	
}