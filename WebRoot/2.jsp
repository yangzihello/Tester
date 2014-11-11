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
		height: 820px;
	}
	.form{
		position: absolute;
		top: 151px;
		left: 77px;
	}
	select{width: 208px;height: 22px;border: 0px;}
	
	.form input[type='text']{width: 195px;height: 16px;border: 0px  red solid;clear: both;display: block;}
	.margin-top{margin-top: 20px;}
	.margin-top2{margin-top: 17px;}
	.margin-top3{margin-top: 12px;}
	.form input[type='submit']{width: 175px;height: 35px;border: 1px blue solid;clear: both;display: block;}
	.margin-top1{margin-top: 23px;margin-left: -2px;opacity: 0;cursor: pointer;}

#submitbtn {
	background-color: rgba(0, 0, 0, 0.5);
	background: #f00\9;
	filter: alpha(opacity = 0);
}
</style>

</head>

<body>
<%
	String userAgent = request.getHeader("user-agent");
%>
<%=userAgent %>
<div class="container">
<img src="image/info-1_04.jpg" width="320" height="420" border="0" usemap="#Map" />
<map name="Map" id="Map">
  <area shape="rect" coords="75,212,250,247" href="tel://4000131488" />
</map>

	<div class="form">
	<form action="saveuserinfo.xhtml" method="post">
		<a name="form"></a>
		<input type="text" name="username" maxlength='16'/>
		<select class="margin-top2"  name="sex">
		<option value="女">女</option>
			<option value="男">男</option>
		</select>
		<input type="text"  name="phone" maxlength='11' class="margin-top3"/>
		<input type="submit" class="margin-top1" id="submitbtn" value=""/>
		<input type="hidden" name="pageType" value="6"/>
	</form>
	</div>
</div>
</body>
</html>
