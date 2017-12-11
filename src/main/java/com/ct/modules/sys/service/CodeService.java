package com.ct.modules.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.DataGrid;
import com.ct.modules.sys.entity.Code;

@Service
public class CodeService {

	@Autowired
	private MyBatisDao<Code> codeMapper;
	
	@Value("${jdbc_url}")
	private String jdbc_url;
	
//	@Value("${driverClassName}")
//	private String driverClassName;
	
	public DataGrid codeDataGrid(Code entity)throws Exception{
		entity.setDatabaseurl(jdbc_url.split("/")[3].split("\\?")[0]);
		return codeMapper.getDataGrid("codeMapper.getAllByPage", entity, entity.getPage(), entity.getRows());
	}
	
	public DataGrid propertyDataGrid(Code entity)throws Exception{
		entity.setDatabaseurl(jdbc_url.split("/")[3].split("\\?")[0]);
		return codeMapper.getDataGrid("codeMapper.getByTableName", entity, entity.getPage(), entity.getRows());
	}
	
	public Code getByTableName(String tablename) throws Exception {
		Code c = new Code();
		c.setTablename(tablename);
		c.setDatabaseurl(jdbc_url.split("/")[3].split("\\?")[0]);
		return codeMapper.get("codeMapper.getByTableName", c);
	}
}
