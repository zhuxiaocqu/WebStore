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
		<base href="<%=basePath%>">
		<title>My JSP 'top.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px;
	color: #000000;
}

.STYLE5 {
	font-size: 12
}

.STYLE7 {
	font-size: 12px;
	color: #FFF;
	cursor: pointer;
}

a:link {
	color: #FFFFFF;
	text-decoration: none;
}

a:visited {
	color: #FFFFFF;
	text-decoration: none;
}

a:hover {
	color: #FFFFFF;
	text-decoration: none;
}

a:active {
	color: #FFFFFF;
	text-decoration: none;
}

#change1 {
	background-image: url(images/pass.jpg);
	cursor: pointer;
	color: #000;
	background-position: 57px 20px;
}

#userInfo {
	background-image: url(images/pass.jpg);
	background-position: 57px 20px;
	color: #000;
}

#quit {
	background-image: url(images/pass.jpg);
	background-position: 57px 20px;
	color: #000;
}
-->
</style>
		<script language="javascript">
	function showtime() {
		var today, hour, second, minute, year, month, date;
		var strDate;
		today = new Date();
		var n_day = today.getDay();
		switch (n_day) {
		case 0: {
			strDate = "星期日"
		}
			break;
		case 1: {
			strDate = "星期一"
		}
			break;
		case 2: {
			strDate = "星期二"
		}
			break;
		case 3: {
			strDate = "星期三"
		}
			break;
		case 4: {
			strDate = "星期四"
		}
			break;
		case 5: {
			strDate = "星期五"
		}
			break;
		case 6: {
			strDate = "星期六"
		}
			break;
		case 7: {
			strDate = "星期日"
		}
			break;
		}
		month = today.getMonth() + 1;
		date = today.getDate();
		hour = today.getHours();
		minute = today.getMinutes();
		second = today.getSeconds();
		if (month < 10)
			month = "0" + month;
		if (date < 10)
			date = "0" + date;
		if (hour < 10)
			hour = "0" + hour;
		if (minute < 10)
			minute = "0" + minute;
		if (second < 10)
			second = "0" + second;
		document.getElementById('time').innerHTML = month + "月" + date + "日 "
				+ strDate + " " + hour + ":" + minute + ":" + second; //显示时间 
		setTimeout("showtime();", 1000); //设定函数自动执行时间为 1000 ms(1 s) 
	}
</script>
	</head>

	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="57" background="images/main_03.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="378" height="57" background="images/main_03.gif">
								&nbsp;


							</td>
							<td height="20" valign="bottom">
								<span class="STYLE1">当前用户：<b><%=session.getAttribute("employeeName")%></b></b>&nbsp;
									&nbsp;&nbsp;用户角色：管理员</span>
							</td>
							<td>
								&nbsp;


							</td>
							<td width="281" valign="bottom">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="33" height="27">
											<img src="images/main_05.gif" width="33" height="27" />
										</td>
										<td width="248" background="images/main_06.gif">
											<table width="225" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>


													<td height="17">
														<div align="right">
															<a href="<%=basePath%>web/key_change.jsp"
																target="_parten"><img src="images/pass.gif"
																	width="69" height="17" /> </a>
														</div>
													</td>

													<td>
														<a href="<%=basePath%>web/EmployeeInfo.jsp" target="_parten"><div
																align="right">
																<img src="images/user.gif" width="69" height="17" />
															</div> </a>
													</td>
													<td>
														<div align="right">
															<a href="<%=basePath%>web/login.jsp" target="_parten"><img
																	src="images/quit.gif" width="69" height="17" /> </a>
														</div>
													</td>

												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="40" background="images/main_10.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="194" height="40" background="images/main_07.gif">
								&nbsp;


							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="21">
											<img src="images/main_13.gif" width="19" height="14" />
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<a href="center.html" target="mainFrame">首页</a>
											</div>
										</td>
										<td width="21" class="STYLE7">
											<img src="images/main_15.gif" width="19" height="14" />
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												后退
											</div>
										</td>
										<td width="21" class="STYLE7">
											<img src="images/main_17.gif" width="19" height="14" />
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												前进
											</div>
										</td>
										<td width="21" class="STYLE7">
											<img src="images/main_19.gif" width="19" height="14" />
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												刷新
											</div>
										</td>
										<td width="21" class="STYLE7">
											<img src="images/main_21.gif" width="19" height="14" />
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												帮助
											</div>
										</td>
										<td>
											&nbsp;


										</td>
									</tr>
								</table>
							</td>
							<td width="248" background="images/main_11.gif">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="16%">
											<span class="STYLE5"></span>
										</td>
										<td width="100%" id="time">

											<span style="color: #fff"> <script
													language="javascript">
	showtime();
</script> </span>

										</td>

									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>

		</table>
	</body>
</html>
