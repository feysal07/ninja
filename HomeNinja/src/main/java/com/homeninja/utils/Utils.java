package com.homeninja.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utils {
	 public static String getRandomId() {

	        long timeSeed = System.nanoTime(); // to get the current date time value

	        double randSeed = Math.random() * 1000; // random number generation

	        long midSeed = (long) (timeSeed * randSeed); 
	                                                     
	        String s = midSeed + "";
	        String subStr = s.substring(0, 9);

	        int finalSeed = Integer.parseInt(subStr);    // integer value
            return Integer.toString(finalSeed);
	    }
	 
	 public static String md5Encryption(String input) {
         
	        String md5Password = null;
	         
	        if(null == input) return null;
	         
	        try {
	             
	        //Create MessageDigest object for MD5
	        MessageDigest digest = MessageDigest.getInstance("MD5");
	         
	        //Update input string in message digest
	        digest.update(input.getBytes(), 0, input.length());
	 
	        //Converts message digest value in base 16 (hex)
	        md5Password = new BigInteger(1, digest.digest()).toString(16);
	 
	        } catch (NoSuchAlgorithmException e) {
	 
	            e.printStackTrace();
	        }
	        return md5Password;
	    }
}
