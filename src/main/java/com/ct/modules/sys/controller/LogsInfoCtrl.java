package com.ct.modules.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.common.entity.DataGrid;
import com.ct.modules.sys.entity.LogsInfo;
import com.ct.modules.sys.service.LogsInfoService;

/**
 * 
 * @类名: LogsInfoCtrl
 * @功能描述:
 * @类创建人: 马飞
 * @类创建时间： 2015-9-7 下午03:18:55
 */
@Controller
@RequestMapping("/logsInfoCtrl")
public class LogsInfoCtrl {
	
	@Autowired
	private LogsInfoService logsInfoService;
	
	/**
	 * 
	 * @方法名: dataGrid
	 * @功能描述: 
	 * @参数：@param
	 * @返回：@return
	 * @创建人: 马飞
	 * @创建时间： 2015-9-7 下午03:19:14
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(LogsInfo log){
		try {
			return logsInfoService.dataGrid(log);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
