package com.ct.common.annotation;  
  
import java.lang.annotation.*;  
  
/**
 * 
 * @类名: SystemLog
 * @功能描述:自定义注解 拦截Controller 
 * @类创建人: 马飞
 * @类创建时间： 2015-9-7 下午01:40:15
 */
  
@Target({ElementType.PARAMETER, ElementType.METHOD})  
@Retention(RetentionPolicy.RUNTIME)  
@Documented  
public  @interface SystemLog {  
  
	String module()  default "";  //模块名称 系统管理-用户管理－列表页面
	String methods()  default "";  //新增用户
    String description()  default "";  //
  
  
}  
  
