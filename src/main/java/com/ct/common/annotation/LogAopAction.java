package com.ct.common.annotation;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.ct.common.util.StringUtil;
import com.ct.common.util.SysUtil;
import com.ct.modules.sys.entity.Csr;
import com.ct.modules.sys.entity.LogsInfo;
import com.ct.modules.sys.service.LogsInfoService;



/**
 * 
 * @类名: LogAopAction
 * @功能描述:切点类
 * @类创建人: 马飞
 * @类创建时间： 2015-9-4 下午04:50:38
 */
@Aspect
@Component
public  class LogAopAction {
	
	@Autowired
	private LogsInfoService logsInfoService;
	
	//Controller层切点
    @Pointcut("@annotation(com.ct.common.annotation.SystemLog)")
	public void controllerAspect() {
	}
    
    /**
     * 
     * @方法名: doAfterThrowing
     * @功能描述: 操作异常记录
     * @参数：@param
     * @返回：@return
     * @创建人: 马飞
     * @创建时间： 2015-9-4 下午04:50:50
     */
    @AfterThrowing(pointcut = "controllerAspect()", throwing = "e")  
    public  void doAfterThrowing(JoinPoint point, Throwable e) {
    	LogsInfo log = new LogsInfo();
    	ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpServletRequest request = attr.getRequest();
		Map<String, Object> map = null;
		String methodName = point.getSignature().getName();
		String className = point.getTarget().getClass().getSimpleName();
		String user = null;
		String ip = null;
		try {
			ip = getIpAddress(request);
		} catch (Exception ee) {
			ip = "无法获取登录用户Ip";
		}
		try {
			map=getControllerMethodDescription(point);
			// 登录名
			
			Csr csr = (Csr) request.getSession().getAttribute("csrSession");
			user = csr.getCsrname();
			if (StringUtil.isEmpty(user)) {
				user = "无法获取登录用户信息！";
			}
		} catch (Exception ee) {
			user = "无法获取登录用户信息！";
		}
		log.setId(SysUtil.createID("LG"));
		log.setAccount(user);
		log.setModule(map.get("module").toString());
		log.setMethods("<font color=\"red\">执行方法异常:-->"+map.get("methods")+"</font>");
		log.setDescription("<font color=\"red\">执行方法异常:-->"+e+"</font>");
		log.setActiontime("0");
		log.setUserip(ip);
		log.setOpertime(new Date());
		log.setMethodname("请求方法:" + className + "." + methodName + "()");
		log.setLogsType("2");
		log.setMenuName("");
		log.setMenuUrl("");
		try {
			logsInfoService.addLog(log);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
    }
    /**
     * 
     * @方法名: doController
     * @功能描述: 前置通知 用于拦截Controller层记录用户的操作
     * @参数：@param
     * @返回：@return
     * @创建人: 马飞
     * @创建时间： 2015-9-4 下午04:57:19
     */
    @Around("controllerAspect()")
     public Object doController(ProceedingJoinPoint point) {
    	Object result = null;
    	String caiDanName = "";
    	String caiDanUrl = "";
    	String logsType = "2";
    	ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpServletRequest request = attr.getRequest();
		// 执行方法名
		String methodName = point.getSignature().getName();
		String className = point.getTarget().getClass().getSimpleName();
		if("gotoPageCaiDan".equals(methodName)){
			Object[] args=point.getArgs();
			logsType = "1";
			caiDanName = (String) args[1];
			caiDanUrl = (String)  args[0];
			try {
				caiDanName = new String(caiDanName.getBytes("ISO-8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		String user = "";
		LogsInfo log = new LogsInfo();
		Map<String, Object> map = null;
		Long start = 0L;
		Long end = 0L;
		Long time = 0L;
		String ip = null;
		try {
			ip = getIpAddress(request);
		} catch (Exception e) {
			ip = "无法获取登录用户Ip";
		}
		try {
			Csr csr = (Csr) request.getSession().getAttribute("csrSession");
			
			user = csr.getCsrname();
			if (StringUtil.isEmpty(user)) {
				user = "无法获取登录用户信息！";
			}
		} catch (Exception e) {
			user = "无法获取登录用户信息！";
		}
		// 当前用户
		try {
			map=getControllerMethodDescription(point);
			// 执行方法所消耗的时间
			start = System.currentTimeMillis();
			result = point.proceed();
			end = System.currentTimeMillis();
		    time = end - start;
		} catch (Throwable e) {
			throw new RuntimeException(e);
		}
         try {
        	log.setId(SysUtil.createID("LG"));
 			log.setAccount(user);
     		log.setModule(map.get("module").toString());
    		log.setMethods(map.get("methods").toString());
    		log.setDescription(map.get("description").toString());
    		log.setActiontime(time.toString());
    		log.setUserip(ip);
    		log.setOpertime(new Date());
    		log.setMethodname("请求方法:" + className + "." + methodName + "()");
    		log.setLogsType(logsType);
    		log.setMenuName(caiDanName);
    		log.setMenuUrl(caiDanUrl);
    		logsInfoService.addLog(log);
        }  catch (Exception e) {
            //记录本地异常日志
        }
         return result;
    }
    /**
     * 
     * @方法名: getControllerMethodDescription
     * @功能描述: 获取注解中对方法的描述信息 用于Controller层注解
     * @参数：@param
     * @返回：@return
     * @创建人: 马飞
     * @创建时间： 2015-9-4 下午05:03:21
     */
	@SuppressWarnings("rawtypes")
	public Map<String, Object> getControllerMethodDescription(JoinPoint joinPoint)  throws Exception {
    	 Map<String, Object> map = new HashMap<String, Object>();
    	 String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] arguments = joinPoint.getArgs();
        Class targetClass = Class.forName(targetName);
        Method[] methods = targetClass.getMethods();
         for (Method method : methods) {
             if (method.getName().equals(methodName)) {
                Class[] clazzs = method.getParameterTypes();
                 if (clazzs.length == arguments.length) {
                	 map.put("module", method.getAnnotation(SystemLog.class).module());
                	 map.put("methods", method.getAnnotation(SystemLog.class).methods());
                	 String de = method.getAnnotation(SystemLog.class).description();
                	 if(StringUtil.isEmpty(de))de="执行成功!";
                	 map.put("description", de);
                     break;
                }
            }
        }
         return map;
    }
	
	private  String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}  
}
