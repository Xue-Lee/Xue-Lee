package com.chinasofti.dota2.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnLink {

	public static Connection conn;
	static {
		
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");//加载驱动
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
			Class.forName("com.mysql.jdbc.Driver");//加载驱动
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dota2?useUnicode=true&characterEncoding=UTF-8","root","841013");
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?useUnicode=true&characterEncoding=UTF-8","root","841013");
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dota2?useUnicode=true&characterEncoding=UTF-8","root","root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
