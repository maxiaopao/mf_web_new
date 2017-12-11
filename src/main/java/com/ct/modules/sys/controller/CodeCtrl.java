package com.ct.modules.sys.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ct.common.entity.DataGrid;
import com.ct.common.util.DelAllFile;
import com.ct.common.util.FileDownload;
import com.ct.common.util.FileZip;
import com.ct.common.util.Freemarker;
import com.ct.common.util.PathUtil;
import com.ct.common.util.StringUtil;
import com.ct.modules.sys.entity.Code;
import com.ct.modules.sys.service.CodeService;



@Controller
@RequestMapping("/codeCtrl")
public class CodeCtrl {
	
	@Autowired
	private CodeService codeService;
	
	@Value("${jdbc_url}")
	private String jdbc_url;
	
	@RequestMapping("/codeDataGrid")
	@ResponseBody
	public DataGrid codeDataGrid(Code code){
		try {
			return codeService.codeDataGrid(code);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping("/propertyDataGrid")
	@ResponseBody
	public DataGrid propertyDataGrid(Code code){
		try {
			return codeService.propertyDataGrid(code);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	@RequestMapping("/codePage")
	public String codePage(HttpServletRequest request, String tablename) {
		try {
			request.setAttribute("tablename", tablename);
			return "/code/createCode";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

	@RequestMapping(value="/proCode")
	public void proCode(HttpServletResponse response , Code code) throws Exception{
		
		String[] arr = code.getFieldlist().substring(0, code.getFieldlist().length()-1).split("\\|");
		int falg = code.getFieldlist().indexOf("date");
		List<String[]> fieldList = new ArrayList<String[]>();   	//属性集合		
		for (int i = 0; i < arr.length; i++) {
			fieldList.add(arr[i].split(","));
		}
		
		Map<String,Object> root = new HashMap<String,Object>();		//创建数据模型
		root.put("fieldList", fieldList);			//主键
		root.put("tablename", code.getTablename());
		root.put("packagename", code.getPackagename());						//包名
		root.put("objectname", code.getObjectname());							//类名
		root.put("objectnameLower", code.getObjectname().toLowerCase());		//类名(全小写)
		root.put("objectnameUpper", code.getObjectname().toUpperCase());		//类名(全大写)
		root.put("primary", code.getPrimary());
		root.put("nowDate", new Date());
		root.put("falg", falg);
		
		DelAllFile.delFolder(PathUtil.getClasspath()+"admin/ftl"); //生成代码前,先清空之前生成的代码
		
		String filePath = "admin/ftl/code/";						//存放路径
		String ftlPath = "createCode";								//ftl路径
		
		//生成model
		Freemarker.printFile("Object.ftl", root, "com/ct/modules/"+code.getPackagename()+"/entity/"+code.getObjectname()+".java", filePath, ftlPath);
		//生成mapper
		Freemarker.printFile("ObjectMapper.ftl", root, "com/ct/modules/"+code.getPackagename()+"/sqlmap/"+code.getObjectname()+"Mapper.xml", filePath, ftlPath);
		//生成controller
		Freemarker.printFile("ObjectController.ftl", root, "com/ct/modules/"+code.getPackagename()+"/controller/"+code.getObjectname()+"Ctrl.java", filePath, ftlPath);
		//生成service
		Freemarker.printFile("ObjectService.ftl", root, "com/ct/modules/"+code.getPackagename()+"/service/"+code.getObjectname()+"Service.java", filePath, ftlPath);
		//生成jsp
		Freemarker.printFile("ObjectJsp.ftl", root, "jsp/"+code.getPackagename()+"/"+StringUtil.toLowerCaseFirstOne(code.getObjectname())+".jsp", filePath, ftlPath);
		//生成jspAdd
		Freemarker.printFile("ObjectJspAdd.ftl", root, "jsp/"+code.getPackagename()+"/"+StringUtil.toLowerCaseFirstOne(code.getObjectname())+"Add.jsp", filePath, ftlPath);
		//生成jspEdit
		Freemarker.printFile("ObjectJspEdit.ftl", root, "jsp/"+code.getPackagename()+"/"+StringUtil.toLowerCaseFirstOne(code.getObjectname())+"Edit.jsp", filePath, ftlPath);
		
		/*生成controller*/
//		Freemarker.printFile("controllerTemplate.ftl", root, "controller/"+packageName+"/"+objectName.toLowerCase()+"/"+objectName+"Controller.java", filePath, ftlPath);
		
//		/*生成service*/
//		Freemarker.printFile("serviceTemplate.ftl", root, "service/"+packageName+"/"+objectName.toLowerCase()+"/impl/"+objectName+"Service.java", filePath, ftlPath);
//		
//		/*生成manager*/
//		Freemarker.printFile("managerTemplate.ftl", root, "service/"+packageName+"/"+objectName.toLowerCase()+"/"+objectName+"Manager.java", filePath, ftlPath);
//
//		/*生成mybatis xml*/
		
//		Freemarker.printFile("mapperOracleTemplate.ftl", root, "mybatis_oracle/"+packageName+"/"+objectName+"Mapper.xml", filePath, ftlPath);
//		
//		/*生成SQL脚本*/
//		Freemarker.printFile("mysql_SQL_Template.ftl", root, "mysql数据库脚本/"+tabletop+objectName.toUpperCase()+".sql", filePath, ftlPath);
//		Freemarker.printFile("oracle_SQL_Template.ftl", root, "oracle数据库脚本/"+tabletop+objectName.toUpperCase()+".sql", filePath, ftlPath);
//		
//		/*生成jsp页面*/
//		Freemarker.printFile("jsp_list_Template.ftl", root, "jsp/"+packageName+"/"+objectName.toLowerCase()+"/"+objectName.toLowerCase()+"_list.jsp", filePath, ftlPath);
//		Freemarker.printFile("jsp_edit_Template.ftl", root, "jsp/"+packageName+"/"+objectName.toLowerCase()+"/"+objectName.toLowerCase()+"_edit.jsp", filePath, ftlPath);
//		
		/*生成说明文档*/
//		Freemarker.printFile("docTemplate.ftl", root, "部署说明.doc", filePath, ftlPath);
		
		//this.print("oracle_SQL_Template.ftl", root);  控制台打印
		
		/*生成的全部代码压缩成zip文件*/
		if(FileZip.zip(PathUtil.getClasspath()+"admin/ftl/code", PathUtil.getClasspath()+"admin/ftl/code.zip")){
			/*下载代码*/
			FileDownload.fileDownload(response, PathUtil.getClasspath()+"admin/ftl/code.zip", "code.zip");
		}
	}
	
}
