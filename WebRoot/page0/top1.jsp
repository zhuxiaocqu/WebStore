<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="style/div1.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="top_01">
  		<div id="top_02">
			<div id="link_01">
            <span style="margin-right:30px;">欢迎 XXX</span>
			<a href="../page2/myhome.jsp" style="margin-right:20px;" target="_parent">我的商城</a>
			<a href="../page1/personalPage.jsp" style="margin-right:20px;" target="_blank">个人主页</a>			</div>
  		</div>
	</div>
<div id="top_03">
  		<div id="title">
        	<span id="title_01">点</span><span id="title_02">点商</span><span id="title_01">城</span>
        </div>
	</div>
	<nav>
		<ul id="menu">
			<li class="active" style="margin-left:200px;"><a href="right.jsp" target="mainFrame">首页</a></li>
			<li><a href="recommend.jsp" target="mainFrame">特别推荐</a></li>
			<li><a href="forsale.jsp" target="mainFrame">品牌特卖</a></li>
			<li><a href="new.jsp" target="mainFrame">最新产品</a></li>
            <span id=menu_01>
              <form id="form2" name="form2" method="post" action="">
                <input type="text" name="search" id="search" />
                <input type="submit" name="button" id="button" value="search" />
              </form>
            </span>
		</ul>
	</nav>
    <div id="top_04">
    </div>
</body>
</html>
