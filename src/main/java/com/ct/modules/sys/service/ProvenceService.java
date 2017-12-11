package com.ct.modules.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.modules.sys.entity.City;
import com.ct.modules.sys.entity.Province;

@Service
public class ProvenceService {
	@Autowired
	private MyBatisDao<Province> province;
	@Autowired
	private MyBatisDao<City> city;

	public List<Province> getProvinceName() throws Exception {
		return province.getAll("provinceMapper.selectByPrimaryKey");
	}

	public List<City> getCityName(String provinceid) throws Exception {
		return city.getAllByString("cityMapper.selectByPrimaryKey", provinceid);
	}
}
