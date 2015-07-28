package com.shxt.framework.utils;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.security.spec.KeySpec;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

import com.sun.org.apache.xerces.internal.impl.dv.xs.DecimalDV;

public class DbUtils {

	private static final String IMPLICTTEMPLATE = "%1$s%2$s%3$s";

	// 首部%
	public static String getPrefixImplict(String str) {
		if (str != null) {
			return String.format(IMPLICTTEMPLATE, "%", str, "");
		} else {
			return "%%";
		}
	}

	// 尾部%
	public static String getSuffixImplict(String str) {
		if (str != null) {
			return String.format(IMPLICTTEMPLATE, "", str, "%");
		} else {
			return "%%";
		}
	}

	// 首尾%
	public static String getFullImplict(String str) {
		if (str != null) {
			return String.format(IMPLICTTEMPLATE, "%", str, "%");
		} else {
			return "%%";
		}
	}

	/**
	 * @Description:产生一个数据库的主键
	 * @return String
	 */
	public static String getKey() {
		return UUID.randomUUID().toString();
	}

	/**
	 * @Description: 得到当前日期（yyyy-MM-dd格式）
	 * @return String
	 */
	public static String getDate() {
		DateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		return date.format(new Date());
	}

	/**
	 * @Description: 得到当前时间（yyyy-MM-dd HH:mm:ss格式）
	 * @return String
	 */
	public static String getTime() {
		DateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return date.format(new Date());
	}
	
	/**
	 * @Description: 得到当前时间（yyyy-MM-dd HH:mm:ss格式）
	 * @return String
	 */
	public static String getYear() {
		DateFormat date = new SimpleDateFormat("yyyy");
		return date.format(new Date());
	}
	
	

	/**
	 * @Description: 在指定的日期上加一天
	 * @param sourceDate
	 *            指定的日期
	 * @return String 加一天之后的日期
	 */
	/*
	 * public static String addOneDay(String sourceDate) { DateFormat df = new
	 * SimpleDateFormat("yyyy-MM-dd");
	 * 
	 * try { Date dd = df.parse(sourceDate); Calendar calendar =
	 * Calendar.getInstance(); calendar.setTime(dd);
	 * calendar.add(Calendar.DAY_OF_MONTH, 1);// 加一天 return
	 * df.format(calendar.getTime()); } catch (ParseException e) {
	 * e.printStackTrace(); return null; } }
	 */

	/**
	 * @Description: 在指定的日期上减一天
	 * @param sourceDate
	 *            指定的日期
	 * @return String 加一天之后的日期
	 */
	/*
	 * public static String minusOneDay(String sourceDate) { DateFormat df = new
	 * SimpleDateFormat("yyyy-MM-dd");
	 * 
	 * try { long dif = df.parse(sourceDate).getTime() - 86400 * 1000;// 减一天
	 * Date date = new Date(); date.setTime(dif); return df.format(date); }
	 * catch (ParseException e) { e.printStackTrace(); return null; } }
	 */

