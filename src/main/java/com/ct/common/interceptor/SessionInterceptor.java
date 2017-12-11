/**
 * @Title: SessionInterceptor.java
 * @Package hg.interceptor
 * @功能描述: TODO(用一句话描述该文件做什么)
 * @创建人： 马飞
 * @创建时间： 2013-5-20 下午02:17:16
 * @修改内容：（无）
 * @修改人：（无）
 * @修改时间：（无）
 * @版本： V1.0
 */
package com.ct.common.interceptor;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * @类名: SessionInterceptor
 * @功能描述: TODO(这里用一句话描述这个类的作用)
 * @类创建人： 马飞
 * @类创建时间： 2013-5-20 下午02:17:16
 */
public class SessionInterceptor implements HandlerInterceptor{
	
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		
		String url = request.getRequestURL().toString();
		if(url.contains("csrCtrl/login.do")){
			return true;
		}
		//判断session里是否有用户信息 
		 if (request.getSession().getAttribute("csrSession") == null) {  
			//如果是ajax请求响应头会有，x-requested-with；
          if (request.getHeader("x-requested-with") != null&& request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest"))  {
              response.setHeader("sessionstatus", "timeout");//在响应头设置session状态  
              return false;  
          }else{
        	  PrintWriter out = response.getWriter();  
              StringBuilder builder = new StringBuilder();  
              builder.append("<script type=\"text/javascript\" charset=\"UTF-8\">");  
              builder.append("window.parent.sessionLogin()");  
              builder.append("</script>");  
              out.print(builder.toString());  
              out.close();  
              return false;
          }
      }  
      return true;  
		
		
	}
	
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
