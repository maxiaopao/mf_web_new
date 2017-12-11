package com.ct.modules.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.DataGrid;
import com.ct.modules.sys.entity.LogsInfo;

/**
 * 
 * @类名: SysLogService
 * @功能描述:记录日志
 * @类创建人: 马飞
 * @类创建时间： 2015-9-4 下午04:47:45
 */
@Service
public class LogsInfoService {
	
	@Autowired
	private MyBatisDao<LogsInfo> logsInfoMapper;
	
	public boolean addLog(LogsInfo log)  {
		try {
			return logsInfoMapper.add("logsInfoMapper.insert", log);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public DataGrid dataGrid(LogsInfo entity)throws Exception{
		return logsInfoMapper.getDataGrid("logsInfoMapper.findAllByPage", entity,entity.getPage(),entity.getRows());
	}
	
	
}
