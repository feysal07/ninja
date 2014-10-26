package com.homeninja.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;

import org.apache.commons.httpclient.util.URIUtil;

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
	 
	 public static String randomString(int length) {
		 char[] characterSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		    Random random = new SecureRandom();
		    char[] result = new char[length];
		    for (int i = 0; i < result.length; i++) {
		        // picks a random index out of character set > random character
		        int randomCharIndex = random.nextInt(characterSet.length);
		        result[i] = characterSet[randomCharIndex];
		    }
		    return new String(result);
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
	 
	 public static void main(String[] args) {
		 try {
		        URL url = new URL(
		                "http://maps.googleapis.com/maps/api/geocode/json?address="
		                        + URIUtil.encodeQuery("Sayaji Hotel, Near balewadi stadium, pune") + "&sensor=true");
		        
			 
			    //URL url =new URL("http://maps.googleapis.com/maps/api/geocode/json?address=jiwaji+ganj+morena&sensor=true ");
			    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		        conn.setRequestMethod("GET");
		        conn.setRequestProperty("Accept", "application/json");

		        if (conn.getResponseCode() != 200) {
		            throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
		        }
		        BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

		        String output = "", full = "";
		        while ((output = br.readLine()) != null) {
		            System.out.println(output);
		            if(output.contains("formatted_address")){
		            	
		            }
		            
		            
		            full += output;
		        }
		        conn.disconnect();
		    } catch (MalformedURLException e) {
		        e.printStackTrace();
		    } catch (IOException e) {
		        e.printStackTrace();
		    }
	}
}
