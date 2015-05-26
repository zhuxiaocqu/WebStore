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
<link href="CSS/div1.css" rel="stylesheet" type="text/css" />
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
	background-color: ;
}
</style>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
</head>

<body bgcolor="#CEFF63">
<div id="top">
		<h1>&nbsp;</h1>
</div>

  		<div id="title">
        	<span id="title_01">点</span><span id="title_02">点商</span><span id="title_01">城</span>
        </div>
	
<table width="26%" height="21" border="0" align="right">

  <tr>
  <td width="94"><a href="../page0/index.jsp" target="_parent">首页</a></td><td width="41"></td>
    <td width="143"><script language="JavaScript">
today=new Date();
var hours = today.getHours();
var minutes = today.getMinutes();
var seconds = today.getSeconds();
var timeValue = "<FONT COLOR=#FF9900>" + ((hours >12) ? hours -12 :hours); timeValue += ((minutes < 10) ? "<BLINK><FONT COLOR=#FF9900>:</FONT></BLINK>0" : "<BLINK><FONT COLOR=#FF9900>:</FONT></BLINK>") + minutes+"</FONT></FONT>";
timeValue += (hours >= 12) ? "<FONT COLOR=#FF9900>PM</FONT>" : "<FONT COLOR=#FF9900>AM</FONT>";
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i]  }
var d=new initArray("<font color=RED>星期日","<font color=#FF9900>星期一","<font color=#FF9900>星期二","<font color=#FF9900>星期三","<font color=#FF9900>星期四","<font color=#FF9900>星期五","<font color=#FF9900>星期六"); document.write("<font color=#FF9900>",today.getMonth()+1,"<font color=#FF9900>月","<font color=#FF9900>",today.getDate(),"<font color=#FF9900>日 </FONT>",d[today.getDay()+1]," ",timeValue);  //-->
</script></td>
  </tr>
</table>

</body>
</html>
