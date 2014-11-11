<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	if(null!=request.getAttribute("customType")){
		response.setContentType(request.getAttribute("customType").toString());
	}else{
		response.setContentType("application/xhtml+xml;charset=utf-8");
	}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="application/vnd.wap.xhtml+xml;charset= UTF-8" />
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta name="MobileOptimized" content="240"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0"/>
    <title>海军总医院激光整形美容中心</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="refresh" content="2;url=iphone.html"/>
	<meta http-equiv="expires" content="0"/>    
	<style type="text/css">
		body,div,ul,li,select,option{margin: 0;padding: 0;}
		body{font-size: 18px;line-height: 1.8em;text-align:center;
			font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
		}
		img{margin-right: 10px;}
		.left{text-align:left;}
		
		.error{color: red;}
	</style>
  </head>
  <body>
     <div class="error">
    	<img src="image/warn.png"></img>无效的数据！！
    	<div>
    		${errormsg }
    	</div>
    </div>
  </body>
</html>
