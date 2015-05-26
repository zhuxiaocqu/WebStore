<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>

<link href="style/div1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="top_01">
  		<div id="top_02">
			<!--<form id="form1" name="form1" method="post" action="">-->
    				<label for="name" class="font01">姓名</label>
      				<input type="text" name="name" id="name" />
    				<label for="password" class="font01">密码</label>
    				<input type="text" name="password" id="password" />
	  				<input type="submit" name="login" id="login" value="登录" onclick="location.href='../page0/top1.jsp'"/>
    				<input type="submit" name="regist" id="regist" value="注册" onclick="javaScript:window.open('../page0/regist.jsp')"/>
			<!--</form>-->
  		</div>
</div>

  <div id="top_03">
    <div id="head_search">
      <label for="search_02"></label>
      <input type="text" name="search_02" id="search_02" />
      <input type="submit" name="button" id="button" value="搜索" />
    </div>
    <div id="title"> <span id="title_01">点</span><span id="title_02">点商</span><span id="title_01">城</span> </div>
  </div>
<div id="top_05"><span id="menu_letter">首页&gt;女装</span></div>
  <div id="top_04"></div>
</body>
</html>
