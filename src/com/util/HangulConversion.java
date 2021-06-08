package com.util;

public class HangulConversion {
	public static String toUTF(String en) {
		if(en == null) return null;
		try {
			return new String(en.getBytes("8859_1"),"utf-8");
		} catch (Exception e) {
			return en;
		}
	}
}