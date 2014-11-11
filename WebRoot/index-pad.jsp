<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% response.setContentType("application/xhtml+xml;charset=utf-8");%>
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
</style>

</head>

<body>
<%
//host=www.91mob.net
//user-agent=Mozilla/5.0 (Windows NT 6.1; rv:16.0) Gecko/20100101 Firefox/16.0
//accept=text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
//accept-language=zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3
//accept-encoding=gzip, deflate
//connection=keep-alive
//cookie=JSESSIONID=2E344BDFA743070C3E712B8F030FFA5C; JSESSIONID=BF8E2FA24A9CB7A6C9B33FB1B79CC956
//cache-control=max-age=0



String agent = request.getHeader("user-agent");
if(agent.indexOf("iPad")>-1){//ipad
	
}else if(agent.indexOf("iPhone")>-1){//iphone
	
}else{//
	
}
%>
<div class="container">
	<img src="image/info-p.jpg" width="1024px" height="672px;" border="0" usemap="#Map" />

	<div class="form" style="display: none;">
	<form action="saveuserinfo.xhtml" method="post">
		<a name="form"></a>
		<input type="text" name="username" maxlength='16'/>
		<select class="margin-top2"  name="sex">
		<option value="女">女</option>
			<option value="男">男</option>
		</select>
		<input type="text"  name="phone" maxlength='11' class="margin-top3"/>
		<input type="submit" class="margin-top1" value=""/>
	</form>
	</div>
</div>
</body>
</html>
