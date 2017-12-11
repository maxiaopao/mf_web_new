package com.ct.modules.sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.modules.sys.entity.City;
import com.ct.modules.sys.entity.Province;
import com.ct.modules.sys.service.ProvenceService;

@Controller
@RequestMapping("/provenceCtrl")
public class ProvenceCtrl {
	@Autowired
	private ProvenceService service;
	
	@RequestMapping("/getProvenceList")
	@ResponseBody
	public List<Province> getProvenceList(HttpServletRequest request) {
		List<Province> provence;
		try {
			provence =service.getProvinceName();
		} catch (Exception e) {
			return null;
				}
			return provence;
	}
	@RequestMapping("/getCityList")
	@ResponseBody
	public List<City> getCityList(HttpServletRequest request,String provinceid) {
		List<City> city;
		try {
			city =service.getCityName(provinceid);
		} catch (Exception e) {
			return null;
				}
			return city;
		}
}