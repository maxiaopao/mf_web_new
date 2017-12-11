package com.ct.common.util;

public class StringUtil {

	/**
	 * 判断是否为空
	 * 
	 * 空串 or 空格 or null 时返回true
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isBlank(String str) {
		if (str != null && !str.trim().equals(""))
			return false;
		else
			return true;
	}

	public static boolean isBlank(Object obj) {
		if (obj != null && !obj.toString().trim().equals(""))
			return false;
		else
			return true;
	}

	public static boolean isNotBlank(String str) {
		return !isBlank(str);
	}

	/** 半角全角开头，或结尾 */
	public static String reg = "^([ ]|[　])+|([ ]|[　])+$";

	/**
	 * 去掉首尾空格,包括大小写
	 * 
	 * @param str
	 * @return
	 */
	public static String trim(String str) {
		if (str == null) {
			return "";
		}
		return str.replaceAll(",", "");
	}

	/**
	 * 去掉首位的，
	 * 
	 * @param str
	 * @return
	 */
	public static String replaceFirstStr(String str) {
		if (str == null) {
			return "";
		}
		return str.replaceFirst(",", "");

	}

	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	// 生成6位随机数
	public static String generate6SerialId() {

		int Value = ((int) (100000 + (999999 - 100000) * Math.random()));

		return "" + Value;
	}
	
	/**
	 * 判断变量是否为空
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isEmpty(String s) {
		if (null == s || "".equals(s) || "".equals(s.trim()) || "null".equalsIgnoreCase(s)) {
			return true;
		} else {
			return false;
		}
	}
	
	//首字母转小写
    public static String toLowerCaseFirstOne(String s){
        if(Character.isLowerCase(s.charAt(0)))
            return s;
        else
            return (new StringBuilder()).append(Character.toLowerCase(s.charAt(0))).append(s.substring(1)).toString();
    }
    //首字母转大写
    public static String toUpperCaseFirstOne(String s){
        if(Character.isUpperCase(s.charAt(0)))
            return s;
        else
            return (new StringBuilder()).append(Character.toUpperCase(s.charAt(0))).append(s.substring(1)).toString();
    }

	public static void main(String[] args) {
		System.out.println(StringUtil.replaceFirstStr(" ,11,2,3,4,5,6 "));
	}
}
