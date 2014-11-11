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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0"/>
<meta name="MobileOptimized" content="240"/>
<title>海军总医院激光整形美容中心 </title>
<style type="text/css">
	body,div,ul,li,select,option{margin: 0;padding: 0;}
	body{font-size: 15px;line-height: 1.8em;
		font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
	}
	.container{
		overflow:hidden;
		width: 320px;
		height: 521px;
	}
</style>

</head>

<body>
	<div class="container">
		<img src="image/info-1_01.jpg" width="320" height="521" border="0"
			usemap="#Map" />
		<map name="Map" id="Map">
			<area shape="rect" coords="164,309,314,336" href="tel://4000131488" />
			<area shape="rect" coords="8,309,158,336" href="2.html" />
		</map>
	</div>
	<iframe src="visitCount.html?pageType=5" style="display: none;"></iframe>
</body>
</html>


