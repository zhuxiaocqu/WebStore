<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/style.css">


<title>无标题文档</title>
<link href="style/div.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	color: #048005;
	font-size: 12px;
}
.STYLE2 {font-size: 16px}
-->
</style>
</head>

<body>
<div id="left">
				<ul>
                <li></li>
				<li class="font01"><a href="../page0/shoplist.jsp" target="mainFrame" class="font11">我的购物车</a></li>
				<li class="font01"><a href="../page0/buylist.jsp" target="mainFrame" class="font01 font11">已买到的宝贝</a></li>
				<div id="0001"></div>
				<div id="0001">
				  <li class="nodecousor STYLE1"><a href="../page1/personalPage.jsp" target="_blank"></a><a href="../page0/info.jsp" target="mainFrame" class="nodecousor font11">个人信息</a></li>
				<li class="font11"><a href="../page1/personalPage.jsp" target="_blank" class="STYLE2">个人主页</a></li>
                </div>
                <li class="font01"><a href="../page0/getAdd.jsp" target="_blank"  class="font01 STYLE2">发货地址</a></li>
				</ul>
</div>
</body>
</html>
