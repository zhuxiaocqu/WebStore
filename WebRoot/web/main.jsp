<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
  <head>
    <title>My JSP 'main.jsp' starting page</title>
<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <frameset rows="99,*,11" frameborder="no" border="0" framespacing="0">
  <frame src="<%=basePath %>web/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frame src="<%=basePath %>web/center.jsp" name="mainFrame" id="mainFrame" />
  <frame src="<%=basePath %>web/down.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />

</frameset>
<noframes><body>
</body>
</noframes>
</html>
