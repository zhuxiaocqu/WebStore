<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>æ æ é¢ææ¡£</title>
</head>
<frameset rows="100,*" cols="*" frameborder="yes" border="0" framespacing="0">
  <frame src="good_top.jsp" name="topFrame" frameborder="yes" scrolling="no" noresize="noresize" id="topFrame" />
  <frameset cols="200,*" frameborder="no" border="0" framespacing="0">
    <frame src="good_left.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" />
    <frame src="" name="mainFrame" id="mainFrame" />
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
