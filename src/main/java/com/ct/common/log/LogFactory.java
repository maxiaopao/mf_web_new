package com.ct.common.log;

import org.apache.log4j.Logger;

/**
 * @类名: LogFactory 
 * @功能描述: 日志工厂
 * @类创建人： 王帅 
 * @类创建时间： 2012-12-25 上午10:32:21  
 */
public class LogFactory {
	
	private static LogFactory instance = new LogFactory();

	private LogFactory() {
		
	}

	public static LogFactory getInstance() {
		return instance;
	}

	public Logger getLog(String channel) {
		return Logger.getLogger(channel);
	}
}
