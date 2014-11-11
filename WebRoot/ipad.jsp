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
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0"/>
<meta name="MobileOptimized" content="240"/>
<title>海军总医院激光整形美容中心 </title>
<style type="text/css">
	body,div,ul,li,select,option{margin: 0;padding: 0;}
	body{font-size: 15px;
		font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
	}
	.container{
		width: 1024px;
		height: 672px;
		overflow: hidden;
	}
	.form{
		position: absolute;
		top: 513px;
		left: 701px;
	}
	select{width: 222px;height: 22px;border: 0px #FFFFFF solid;}
	
	.form input[type='text']{width: 210px;height: 15px;border: 0px solid #FFFFFF;clear: both;display: block;}
	.margin-top{margin-top: 20px;}
	.margin-top2{margin-top: 11px;}
	.margin-top3{margin-top: 11px;}
	.form input[type='submit']{position: absolute;
		top: 88px;
		left: -72px;width: 150px;height: 25px;border: 1px blue solid;clear: both;display: block;}
	.margin-top1{margin-top: 20px;opacity: 0;cursor: pointer;}
#submitbtn {
	background-color: rgba(0, 0, 0, 0.5);
	background: #f00\9;
	filter: alpha(opacity = 0);
}
</style>

</head>

<body>
<div class="container">
	<img src="image/ipad-a-1.jpg" width="1024px" height="672px;"  border="0" usemap="#Map" />
	<map name="Map" id="Map">
	  <area shape="rect" coords="801,618,952,643" href="tel://4006762265" />
	</map>

	<div class="form">
	<form action="savepaduserinfo.xhtml" method="post">
		<a name="form"></a>
		<input type="text" name="username" maxlength='16'/>
		<select class="margin-top2"  name="sex">
		<option value="女">女</option>
			<option value="男">男</option>
		</select>
		<input type="text"  name="phone" maxlength='11' class="margin-top3"/>
		<input type="submit" class="margin-top1" id="submitbtn" value=""/>
	</form>
	</div>
</div>
<iframe src="visitCount.html?pageType=2" style="display: none;"></iframe>
</body>
</html>
