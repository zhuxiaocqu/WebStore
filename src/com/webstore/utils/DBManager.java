package com.webstore.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBManager {
	private final static String className = "oracle.jdbc.driver.OracleDriver";
	private final static String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
	private final static String user = "zy";
	private final static String password = "zhou";

	static {
		// 1.¼ÓÔØÇý¶¯
		try {
			Class.forName(className);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Connection connectDB() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static void closeDB(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		System.out.println(DBManager.connectDB());
	}
}