	/**
	 * 在指定的时间基础上，加addYear年，addMonth月，addDate天
	 * @param dateStr
	 * @param addYear
	 * @param addMonth
	 * @param addDate
	 * @return 输入的时期格式为yyyy-MM-dd，输出的日期格式为yyyy-MM-dd
	 * @throws Exception
	 */
	public static String addSomeDate(String dateStr, int addYear, int addMonth,
			int addDate) throws Exception {
		try {
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
					"yyyy-MM-dd");
			java.util.Date sourceDate = sdf.parse(dateStr);
			Calendar cal = Calendar.getInstance();
			cal.setTime(sourceDate);
			cal.add(Calendar.YEAR, addYear);
			cal.add(Calendar.MONTH, addMonth);
			cal.add(Calendar.DATE, addDate);

			java.text.SimpleDateFormat returnSdf = new java.text.SimpleDateFormat(
					"yyyy-MM-dd");
			String dateTmp = returnSdf.format(cal.getTime());
			return dateTmp;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
		}
	}

	/**
	 * @Description: 将日期转换成yyyy-MM-dd格式
	 * @param dateSource
	 * @return String
	 */
	public static String dateFormat(String dateSource) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			return df.format(df.parse(dateSource));
		} catch (ParseException e) {
			e.printStackTrace();
			return dateSource;
		}
	}

	/**
	 * @Description: 十进制转换成二进制 ()
	 * @param decimalSource
	 * @return String
	 */
	public static String decimalToBinary(int decimalSource) {
		BigInteger bi = new BigInteger(String.valueOf(decimalSource)); // 转换成BigInteger类型
		return bi.toString(2); // 参数2指定的是转化成X进制，默认10进制
	}

	/**
	 * @Description: 二进制转换成十进制
	 * @param binarySource
	 * @return int
	 */
	public static int binaryToDecimal(String binarySource) {
		BigInteger bi = new BigInteger(binarySource, 2); // 转换为BigInteger类型
		return Integer.parseInt(bi.toString()); // 转换成十进制
	}

	/**
	 * @Description: 将两个十进制数按位异或运算，返回运算结果
	 * @param i1
	 * @param i2
	 * @return Integer
	 */
	public static String bitOperation(Integer i1, Integer i2) {
		Integer binary1 = Integer.parseInt(decimalToBinary(i1));
		Integer binary2 = Integer.parseInt(decimalToBinary(i2));
		return String.valueOf(binary1 ^ binary2);
	}

	/**
	 * @Description: 将十进制转换成二进制然后获取标识位‘1’所在位置，从右往左排序
	 * @param decimalSource
	 * @return List<Integer>
	 */
	public static List<Integer> getTag1(int decimalSource) {
		List<Integer> list = new ArrayList<Integer>();

		if (decimalSource <= 0) {
			return list;
		} else {
			String binaryString = decimalToBinary(decimalSource);
			// 将字符串倒序排列
			String inverteString = new StringBuffer(binaryString).reverse()
					.toString();
			// 第一个1所在位置
			int temp = inverteString.indexOf("1");
			while (temp >= 0) {
				list.add(++temp);
				temp = inverteString.indexOf("1", temp);
			}
			return list;
		}
	}

	/**
	 * @Description: 将用，分隔的字符串转换成sql语句中in后面的参数样式
	 * @param keys
	 * @return String
	 */
	public static String convertToParamIn(String keys) {
		String[] myKeys = keys.split(",");
		StringBuffer s = new StringBuffer();
		s.append("(");
		for (String temp : myKeys) {
			if (temp != null && !temp.equals("")) {
				s.append("'" + temp + "',");
			}
		}
		String result = s.substring(0, s.length() - 1);
		result += ")";
		return result;
	}

	/**
	 * @Description: 加密
	 * @param src
	 * @return String
	 */
	public static String NankaiEncrypt(String src) {
		return DESEncrypt(src, "shxtshxt").toUpperCase();
	}

	/**
	 * @Description: 解密
	 * @param src
	 * @return String
	 */
	public static String NankaiDecrypt(String src) {
		return DESDecrypt(src, "shxtshxt");
	}

	public static String DESDecrypt(String message, String key) {
		try {
			byte[] bytesrc = convertHexString(message);
			Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
			DESKeySpec desKeySpec = new DESKeySpec(key.getBytes("UTF-8"));
			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey secretKey = keyFactory.generateSecret(desKeySpec);
			IvParameterSpec iv = new IvParameterSpec(key.getBytes("UTF-8"));
			cipher.init(Cipher.DECRYPT_MODE, secretKey, iv);
			byte[] retByte = cipher.doFinal(bytesrc);
			return new String(retByte);
		} catch (Exception e) {
			return "";
		}

	}

	public static String DESEncrypt(String message, String key) {
		try {
			byte[] en = Encrypt(message, key);
			String result = toHexString(en);
			return result;
		} catch (Exception e) {
			return "";
		}

	}

	public static byte[] Encrypt(String message, String key) throws Exception {
		Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
		DESKeySpec desKeySpec = new DESKeySpec(key.getBytes("UTF-8"));
		SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
		SecretKey secretKey = keyFactory.generateSecret(desKeySpec);
		IvParameterSpec iv = new IvParameterSpec(key.getBytes("UTF-8"));
		cipher.init(Cipher.ENCRYPT_MODE, secretKey, iv);
		return cipher.doFinal(message.getBytes("UTF-8"));
	}

	public static byte[] convertHexString(String ss) {
		byte digest[] = new byte[ss.length() / 2];
		for (int i = 0; i < digest.length; i++) {
			String byteString = ss.substring(2 * i, 2 * i + 2);
			// String byteString = ss.substring(2 * i, 2);
			int byteValue = Integer.parseInt(byteString, 16);
			digest[i] = (byte) byteValue;
		}
		return digest;
	}

	public static String toHexString(byte b[]) {
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < b.length; i++) {
			String plainText = Integer.toHexString(0xff & b[i]);
			if (plainText.length() < 2)
				plainText = "0" + plainText;
			hexString.append(plainText);
		}
		return hexString.toString();
	}

	/**
	 * @Description: 将数字转化成整型
	 * @param dataSource
	 * @return String
	 */
	public static String formatToInt(double dataSource) {
		DecimalFormat df = new DecimalFormat("#");
		return df.format(dataSource);
	}

	/**
	 * @Description:生成ID(new Date().getTime())
	 * @return String
	 */
	public static String generateID() {
		return String.valueOf(new Date().getTime());
	}
	
	
	/*
	 * 生成编号
	 */
	public static String generateCode(String inSubject,String subjectType) {
		//year
		String year=String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
		//X/Z
		//public int nextInt(int n);返回一个>=0、小于n的随机整数   0 <= ？<n
		String xz=new String();
		//学科分类与代码
		if("0".equals(subjectType)){
			xz="Z";
		}else if("1".equals(subjectType)){
			xz="X";
		}
		
		//流水号 3位
		//yyyyMMddhhmmss
		String number=new SimpleDateFormat("MMddhhmmss").format(new Date());
		
		return year+xz+inSubject+number;
	}
	
	/*
	 * 生成项目编码
	 */
	public static String getProjectCode(){
		
		String year=String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
		String number="12345";
		String projectCode=year+number;
		
		return projectCode;
	}
	
	/*
	spring mvc 中利用 @RequestParam来解析url中的参数，但默认情况下spring mvc的编码方式为 "ISO-8859-1"，
	因此如果参数的中文会出现乱码的情况，只要将参数转换为"utf-8"格式即可。
	*/
	public static String encodeStr(String str) {
		try {
			return new String(str.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
	}
	

	
}