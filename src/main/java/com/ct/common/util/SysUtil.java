/**
 * 
 */
package com.ct.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;


public class SysUtil {
	
	
	public static String createID(String tableShort) {
		String id = "";
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		id = format.format(date);
		String randomStr = "";
		Random r = new Random();
		for (int i = 0; i < 5; i++) {
			randomStr += r.nextInt(10);
		}
		id = id + "-" + randomStr + "-" + tableShort ;
		return id;
	}

	public static String createID2() {
		String id = "";
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		id = format.format(date);
		id = id + "_" + UUID.randomUUID().toString().trim().replaceAll("-", "").substring(0,14);
		return id;
	}
	
	public static String get32UUID() {
		String uuid = UUID.randomUUID().toString().trim().replaceAll("-", "");
		return uuid;
	}
	
	public static void main(String[] args) {
		System.out.println(SysUtil.get32UUID().subSequence(0, 14));
		System.out.println(SysUtil.createID2());
	}

}
