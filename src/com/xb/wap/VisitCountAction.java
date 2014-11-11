package com.xb.wap;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xb.dao.JdbcUtils;

/***
 * 统计广告的访问记录
 * 
 * 1 iphone广告访问
 * 2 ipad广告访问
 * 3 iphone表单填写
 * 4 ipad广告填写
 * 5 彩信iphone广告访问
 * 6 彩信iphone表单填写
 * @author 讯搏无限
 *
 */
public class VisitCountAction extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//判断客户端访问工具
		String userAgent = request.getHeader("user-agent");
		String browserType = "iPad";
		if(userAgent.indexOf("iPad")>-1){//ipad = 平板的代表
			browserType = "iPad";
		}else if(userAgent.indexOf("iPhone")>-1){//iphone = 手机的代表
			browserType = "iPhone";
		}else if(userAgent.indexOf("Android")>-1){//android手机
			browserType = "Android";
		}else{
			browserType = "非智能机";
		}
		String pageType=request.getParameter("pageType");//iphne页ipad页
		
		JdbcUtils jdbcUtils = JdbcUtils.instance();
		Connection conn = jdbcUtils.loadConn();
		
		String sql = "insert into beauty_visite(visiteType,visitTime,phoneType,ip,useragent) values(?,?,?,?,?)";
		try {
			PreparedStatement ptst = conn.prepareStatement(sql);
			ptst.setObject(1, pageType);
			ptst.setObject(2, new Date());
			ptst.setObject(3, browserType);
			ptst.setObject(4, this.getIpAddr(request));
			ptst.setObject(5, this.requestHeader(request));
			ptst.executeUpdate();
			JdbcUtils.closeResource(conn, ptst);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String getIpAddr(HttpServletRequest request) {
	       String ip = request.getHeader("x-forwarded-for");
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	          ip = request.getHeader("Proxy-Client-IP");
	       }
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	          ip = request.getHeader("WL-Proxy-Client-IP");
	       }
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
	          ip = request.getRemoteAddr();
	       }
	       return ip;
	}
	
	public String requestHeader(HttpServletRequest request){
		Enumeration<String> headers =  request.getHeaderNames();
		String name = null;
		StringBuffer buffer = new StringBuffer();
//		while(headers.hasMoreElements()){
//			name = headers.nextElement();
//			buffer.append(name+"="+request.getHeader(name)+",");
//		}
		buffer.append(request.getHeader("user-agent"));
		return buffer.toString();
	}

}
