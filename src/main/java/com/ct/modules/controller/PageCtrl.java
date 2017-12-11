package com.ct.modules.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ct.modules.sys.service.CsrService;

@Controller
public class PageCtrl {
	
	@Autowired
	private CsrService csrService;
	
	/**
	 * 界面跳转
	 * @param targetUrl 目标路径（WEB-INF下的JSP目录中）
	 * @return	路径
	 * @throws Exception
	 * @author 王帅
	 */
	@RequestMapping("/gotoPage")
	public String gotoPage(String targetUrl) throws Exception{
		
		if (targetUrl == null) {
			throw new Exception("跳转路径为空！");
		}
		return targetUrl;
	}
	
	/**
	 * 界面跳转
	 * @param targetUrl 目标路径（WEB-INF下的JSP目录中）
	 * @return	路径
	 * @throws Exception
	 * @author 王帅
	 */
	@RequestMapping("/gotoPageAndParam")
	public String gotoPageAndParam(String targetUrl,String id,HttpServletRequest request) throws Exception{
		
		if (targetUrl == null) {
			throw new Exception("跳转路径为空！");
		}
		request.setAttribute("id", id);
		return targetUrl;
	} 

}
