package com.test;

import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class Mtest {
	
	public static void main(String[] args) {
		String a = "{\"success\": 1, \"return\": {\"269601298\": {\"currency_pair\": \"btc_jpy\", \"action\": \"bid\", \"amount\": 0.002, \"price\": 750000.0, \"timestamp\": \"1509892774\", \"comment\": \"\"}, \"269599961\": {\"currency_pair\": \"btc_jpy\", \"action\": \"bid\", \"amount\": 0.001, \"price\": 801000.0, \"timestamp\": \"1509892454\", \"comment\": \"\"}}}";
		
//		String a = "{\"a\": {\"currency_pair\": \"btc_jpy\", \"action\": \"bid\", \"amount\": 0.002, \"price\": 750000.0, \"timestamp\": \"1509892774\", \"comment\": \"\"}, \"b\": {\"currency_pair\": \"btc_jpy\", \"action\": \"bid\", \"amount\": 0.001, \"price\": 801000.0, \"timestamp\": \"1509892454\", \"comment\": \"\"}";
		
		
		Map p = JSON.parseObject(a, Map.class);
		System.out.println(p.get("return"));
		Map p2 = JSON.parseObject(p.get("return").toString(), Map.class);
		System.out.println(p2.get("269601298"));
	}

}
