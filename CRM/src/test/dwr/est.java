package test.dwr;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class est {

	public static void main(String[] args) throws ParseException {
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		Date date = simpleDateFormat.parse("2015-12-10 11:17");
		System.out.println(date.toLocaleString());
	}
	
}
