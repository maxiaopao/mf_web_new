package com.ct.common.util;

import java.util.ArrayList;
import java.util.List;

import com.ct.common.entity.JsonTreeData;

public class TreeNodeUtil {

	public final static List<JsonTreeData> getFatherNode(List<JsonTreeData> treeDataList) {
		List<JsonTreeData> newTreeDataList = new ArrayList<JsonTreeData>();
		for (JsonTreeData jsonTreeData : treeDataList) {
			if (jsonTreeData.getPid() == "" || "".equals(jsonTreeData.getPid())) {
				// 获取父节点下的子节点
				jsonTreeData.setChildren(getChildrenNode(jsonTreeData.getId(),treeDataList));
				jsonTreeData.setState("open");
				newTreeDataList.add(jsonTreeData);
			}
		}
		return newTreeDataList;
	}

	private final static List<JsonTreeData> getChildrenNode(String pid,List<JsonTreeData> treeDataList) {
		List<JsonTreeData> newTreeDataList = new ArrayList<JsonTreeData>();
		for (JsonTreeData jsonTreeData : treeDataList) {
			if (jsonTreeData.getPid() == null){
				continue;
			}
			// 这是一个子节点
			if (jsonTreeData.getPid().equals(pid)) {
				// 递归获取子节点下的子节点
				jsonTreeData.setChildren(getChildrenNode(jsonTreeData.getId(),treeDataList));
				newTreeDataList.add(jsonTreeData);
			}
		}
		return newTreeDataList;
	}
}