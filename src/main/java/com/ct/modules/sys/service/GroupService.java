package com.ct.modules.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.DataGrid;
import com.ct.common.util.SysUtil;
import com.ct.modules.sys.entity.Group;

/**
 * @类名: GroupService
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： 2016-05-07 02:21:30
 */
@Service
public class GroupService {
	
	@Autowired
	private MyBatisDao<Group> groupMapper;
	
	/**
	 * @方法名: groupDataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public DataGrid groupDataGrid(Group entity)throws Exception{
		return this.groupMapper.getDataGrid("groupMapper.getAllByPage", entity,entity.getPage(),entity.getRows());
	}
	
	/**
	 * @方法名: groupAdd
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public boolean groupAdd(Group group) throws Exception{
		if (group == null) {
			throw new Exception(Group.class + "对象参数信息为Empty！");
		}
		group.setGroupid(SysUtil.createID("GP"));
		group.setStatus(1);
		return groupMapper.add("groupMapper.insert", group);
	}
	
	/**
	 * @方法名: groupEdit
	 * @功能描述: 根据主键获取数据
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public Group getByPrimaryKey(String groupid) throws Exception {
		if (groupid == null) {
	            throw new Exception(groupid + "参数信息为Empty！");
		}
		Group group = new Group();
		group.setGroupid(groupid);
		return groupMapper.get("groupMapper.selectByPrimaryKey", group);
	}
	
	/**
	 * @方法名: groupEdit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public boolean groupEdit(Group group) throws Exception {
		if (group == null) {
			throw new Exception(Group.class + "对象参数信息为Empty！");
		}
		return groupMapper.edit("groupMapper.updateByPrimaryKey", group);
	}
	
	/**
	 * @方法名: groupEdit
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public boolean groupDelete(String groupid) throws Exception {
		if (groupid == null) {
	            throw new Exception(groupid + "参数信息为Empty！");
	     }
		Group group = new Group();
		group.setGroupid(groupid);
		group.setStatus(0);
		return groupMapper.edit("groupMapper.updateByPrimaryKey", group);
	}
	
	/**
	 * @方法名: groupEdit
	 * @功能描述: 根据数据获取集合
	 * @创建人: 马飞
	 * @创建时间：  2016-05-07 02:21:30
	 */
	public List<Group> getGroupList(Group group) throws Exception {
		return groupMapper.getAllByEntity("groupMapper.getGroupList", group);
	}
	
}