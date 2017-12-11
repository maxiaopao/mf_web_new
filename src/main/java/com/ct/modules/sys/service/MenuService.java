package com.ct.modules.sys.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.entity.Attributes;
import com.ct.common.entity.JsonTreeData;
import com.ct.common.util.SysUtil;
import com.ct.common.util.TreeNodeUtil;
import com.ct.modules.sys.entity.Csr;
import com.ct.modules.sys.entity.Menu;

/**
 * @类名: MenuService
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-8-9 下午04:04:02
 */
@Service
public class MenuService {
	
	@Autowired
	private MyBatisDao<Menu> menuMapper;
	
	
	/**
	 * 
	 * @方法名: findMenuByMenuid
	 * @功能描述: 通过menuid获取menu对象
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-20 下午10:22:03
	 */
	public Menu getMenuByMenuid(String menuid) throws Exception {
		if (menuid == null) {
	            throw new Exception(menuid + "参数信息为Empty！");
	     }
		Menu m = new Menu();
		m.setMenuid(menuid);
		return menuMapper.get("menuMapper.getMenuByMenuid", m);
	}
	
	/**
	 * 
	 * @方法名: updateMenu
	 * @功能描述: 更新menu通过menuid
	 * @参数：@param
	 * @返回：@return
	 * @创建人: Mr
	 * @创建时间： 2015-8-20 下午10:28:17
	 */
	public boolean updateMenu(Menu entity) throws Exception {
		 if (entity == null) {
	            throw new Exception(Menu.class + "对象参数信息为Empty！");
	     }
		return menuMapper.edit("menuMapper.updateByPrimaryKeySelective", entity);
	}
	
	public boolean addMenu(Menu menu) throws Exception{
			menu.setMenutype(Short.valueOf("1"));
			menu.setMenuid(SysUtil.createID2());
			return menuMapper.add("menuMapper.insert", menu);
	}
	
	public boolean menuDelete(String menuid) throws Exception {
		if (menuid == null) {
	            throw new Exception(menuid + "参数信息为Empty！");
	     }
		Menu menu = new Menu();
		menu.setMenuid(menuid);
		return menuMapper.remove("menuMapper.deleteByPrimaryKey", menu);
	}
	
	
	
	public List<JsonTreeData> getTreeData(String userid) throws Exception {
		Menu menu = new Menu();
		menu.setCsrid(userid);
		List<Menu> list = this.menuMapper.getAllByEntity("menuMapper.getAllByCsrid",menu);
        List<JsonTreeData> treeDataList = new ArrayList<JsonTreeData>();
        for (Menu m : list) {
            JsonTreeData treeData = new JsonTreeData();
            treeData.setId(m.getMenuid());
            treeData.setPid(m.getPid());
            treeData.setText(m.getMenuname());
            treeData.setIconCls(m.getImg());
            treeData.setAttributes(new Attributes(m.getUrl()));
            treeDataList.add(treeData);
        }
        List<JsonTreeData> newTreeDataList = TreeNodeUtil.getFatherNode(treeDataList);
        return newTreeDataList;
    }
	
	public List<JsonTreeData> getTreeDataAdd() throws Exception {
		Menu menu = new Menu();
		List<Menu> list = this.menuMapper.getAllByEntity("menuMapper.getTreeDataAdd",menu);
        List<JsonTreeData> treeDataList = new ArrayList<JsonTreeData>();
        for (Menu m : list) {
            JsonTreeData treeData = new JsonTreeData();
            treeData.setId(m.getMenuid());
            treeData.setPid(m.getPid());
            treeData.setText(m.getMenuname());
            treeData.setIconCls(m.getImg());
            treeData.setUrl(m.getUrl());
            treeData.setOrderid(m.getOrderid());
            treeDataList.add(treeData);
        }
        List<JsonTreeData> newTreeDataList = TreeNodeUtil.getFatherNode(treeDataList);
        return newTreeDataList;
    }
	
	public List<JsonTreeData> getTreeMenuAdd() throws Exception {
		Menu menu = new Menu();
		List<Menu> list = this.menuMapper.getAllByEntity("menuMapper.getTreeMenuAdd",menu);
        List<JsonTreeData> treeDataList = new ArrayList<JsonTreeData>();
        for (Menu m : list) {
            JsonTreeData treeData = new JsonTreeData();
            treeData.setId(m.getMenuid());
            treeData.setPid(m.getPid());
            treeData.setText(m.getMenuname());
            treeData.setIconCls(m.getImg());
            treeData.setUrl(m.getUrl());
            treeData.setOrderid(m.getOrderid());
            treeDataList.add(treeData);
        }
        List<JsonTreeData> newTreeDataList = TreeNodeUtil.getFatherNode(treeDataList);
        return newTreeDataList;
	}
	
	
	public List<Menu> getAllByCsrid(Csr csr){
		Menu m = new Menu();
		m.setCsrid(csr.getCsrid());
		try {
			return this.menuMapper.getAllByEntity("menuMapper.getAllByCsrid", m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	

	
}
