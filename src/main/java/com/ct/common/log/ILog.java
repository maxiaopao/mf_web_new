/**
 * 
 */
package com.ct.common.log;

import org.apache.log4j.Logger;

/**
 * @接口名: ILog 
 * @功能描述: 日志接口定义
 * @接口创建人： 王帅 
 * @接口创建时间： 2012-12-25 上午10:31:02  
 */
public interface ILog {

	/**
	 * 数据库操作记录
	 */
	Logger daoLogger = LogFactory.getInstance().getLog("dao");
	
	/**
	 * 业务操作记录
	 */
	Logger bizLogger = LogFactory.getInstance().getLog("biz");
	
	
	/**
	 * 控制层操作记录
	 */
	Logger ctrlLogger = LogFactory.getInstance().getLog("ctrl");
	
	/**
	 * 正常信息记录
	 */
	Logger loggerNormal = LogFactory.getInstance().getLog("normal");
	
	/**
	 * 接口信息记录
	 */
	Logger loggerWebservice = LogFactory.getInstance().getLog("webservice");
	
	/**
	 * 错误消息记录
	 */
	Logger loggerError = LogFactory.getInstance().getLog("error");
	
}