/**
 * @Title: MmDepartService.java
 * @Package com.ct.service.ht
 * @功能描述: TODO(用一句话描述该文件做什么)
 * @创建人： 马飞
 * @创建时间： 2013-8-9 下午02:43:53
 * @修改内容：（无）
 * @修改人：（无）
 * @修改时间：（无）
 * @版本： V1.0
 */
package com.ct.modules.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.DataGrid;
import com.ct.common.util.SysUtil;
import com.ct.modules.sys.entity.Depart;

/**
 * @类名: MmDepartService
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:43:53
 */
@Service
public class DepartService {
	
	@Autowired
	private MyBatisDao<Depart> departMapper;
	
	/**
	 * EasyUI-DataGrid-分页查询-封装结果集
	 * @author mafei
	 * @param MmRole record
	 * @param PageHelper ph
	 * @return DataGrid
	 */
	public DataGrid dataGrid(Depart entity)throws Exception{
		return departMapper.getDataGrid("departMapper.getAllByPage", entity, entity.getPage(),entity.getRows());
	}
	
	public boolean add(Depart entity) throws Exception{
		if (entity == null) {
			throw new Exception(Depart.class + "对象参数信息为Empty！");
		}
		entity.setDepartid(SysUtil.createID("BM"));
		entity.setStatus(Short.valueOf("1"));
		return departMapper.add("departMapper.insert", entity);
	}
	
	/**
	 * 
	 * @方法名: get
	 * @功能描述: 获取单条数据
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:21
	 */
	public Depart get(String departid) throws Exception {
		if (departid == null) {
	            throw new Exception(departid + "参数信息为Empty！");
	     }
		Depart entity = new Depart();
		entity.setDepartid(departid);
		return departMapper.get("departMapper.get", entity);
	}
	
	/**
	 * 
	 * @方法名: edit
	 * @功能描述: 编辑
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:13
	 */
	public boolean edit(Depart entity) throws Exception {
		 if (entity == null) {
	            throw new Exception(Depart.class + "对象参数信息为Empty！");
	     }
		return departMapper.edit("departMapper.updateByPrimaryKeySelective", entity);
	}
	
	
	/**
	 * 
	 * @方法名: delete
	 * @功能描述: 物理删除
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:30
	 */
	public boolean delete(String id) throws Exception {
		if (id == null) {
	            throw new Exception(id + "参数信息为Empty！");
	     }
		Depart entity = new Depart();
		entity.setDepartid(id);
		entity.setStatus(Short.valueOf("0"));
		return departMapper.edit("departMapper.updateByPrimaryKeySelective", entity);
	}
	
	public List<Depart> getDepartList() throws Exception {
		Depart d = new Depart();
		d.setStatus(Short.valueOf("1"));
		
		return departMapper.getAllByEntity("departMapper.get", d);
	}
	

}
