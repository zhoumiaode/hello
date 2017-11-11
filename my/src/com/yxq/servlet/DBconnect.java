package com.yxq.servlet;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconnect {
	private Connection conn = null;
	private Statement st = null;
	private ResultSet rs = null;
	private PreparedStatement prs = null;
	private String driverClass;
	private String url;
	private String username;
	private String password;
	public DBconnect(String driverClass,String url,String password,String username) {
		
		this.driverClass = driverClass;
		this.password = password;
		this.url = url;
		this.username = username;
	}

	public Connection getConnection() throws SQLException{

		try {
			Class.forName(driverClass);
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}
		conn = DriverManager.getConnection(url, username, password);
		return conn;
	}

	public ResultSet ExecuteQuery(String sql) throws SQLException {
		try {
			conn = getConnection();
			st = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(sql);
			return rs;
		} catch (SQLException e) {
		throw e;
		}
	}

	public boolean Execute(String sql) throws SQLException {
		Connection conn = null;
		try {
			conn = getConnection();
			st = conn.createStatement();
			st.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			throw e;
		}
	}

	public void Close() {

		// 释放数据库资源
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (Exception ignore) {
				ignore.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (Exception ignore) {
				ignore.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
				conn = null;
			} catch (Exception ignore) {
				ignore.printStackTrace();
			}
		}
	}

	public static void main(String[] args) throws Exception {
		
	}
}
	
