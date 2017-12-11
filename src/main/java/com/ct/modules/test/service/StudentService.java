package com.ct.modules.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.common.dao.MyBatisDao;
import com.ct.common.util.SysUtil;
import com.ct.common.entity.DataGrid;
import com.ct.modules.test.entity.Student;

/**
 * @类名: StudentService
 * @功能描述: 
 * @类创建人： 马飞
 * @类创建时间： 2017-08-09 05:09:26
 */
@Service
public class StudentService {
	
	@Autowired
	private MyBatisDao<Student> studentMapper;
	
	/**
	 * @方法名: studentDataGrid
	 * @功能描述: dataGrid列表获取
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public DataGrid studentDataGrid(Student student)throws Exception{
		
		return studentMapper.getDataGrid("studentMapper.getAllByPage", student, student.getPage(),student.getRows());
	}
	
	/**
	 * @方法名: studentAdd
	 * @功能描述: 新增
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public boolean studentAdd(Student student) throws Exception{
		if (student == null) {
			throw new Exception(Student.class + "对象参数信息为Empty！");
		}
		student.setId(SysUtil.createID2());
		return studentMapper.add("studentMapper.insert", student);
	}
	
	/**
	 * @方法名: studentEdit
	 * @功能描述: 根据主键获取数据
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public Student getByPrimaryKey(String id) throws Exception {
		if (id == null) {
	            throw new Exception(id + "参数信息为Empty！");
		}
		Student student = new Student();
		student.setId(id);
		return studentMapper.get("studentMapper.selectByPrimaryKey", student);
	}
	
	/**
	 * @方法名: studentEdit
	 * @功能描述: 更新
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public boolean studentEdit(Student student) throws Exception {
		if (student == null) {
			throw new Exception(Student.class + "对象参数信息为Empty！");
		}
		return studentMapper.edit("studentMapper.updateByPrimaryKey", student);
	}
	
	/**
	 * @方法名: studentEdit
	 * @功能描述: 删除
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public boolean studentDelete(String id) throws Exception {
		if (id == null) {
	            throw new Exception(id + "参数信息为Empty！");
	     }
		Student student = new Student();
		student.setId(id);
		return studentMapper.remove("studentMapper.deleteByPrimaryKey", student);
	}
	
	/**
	 * @方法名: studentEdit
	 * @功能描述: 根据数据获取集合
	 * @创建人: 马飞
	 * @创建时间：  2017-08-09 05:09:26
	 */
	public List<Student> getStudentList(Student student) throws Exception {
		return studentMapper.getAllByEntity("studentMapper.getStudentList", student);
	}
	
}