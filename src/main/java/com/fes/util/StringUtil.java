package com.fes.util;

public class StringUtil {
	
	// 문자열이 비어있지 않은지 확인하는 메소드
	public static boolean isNotEmpty(String str) {
		if(str==null) {
			return false;
		}else if("".equals(str.trim())) {
			return false;
		}
		return true;
	}
	
}
