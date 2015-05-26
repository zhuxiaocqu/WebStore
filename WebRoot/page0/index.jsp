<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
*{
	margin:0;
	padding:0;
	border:none;
	}
body {
	background:url(../bkimages/bg01.jpg);
}

-->
</style>
</head>

<frameset rows="200,*" name="all" cols="*"  border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling=""no noresize="noresize" id="topFrame"  title="topFrame" />
  <frameset rows="*" cols="200,*" framespacing="0" frameborder="no" border="0">
    <frame src="left.jsp" name="leftFrame" frameborder="yes" scrolling="no" marginwidth="0" id="leftFrame"  title="leftFrame" />
    <frame src="right.jsp" name="mainFrame" id="mainFrame" title="main"/>
</frameset>
<noframes><body>
</body>
</noframes></html>
