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
<style type="text/css">
body,td,th {
	font-size: 12px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<table width="93%" height="412" border="2">
  <tr>
    <td height="80"><img src="images/center_goodsdetail.gif" alt="2" width="1000" height="80" /></td>
  </tr>
  <tr>
    <td height="277"><table width="100%" height="272" border="1">
      <tr>
        <td width="34%"><img src="../images/shangpin.jpg" alt="1" width="331" height="236" /></td>
        <td width="66%"><table width="100%" height="202" border="1">
          <tr>
            <td width="29%" align="right">商 品 名 称：</td>
            <td width="71%">&nbsp;</td>
          </tr>
          <tr>
            <td align="right">商 品 价 格：</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td align="right">配 送 方 式：</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td align="right">月&nbsp;&nbsp;销&nbsp;&nbsp;量：</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="37" align="right">评 价 等 级：</td>
            <td height="37">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="65%" border="0">
    </table>
      <form id="form1" name="form1" method="post" action="">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input name="button" type="button"class="btn_grey" id="button"onclick="location.href='order.jsp'" value=" "/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" name="button1" id="button1" value=" "onclick="location.href='cart_see.jsp'" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </form>
      &nbsp;</td>
  </tr>
</table>
</body>
</html>
