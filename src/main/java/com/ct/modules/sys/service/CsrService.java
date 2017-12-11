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
import com.ct.modules.sys.entity.Csr;
import com.ct.modules.sys.entity.CsrRole;

/**
 * @类名: MmDepartService
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午02:43:53
 */
@Service
public class CsrService {
	
	@Autowired
	private MyBatisDao<Csr> csrMapper;
	@Autowired
	private MyBatisDao<CsrRole> csrRoleMapper;
	
	/**
	 * EasyUI-DataGrid-分页查询-封装结果集
	 * @author mafei
	 * @param MmRole record
	 * @param PageHelper ph
	 * @return DataGrid
	 */
	public DataGrid dataGrid(Csr entity)throws Exception{
		return csrMapper.getDataGrid("csrMapper.getAllByPage", entity, entity.getPage(),entity.getRows());
	}
	
	
	public boolean add(Csr entity,String checkList) throws Exception{
		if (entity == null) {
			throw new Exception(Csr.class + "对象参数信息为Empty！");
		}
		String user_id = SysUtil.createID("UR");
		entity.setUser_id(user_id);
		
		entity.setAssignflag(Short.valueOf("1"));
		entity.setStatus(Short.valueOf("1"));
		boolean falg = false;
		
		
		
		if(csrMapper.add("csrMapper.insert", entity)){
			falg = true;
			if(checkList.length()!=0){
				CsrRole  csrRole = new CsrRole();
				csrRole.setCsrid(user_id);
				String[] checkArray = checkList.split("\\,");
				for (int i = 0; i < checkArray.length; i++) {
					csrRole.setRoleid(checkArray[i]);
					csrRole.setStatus(Short.valueOf("1"));
					falg = csrRoleMapper.add("csrRoleMapper.insert",csrRole);
				}
			}
			
			return falg;
		}else{
			return falg;
		}
	}
	
	/**
	 * 
	 * @方法名: edit
	 * @功能描述: 编辑
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:13
	 */
	public boolean edit(Csr entity ,String checkList) throws Exception {
		 if (entity == null) {
	            throw new Exception(Csr.class + "对象参数信息为Empty！");
	     }
		 
		 CsrRole cr = new CsrRole();
		 cr.setCsrid(entity.getUser_id());
		 if(csrRoleMapper.remove("csrRoleMapper.delete", cr)){
			 
		 }else{
			 return false;
		 }
		 
		 boolean falg = false;
		 if(csrMapper.edit("csrMapper.updateByPrimaryKeySelective", entity)){
			 falg = true;
			 if(checkList.length()!=0){
				 
				CsrRole  csrRole = new CsrRole();
				csrRole.setCsrid(entity.getUser_id());
				String[] checkArray = checkList.split("\\,");
				for (int i = 0; i < checkArray.length; i++) {
					csrRole.setRoleid(checkArray[i]);
					csrRole.setStatus(Short.valueOf("1"));
					falg = csrRoleMapper.add("csrRoleMapper.insert",csrRole);
				}
			 }
			 return falg;
		 }else{
			return falg;
		 }
		 
	}
	
	
	public boolean editPasswd(Csr entity) throws Exception {
		 if (entity == null) {
	            throw new Exception(Csr.class + "对象参数信息为Empty！");
	     }
		 
		 return csrMapper.edit2("csrMapper.updatePasswd", entity);
		 
	}
	
	/**
	 * 
	 * @方法名: get
	 * @功能描述: 获取单条数据
	 * @创建人: 王帅
	 * @创建时间： 2013-8-14 上午09:55:21
	 */
	public Csr get(String user_id) throws Exception {
		if (user_id == null) {
	            throw new Exception(user_id + "参数信息为Empty！");
	     }
		Csr entity = new Csr();
		entity.setUser_id(user_id);
		return csrMapper.get("csrMapper.get", entity);
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
		Csr entity = new Csr();
		entity.setUser_id(id);
		entity.setStatus(Short.valueOf("0"));
		return csrMapper.remove("csrMapper.deleteByPrimaryKey", entity);
	}
	
	public List<CsrRole> getRoleidByCsrid(String csrid) throws Exception{
		
		CsrRole cr = new CsrRole();
		
		cr.setCsrid(csrid);
		
		
		return csrRoleMapper.getAllByEntity("csrRoleMapper.getRoleidByCsrid", cr);
	}
	
	public Csr login(Csr csr) throws Exception {
		
		Csr entity = new Csr();
		csr.setStatus(Short.valueOf("1"));
		entity = csrMapper.get("csrMapper.login", csr);
		return entity;
		
	}
	
	
	public Csr checkCsrid(Csr csr) throws Exception {
		
		return csrMapper.get("csrMapper.checkCsrid", csr);
		
	}
	
	
	public List<Csr> getList(String departid)throws Exception {
		Csr entity = new Csr();
		entity.setDepartid(departid);
		return csrMapper.getAllByEntity("csrMapper.queryAllCsr",entity);
	}


	

}
