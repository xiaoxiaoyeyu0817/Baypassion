package com.baypassion.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CountThirtyDays 
{
	public static String dateCalculation (){
	     SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	     Calendar c = Calendar.getInstance();
	     c.setTime(new Date()); // Now use today date.
	     c.add(Calendar.DATE, 30); // Adding 30 days
	     String output = sdf.format(c.getTime());
	     System.out.println(output);
	     return output;
	}
}
