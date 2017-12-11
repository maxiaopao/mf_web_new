package com.ct.modules.${packagename}.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.util.SysUtil;
import com.ct.common.entity.DataGrid;
import com.ct.modules.${packagename}.entity.${objectname};

/**
 * @类名: ${objectname}Service
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
 */
@Service
public class ${objectname}Service {
	
	@Autowired
	private MyBatisDao<${objectname}> ${"${objectname}"?uncap_first}Mapper;
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}DataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public DataGrid ${"${objectname}"?uncap_first}DataGrid(${objectname} ${"${objectname}"?uncap_first})throws Exception{
		
		return ${"${objectname}"?uncap_first}Mapper.getDataGrid("${"${objectname}"?uncap_first}Mapper.getAllByPage", ${"${objectname}"?uncap_first}, ${"${objectname}"?uncap_first}.getPage(),${"${objectname}"?uncap_first}.getRows());
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Add
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public boolean ${"${objectname}"?uncap_first}Add(${objectname} ${"${objectname}"?uncap_first}) throws Exception{
		if (${"${objectname}"?uncap_first} == null) {
			throw new Exception(${objectname}.class + "对象参数信息为Empty！");
		}
		${"${objectname}"?uncap_first}.set${"${'${primary}'?lower_case}"?cap_first}(SysUtil.createID2());
		return ${"${objectname}"?uncap_first}Mapper.add("${"${objectname}"?uncap_first}Mapper.insert", ${"${objectname}"?uncap_first});
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Edit
	 * @功能描述: 根据主键获取数据
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public ${objectname} getByPrimaryKey(String ${"${primary}"?lower_case}) throws Exception {
		if (${"${primary}"?lower_case} == null) {
	            throw new Exception(${"${primary}"?lower_case} + "参数信息为Empty！");
		}
		${objectname} ${"${objectname}"?uncap_first} = new ${objectname}();
		${"${objectname}"?uncap_first}.set${"${'${primary}'?lower_case}"?cap_first}(${"${primary}"?lower_case});
		return ${"${objectname}"?uncap_first}Mapper.get("${"${objectname}"?uncap_first}Mapper.selectByPrimaryKey", ${"${objectname}"?uncap_first});
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Edit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public boolean ${"${objectname}"?uncap_first}Edit(${objectname} ${"${objectname}"?uncap_first}) throws Exception {
		if (${"${objectname}"?uncap_first} == null) {
			throw new Exception(${objectname}.class + "对象参数信息为Empty！");
		}
		return ${"${objectname}"?uncap_first}Mapper.edit("${"${objectname}"?uncap_first}Mapper.updateByPrimaryKey", ${"${objectname}"?uncap_first});
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Edit
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public boolean ${"${objectname}"?uncap_first}Delete(String ${"${primary}"?lower_case}) throws Exception {
		if (${"${primary}"?lower_case} == null) {
	            throw new Exception(${"${primary}"?lower_case} + "参数信息为Empty！");
	     }
		${objectname} ${"${objectname}"?uncap_first} = new ${objectname}();
		${"${objectname}"?uncap_first}.set${"${'${primary}'?lower_case}"?cap_first}(${"${primary}"?lower_case});
		return ${"${objectname}"?uncap_first}Mapper.remove("${"${objectname}"?uncap_first}Mapper.deleteByPrimaryKey", ${"${objectname}"?uncap_first});
	}
	
	/**
	 * @方法名: ${"${objectname}"?uncap_first}Edit
	 * @功能描述: 根据数据获取集合
	 * @创建人: 马飞
	 * @创建时间：  ${nowDate?string("yyyy-MM-dd hh:mm:ss")}
	 */
	public List<${objectname}> get${objectname}List(${objectname} ${"${objectname}"?uncap_first}) throws Exception {
		return ${"${objectname}"?uncap_first}Mapper.getAllByEntity("${"${objectname}"?uncap_first}Mapper.get${objectname}List", ${"${objectname}"?uncap_first});
	}
	
}