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
<title>海军总医院激光整形美容中心 </title>
<style type="text/css">
	body,div,ul,li,select,option{margin: 0;padding: 0;}
	body{font-size: 15px;line-height: 1.8em;
		font-family: "Helvetica Neue","Luxi Sans","DejaVu Sans",Tahoma,"Hiragino Sans GB",STHeiti,"Microsoft YaHei",Arial,sans-serif;
	}
	ul{list-style: none outside none;}
	ul li{border-bottom: 1px solid #E8E8E9;}
	.container{width: 320px;height:420px;margin: 0 auto;background: url("image/04.png") no-repeat top center;border: 0px red solid;}
	.center{text-align:center;}
	.right{text-align:right;}
	.youhui{font-family: 'Microsoft Yahei','Simsun';
    font-size: 17px; line-height: 150%;}
	a{color: #333333;text-decoration: none;}
	a：hover{color: #990000;text-decoration: none;}
</style>

<script type="text/javascript">
var startX = 0;
var startY = 0;
var curX = 0;
var curY = 0;
function touchStart(event) {
	startX = event.touches[0].pageX;
	startY = event.touches[0].pageY;
}

function touchEnd(event){
	if(Math.abs(curX)>100){
		var s = document.getElementById("main_img").getAttribute("src");
		//var pic = s.substring(s.lastIndexOf("\\", 0));
		if(s=="image/02.png"){
			document.getElementById("main_img").setAttribute("src","image/qubei.gif");
		}else{
			document.getElementById("main_img").setAttribute("src","image/02.png");
		}
	}
}

var width = 320;
function touchMove1(event) {

   // event.preventDefault();
    curX = event.targetTouches[0].pageX - startX;
    curY = event.targetTouches[0].pageY - startY;
    
    document.getElementById("ccc").value="x="+curX;
}
var width = 320;
var imgs= 2;
function touchMove(event,index) {
	   var l = document.getElementById("ullist").style.marginLeft;
	   // event.preventDefault();
	    curX = event.targetTouches[0].pageX - startX;
	    curY = event.targetTouches[0].pageY - startY;
	   
	    //document.getElementById("ullist").style.marginLeft =curX+"px";
	    document.getElementById("ccc").value=(curX*-1>0)+"|||"+(index-1)*width+"||"+(index+1)*width;
	    if(curX>0){//左滑动
	    	document.getElementById("ullist").style.marginLeft = (index-1)*width;
	    }else{//右滑动
	    	if(index+1>imgs){
	    		index = -1;
	    	}
	    	document.getElementById("ullist").style.marginLeft = (index+1)*width;
	    }
	   
	  //  alert(curX);
	}
function touchCancel(event){
	curX =  0;
	curY = 0;
	 document.getElementById("ccc").value="touchCancel";
}
</script>
</head>

<body>
<div>
	<input type="text" id="ccc"/>
</div>
	<div class="container">
	<div class="center">
		<img src="image/02.png" />
	</div>
	<div class="center">
		<img src="image/qubei.gif" id="main_img" ontouchstart="touchStart(event);"  ontouchmove="touchMove(event);"
		 ontouchend="touchEnd(event);" ontouchcancel="touchCancel(event);"/>
	</div>
	
	<div style="width: 320px;overflow: hidden;">
		<ul style="width: 640px;" id="ullist">
			<li style="float: left;width: 320px;">
				<img src="image/qubei.gif" id="main_img"  ontouchstart="touchStart(event);" ontouchmove="touchMove(event,1);"/>
			</li>
			<li style="float: left;width: 320px;">
				<img src="image/02.gif" id="main_img"  ontouchstart="touchStart(event);" ontouchmove="touchMove(event,2);"/>
			</li>
		</ul>
	</div>
	<div class="center">
		<img src="image/03.png" /><br/>
		400-6762-265
	</div> 
	<div class="center">
		<a href="tel://4006762265"><img src="image/01.png" /></a>
	</div>
	<div class="right youhui">
		<a href="userinfo.jsp">神秘大礼，立即领取！</a>
	</div>
	</div>
</body>
</html>
