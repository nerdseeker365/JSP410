package com.nt.elfx;

import java.util.Calendar;

public class WishMessageGenerator {
	
	public static  String  generate(String  user) {
		Calendar calendar=null;
		int hour=0;
		calendar=Calendar.getInstance();
		hour=calendar.get(Calendar.HOUR_OF_DAY);
		if(hour<=12)
			return "GM::"+user;
		else if(hour<=16)
			return "GA::"+user;
		else if(hour<=20)
			return "GE::"+user;
		else
			return "GN::"+user;
		
	}

}
