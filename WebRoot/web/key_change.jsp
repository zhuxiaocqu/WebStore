<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.webstore.bean.subobject.Product"%>
<%@page import="java.util.List"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'key_change.jsp' starting page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
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
-->
</style>
<script type="text/javascript">
	Function()
	{
	   v
	}
</script>
	</head>

	<body>
		<form name="form1" method="post"
			action="<%=basePath%>servlet/ChangePasswordServlet">
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
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="381" height="84" background="images/login_06.gif">
												&nbsp;

											</td>
											<td width="162" valign="middle"
												background="images/login_07.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="55" height="24" valign="bottom">
															<div align="right" class="STYLE3">
																原密码:
															</div>
														</td>
														<td width="10" valign="bottom">
															&nbsp;

														</td>
														<td height="24" colspan="2" valign="bottom">
															<div align="left">
																<input type="text" name="oldPasss" id="oldPasss"
																	style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">
															</div>
														</td>
													</tr>
													<tr>
														<td width="55" height="24" valign="bottom">
															<div align="right" class="STYLE3">
																新密码:
															</div>
														</td>
														<td width="10" valign="bottom">
															&nbsp;

														</td>
														<td height="24" colspan="2" valign="bottom">
															<div align="left">
																<input type="text" name="newPass" id="newPass"
																	style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">
															</div>
														</td>
													</tr>
													<tr>
														<td height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">确认</span>
															</div>
														</td>
														<td width="10" valign="bottom">
															&nbsp;

														</td>
														<td height="24" colspan="2" valign="bottom">
															<input type="password" name="sure" id="sure"
																style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">
														</td>
													</tr>
													<tr>
														<td height="24" valign="bottom">
															&nbsp;
														</td>
														<td width="10" valign="bottom">
															&nbsp;

														</td>
														<td width="52" height="24" valign="bottom">
															&nbsp;
														</td>
														<td width="62" valign="bottom">
															&nbsp;
														</td>
													</tr>
													<tr></tr>
												</table>
											</td>
											<td width="26">
												<img src="images/login_08.gif" width="26" height="84">
											</td>
											<td width="67" background="images/login_09.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td height="17">
															<div align="right">
																<input type="submit" name="userInfo" id="userInfo"
																	value="修改">
															</div>
														</td>
													</tr>

													<tr>
														<td height="17">
															<div align="right">
																<a href="../login/key_change.html" target="_parten"><input
																		type="reset" name="userInfo" id="userInfo" value="重置">
																</a>
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
		</form>
	</body>
</html>
