<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="application/vnd.wap.xhtml+xml;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% response.setContentType("application/xhtml+xml;charset=utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0"/>
<meta name="MobileOptimized" content="240"/>
<title>完善个人信息</title>
<style type="text/css">
	body,div,ul,li,select,option{margin: 0;padding: 0;}
	body{font-size: 18px;line-height: 1.8em;
		font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
	}
	ul{list-style: none outside none;}
	ul li{border-bottom: 1px solid #E8E8E9;}
	.container{width: 320px;margin: 0 auto;}
	.span-2{padding-left: 25px;}
	.inputText{  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	    border-style: solid;border-width: 1px;font-family: Arial;font-size: 14px;
	    height: 24px;line-height: 24px;
	}
	.btn1{
	    background-color: #5BB75B;
	    background-image: linear-gradient(to bottom, #62C462, #51A351);
	    background-repeat: repeat-x;
	    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	    color: #FFFFFF;
	    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	      border-radius: 6px 6px 6px 6px;
	    font-size: 17.5px;
	    padding: 5px 19px;
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
	     cursor: pointer;
	    display: inline-block;
	    line-height: 20px;
        text-align: center;
        vertical-align: middle;
}
</style>
</head>

<body>
	<div class="container">
	<div>
		<form action="saveuserinfo.xhtml" method="post">
			<ul>
				<c:if test="${not empty errormsg}">
				<li class="span-2">
					<span style="color: red;">${errormsg}</span>
				</li>
				</c:if>
				<li>
					姓名：
				</li>
				<li class="span-2">
					<input class="inputText" type="text" name="username" maxlength='16' title="姓名"/>
				</li>
				<li>
					年龄：
				</li>
				<li  class="span-2">
					<select class="age" name="age" id="age">
						<option value="18-23" selected="selected">18-23</option>
						<option value="23-28">23-28</option>
						<option value="28-32">28-32</option>
						<option value="32-36">32-36</option>
						<option value="36-40">36-40</option>
						<option value="40-45">40-45</option>
						<option value="45-50">45-50</option>
						<option value="50-55">50-55</option>
						<option value="55-60">55-60</option>
					</select>
				</li>
				<li>
					性别：
				</li>
				<li  class="span-2">
					<select name="sex">
						<option value="女">女</option>
						<option value="男">男</option>
					</select>
				</li>
				<li>
					手机号码：
				</li>
				<li  class="span-2">
					<input class="inputText" type="text" name="phone" maxlength='11' title="手机号码"/>
				</li>
				<li  class="span-2">
					<input type="submit" class="btn1" value="提交获取代金券"/>
				</li>
			</ul>
		</form>
	</div>
	</div>
</body>
</html>
