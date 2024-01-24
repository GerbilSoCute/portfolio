package com.fes.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.ctc.wstx.shaded.msv_core.datatype.xsd.IntegerType;

public class MatcherUtil {
	
	public static int MatchNparseInt(String str) {
		
		Pattern pattern = Pattern.compile("[0-9]+");
		Matcher matcher = pattern.matcher(str);
		matcher.find();
		str = matcher.group();		

		int str2 = 0;
		
		str2 = Integer.parseInt(str);
		
		return str2;
	}	
	
	public static String Match(String str) {
		// 문자열에서 숫자만 남기고 전부 제거. 
		str = str.replaceAll("[^0-9]", "");
//		System.out.println(str);
		return str;
	}
	
	public static int substNparseInt(String str) {
		
		String str2 = "";
		int str3 = 0;
		
		str2 = str.substring(0, 1);
		// 첫번째 글자만 남김.
		
		str3 = Integer.parseInt(str2);
//		System.out.println("상승률:"+str3);
		
		return str3;
	}
	
	public static int substNparseInt2(String str) {
		
		String str2 = "";
		int str3 = 0;
		
		str2 = str.substring(1);
		// 두번째 글자부터 남김
		
		str3 = Integer.parseInt(str2);
//		System.out.println("상승값:"+str3);
		
		return str3;
	}
}
