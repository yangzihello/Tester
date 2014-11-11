<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="application/vnd.wap.xhtml+xml;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% response.setContentType("application/xhtml+xml;charset=utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="application/vnd.wap.xhtml+xml;charset= UTF-8" />
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta name="MobileOptimized" content="240"/>
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0"/>
    <meta name="google-site-verification" content="优惠券,代金券" />
    <title>领取代金券</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<style type="text/css">
		body{background: none repeat scroll 0 0 #F8F8F8; color: #444444;
		    font-family: 'Microsoft Yahei','Simsun';font-size: 18px;line-height: 150%;}
		ul{clear: both;overflow: hidden;list-style: none outside none;margin: 0;padding: 0;}
    	ul li{border-bottom: 1px solid #E8E8E9;padding:10px 0px;}
    	.input{width: 150px;text-align: right;height: 30px;font-size: 16px;font-weight: bold;}
    	.button{background: -moz-linear-gradient(center top , #ED4E55 0px, #B80808 10%, #ED2931) repeat scroll 0 0 transparent;
		    border: 1px solid #7D1010;color: #FFFFFF;text-shadow: 1px 1px 1px #971A1F;
		    background: none repeat scroll 0 0 #F5F5F5;
		    clear: both;overflow: hidden;padding: 16px 10px;
		    background-color:rgb(184, 8, 8);cursor: pointer;}
	</style>
  </head>
  <body>
    <div style="width: 100%;text-align: center;">
    <form action="cashcoupon.xhtml" method="post">
    	<ul>
    		<li>请输入您的手机号码：</li>
    		<li>
	    		<div>
	    			<input type="text" name="phone" value=""  maxlength="11" class="input"/>
	    			<c:if test="${not empty requestScope.error}">
	    			<br/><span style="color: red">${requestScope.error}</span>
	    			</c:if>
	    		</div>
    		</li>
    		<li>
	    		<div>
	    			<input type="submit" value="提交赢取代金券" class="button"/>
	    		</div>
<div>
	    			
<a href="tel://13521531120">拨打电话</a> 
	    		</div>
    		</li>
    	</ul>
    	</form>
    </div>
  </body>
</html>
