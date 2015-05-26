<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>管理平台</title>
		<link href="Css/style.css" rel="stylesheet">
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
	background-color: #33CC99;
}

.STYLE3 {
	font-size: 12px;
	color: #adc9d9;
}

#login {
	background-image: url(images/dl.jpg);
	cursor: pointer;
	color: #FFF;
	background-position: 57px 20px;
}

#reset {
	background-image: url(images/dl.jpg);
	background-position: 57px 20px;
	color: #FFF;
}
-->
</style>

		<script language="javascript">
function checkform(myform){
	for(i=0;i<myform.length;i++){
		if(myform.elements[i].value==""){
			alert(myform.elements[i].title+"不能为空！");
			myform.elements[i].focus();
			return false;
		}
	}
}

 function myReload(){
 	
	document.getElementById("createCheckCode").src=document.getElementById("createCheckCode").src+"?nocache="+new Date().getTime();
 }
 
</script>

	</head>

	<body>


		<table width="100%" height="100%" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td bgcolor="#1075b1">
					&nbsp;


				</td>
			</tr>
			<tr>
				<td height="608" background="images/login_03.gif">
					<table width="847" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="318" background="images/login_04.jpg"
								bgcolor="#33CC99">
								&nbsp;


							</td>
						</tr>
						<tr>
							<td height="84">

								<form name="form1" method="post"
									action="<%=basePath%>servlet/LoginServlet"
									onSubmit="return checkform(form1)">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="187" height="84" background="images/login_06.gif">
												&nbsp;


											</td>
											<td width="356" valign="middle"
												background="images/login_07.gif">



												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="93" height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">用户</span>
															</div>
														</td>
														<td width="20" valign="bottom">
															&nbsp;


														</td>
														<td height="24" colspan="2" valign="bottom">
															<div align="left">
																<input type="text" name="account" id="account"
																	style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">
															</div>
														</td>
													</tr>
													<tr>
														<td height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">密码</span>
															</div>
														</td>
														<td width="20" valign="bottom">
															&nbsp;


														</td>
														<td height="24" colspan="2" valign="bottom">
															<input type="password" name="password" id="password"
																style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">
														</td>
													</tr>
													<tr>
														<td height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">验证码</span>
															</div>
														</td>
														<td width="20" valign="bottom">
															&nbsp;


														</td>
														<td width="62" height="24" valign="bottom">
															<input type="text" name="checkCode" id="checkCode"
																style="width: 50px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;"
																title="验证码区分大小写">
														</td>


														<td width="181" valign="bottom">


															<img src="<%=basePath%>servlet/PictureCheckCode"
																height="30" width="60" id="createCheckCode">
															<a href="<%=basePath%>web/login.jsp" onClick="myReload()">换一个</a>


														</td>






													</tr>
													<tr></tr>
												</table>
											</td>
											<td width="26">
												<img src="images/login_08.gif" width="26" height="84">
											</td>
											<td width="67" background="images/login_09.gif">
												<table width="97%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td height="25">
															<div align="center">
																<input type="submit" name="login" id="login" value="登陆">
															</div>
														</td>
													</tr>
													<tr>
														<td height="25">
															<div align="center">
																<a href="<%=basePath%>web/EmployeeRegister.jsp"
																	traget="_parten"><input type="button" name="reset"
																		id="reset" value="注册"> </a>
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="211" background="images/login_10.gif">
												&nbsp;


											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
						<tr>
							<td height="206" background="images/login_11.gif">
								&nbsp;


							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td bgcolor="#152753">
					&nbsp;


				</td>
			</tr>
		</table>

	</body>
</html>
