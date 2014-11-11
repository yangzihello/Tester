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
	<meta http-equiv="expires" content="0"/>    
	<style type="text/css">
		body,div,ul,li,select,option{margin: 0;padding: 0;}
		body{font-size: 18px;text-align:center;
			font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
		}
		.container{
			overflow:hidden;
			width: 320px;
			height: 627px;
		}
	</style>
  </head>
  <body>
  	<div class="container">
  	<c:if test="${empty errormsg }">
    <div class="success">
    	<img src="image/info-31.jpg" width="320" height="627" border="0" usemap="#Map" />
		<map name="Map" id="Map">
		  <area shape="rect" coords="37,132,285,168" href="tel://4000131488" />
		</map>
    </div>
    </c:if>
    </div>
  </body>
</html>
