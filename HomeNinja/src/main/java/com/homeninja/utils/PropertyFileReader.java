package com.homeninja.utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;


public class PropertyFileReader {

	  
	 public Properties getPropValues(String propFileName) throws IOException {
			Properties prop = new Properties();
			InputStream inputStream = getClass().getClassLoader()
					.getResourceAsStream(propFileName);
			prop.load(inputStream);
			if (inputStream == null) {
				throw new FileNotFoundException("property file '" + propFileName
						+ "' not found in the classpath");
			}
			return prop;
		}
	 
	 public  String getPropertyValue( String fileName, String key ) throws IOException 
	    {
		    String value="";
	        Properties prop = getPropValues(fileName);
	        if ( null != prop.getProperty( key ) ) {
	           value = prop.getProperty( key );
	        } 
	        return value;
	    }

	
}
