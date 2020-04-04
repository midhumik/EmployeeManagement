package com.cognizant.test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBTest {

	public static void main(String[] args) {
		
		Connection con= null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/projectgroup5","root","12345");
			if(con!= null)
				System.out.println("Success");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
