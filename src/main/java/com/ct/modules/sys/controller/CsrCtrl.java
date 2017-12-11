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
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ct.common.annotation.SystemLog;
import com.ct.common.entity.DataGrid;
import com.ct.common.entity.Json;
import com.ct.modules.sys.entity.Csr;
import com.ct.modules.sys.service.CsrService;

/**
 * @类名: MmDepartCtrl
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:35:15
 */

@Controller
@RequestMapping("/csrCtrl")
public class CsrCtrl {
	
	@Autowired
	private CsrService csrService;
	
	
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Csr entity){
		try {
			return csrService.dataGrid(entity);
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
	public Json add(Csr csr,String checkList){
		Json j = new Json();
		try {
			if(csrService.add(csr,checkList)){
				j.setSuccess(true);
				j.setMsg("添加成功！");
				j.setObj(csr);
			}else{
				j.setSuccess(false);
				j.setMsg("添加失败！");
				j.setObj(csr);
			}
			
		} catch (Exception e) {
			
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
	public String editPage(HttpServletRequest request, String user_id) {
		try {
			Csr csr = csrService.get(user_id);
			request.setAttribute("csr", csr);
			return "/ht/csrEdit";
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
	public Json edit(Csr csr,String checkList){
		
		Json j = new Json();
		try {
			if(csrService.edit(csr,checkList)){
				j.setSuccess(true);
				j.setMsg("修改成功！");
				j.setObj(csr);
			}else{
				j.setSuccess(false);
				j.setMsg("修改失败！");
				j.setObj(csr);
			}
			
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	
	@RequestMapping("/editPasswd")
	@ResponseBody
	public Json editPasswd(Csr csr,HttpServletRequest request){
		
		Json j = new Json();
		
		Csr session = (Csr) request.getSession().getAttribute("csrSession");
		csr.setCsrid(session.getCsrid());
		try {
			if(csrService.editPasswd(csr)){
				j.setSuccess(true);
				j.setMsg("修改成功！");
				j.setObj(csr);
			}else{
				j.setSuccess(true);
				j.setMsg("修改失败！");
				j.setObj(csr);
			}
			
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * @方法名: delete
	 * @功能描述: 
	 * @创建人: H-BOY
	 * @创建时间： 2013-8-14 上午10:28:58
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Json delete(String user_id){
		Json j = new Json();
		try {
			csrService.delete(user_id);
			j.setSuccess(true);
			j.setMsg("删除成功！");
		} catch (Exception e) {
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	@RequestMapping("/getRoleIdByCsrId")
	@ResponseBody
	public String  getRoleIdByCsrId(String csrid){
		String json = null;
		try {
			json = JSONObject.toJSON(csrService.getRoleidByCsrid(csrid)).toString();
		} catch (Exception e) {
		}
		return json;
	}
	
	@RequestMapping("/login")
	@ResponseBody
	@SystemLog(module="登录",methods="login",description="")
	public Json login(Csr csr,ModelMap model,HttpServletRequest request,HttpServletResponse response){
		
		Json j = new Json();
		Csr user;
		try {
			user = csrService.login(csr);
			if(user!=null ){
				j.setSuccess(true);
				request.getSession().setAttribute("csrSession", user);
			}else{
				j.setMsg("帐号或密码错误！！！");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return j;
	}
	
	
	@RequestMapping("/logout")
	@ResponseBody
	public Json logout(Csr csr,ModelMap model,HttpServletRequest request) throws Exception{
			HttpSession session = request.getSession();  
			session.removeAttribute("csrSession");//是清除SESSION里的某个属性. 
			session.invalidate();  
			Json j = new Json();
			j.setSuccess(true);
		return j;
	}
	
	@RequestMapping("/checkCsrid")
	@ResponseBody
	public String  checkCsrid(String csrid) {
		Csr entity = new Csr();
		entity.setCsrid(csrid);
		Csr usr = null;
		try {
			usr = csrService.checkCsrid(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(usr==null){
			return "true";
		}else{
			return "false";
		}
		
	}
	
	@RequestMapping("/getAllCsr")
	@ResponseBody
	public List<Csr> getAllCsr(HttpServletRequest request,String productid){
		List<Csr> csrList=null;
		Csr csr = (Csr) request.getSession().getAttribute("csrSession");
		try {
			csrList=csrService.getList(csr.getDepartid());
			return csrList;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
