<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.webstore.bean.subobject.UserList"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style>
	#rewrite{
		margin:0 0 0 50px;
		height:50px;
		width:550px;
		line-height:50px;
		}
	#rewrite_font{
		line-height:50px;
		display:block;
		float:right;
		width:80px;
		height:30px;
		margin:10px 40px;;
		cursor:pointer;
		color:#FFF;
		line-height:30px;
		text-align:center;
		}
	#pic
		{
			margin-left:50px;
			margin-top:50px;
			width:100px;
			height:100px;
			}
	a{
	sursor:pointer;
	margin-top:30px;
	margin-left:30px;
	}
</style>
</head>

<body>
<%
	UserList user=(UserList)request.getAttribute("user");
 %>
 <form action="<%=path %>/servlet/changeUser" method="post" >
<table width="550" height="605" border="1" cellpadding="0" cellspacing="0" style="margin:10px 0 0 50px;">

  <tr>
    <td width="30%" height="148" bgcolor="d3eaef">用户头像：</td>
    <td width="%"><img id="pic" align="bottom" src="<%=user.getImageURL()%>"/> </td>
	 <td width="35%"><label for="imgpath"></label>
	  <input type="file" name="imgpath" id="img_path" /></td>
  </tr>
  <tr>
    <td width="30%" height="48" bgcolor="d3eaef">用户ID：</td>
    <td width="70%"><input type="text" name="id" value="<%=user.getUserID() %>"/></td>
  </tr>
  <tr>
    <td height="41" bgcolor="d3eaef">账户名称：</td>
    <td><input type="text" name="account"  value="<%=user.getAccount() %>"/></td>
  </tr>
  <tr>
    <td height="40" bgcolor="d3eaef">密码：</td>
    <td><input type="text" name="password" value="<%=user.getPassWord() %>"/></td>
  </tr>
  <tr>
    <td height="40" bgcolor="d3eaef">真实姓名：</td>
    <td><input type="text" name="realname"  value="<%=user.getRealName() %>"/></td>
  </tr>
  <tr>
    <td height="40" bgcolor="d3eaef">性别：</td>
    <td><input type="text" name="sex" value="<%=user.getSex() %>"/></td>
  </tr>
  <tr>
    <td height="43" bgcolor="d3eaef">年龄：</td>
    <td><input type="text" name="age"  value="<%=user.getAge() %>"/></td>
  </tr>
  <tr>
    <td height="43" bgcolor="d3eaef">手机：</td>
    <td><input type="text" name="phonenumber"  value="<%=user.getPhoneNumber() %>"/></td>
  </tr>
  <tr>
    <td height="41" bgcolor="d3eaef">地址：</td>
    <td><input type="text" name="address" value="<%=user.getAddress() %>"/></td>
  </tr>
  <tr>
    <td height="43" bgcolor="d3eaef">生日：</td>
    <td><input type="text" name="birthday" value="<%=user.getBirthDate() %>"/></td>
  </tr>
  <tr>
    <td height="38" bgcolor="d3eaef">E-mail：</td>
    <td><input type="text" name="email"  value="<%=user.getEMail() %>"/></td>
  </tr>
  <tr>
    <td height="38" bgcolor="d3eaef">用户等级：</td>
    <td><input type="text" name="typename"  value="<%=user.getUserType().getTypeID() %>"/></td>
  </tr>
</table>
<div id="rewrite"><span id="rewrite_font" ><input  type="submit" name="checkon"   value="提交"/>&nbsp;</span></div>
</form>
<a href="<%=path %>/servlet/showuser" > 返回</a>
</body>
</html>
