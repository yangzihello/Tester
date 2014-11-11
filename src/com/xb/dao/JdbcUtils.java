package com.xb.dao;

import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	
	private static JdbcUtils jdbcUtils;
	
	private  String jdbcurl = "jdbc:mysql://124.238.214.26:3306/SDK_UTF8?characterEncoding=UTF-8";
	private  String username = "sdk_admin";
	private  String password = "xbwx@sdk";
	private  String driverClass = "com.mysql.jdbc.Driver";
	private  ComboPooledDataSource   dataSource; 
	
	public JdbcUtils(){
		InputStream input =  Thread.currentThread().getContextClassLoader().getResourceAsStream("jdbc.properties");
		if(null!=input){
			Properties prop = new Properties();
			try {
				prop.load(input);
				jdbcurl = prop.get("jdbc.url").toString();
				username = prop.get("jdbc.username").toString();
				password = prop.get("jdbc.password").toString();
				driverClass = prop.get("jdbc.driverClassName").toString();
				
				dataSource=new   ComboPooledDataSource();     
				dataSource.setDriverClass(driverClass); 
				dataSource.setUser(username);       
				dataSource.setPassword(password);       
				dataSource.setJdbcUrl(jdbcurl); 
				 
				dataSource.setInitialPoolSize(5); 
				dataSource.setMinPoolSize(2); 
				dataSource.setMaxPoolSize(10); 
				dataSource.setMaxStatements(50); 
				dataSource.setMaxIdleTime(60);    
				dataSource.setTestConnectionOnCheckin(true);
				dataSource.setAutomaticTestTable("TestTable");
				dataSource.setAutoCommitOnClose(true);
				dataSource.setIdleConnectionTestPeriod(600);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (PropertyVetoException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static JdbcUtils instance(){
		if(null==jdbcUtils){
			jdbcUtils = new JdbcUtils();
		}
		return jdbcUtils;
	}

	public Connection loadConn(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			System.out.println("获取数据库连接异常:"+e.getMessage());
			return null;
		}
	}
	
	public static void closeConn(Connection conn){
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void closeResource(Connection conn,Statement st){
		try {
			st.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void closeResource(Connection conn,Statement st,ResultSet rs){
		try {
			rs.close();
			st.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
