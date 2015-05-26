<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.webstore.bean.subobject.Employee"%>
<%@page import="java.util.List"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'good.jsp' starting page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
	cursor: pointer;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
	cursor: pointer;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}

a:link {
	color: #3B6375;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #3B6375;
}

a:hover {
	text-decoration: none;
	color: #3B6375;
}

a:active {
	text-decoration: none;
	color: #3B6375;
}

body,td,th {
	color: #F00;
}
-->
</style>
		<script type="text/javascript">
 
</script>


	</head>
	<body>

		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="6%" height="19" valign="bottom">
														<div align="center">
															<img src="../images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="bottom">
														<span class="STYLE1"> 员工信息列表</span>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<div align="right">
												<span class="STYLE1"> <input type="checkbox"
														name="checkbox11" id="checkbox11" /><a
													href="<%=basePath%>web/EmployeeRegister.jsp" target="home">
														添加</a>  &nbsp;&nbsp;
														<img
														src="/images/add.gif" width="10" height="10" />  &nbsp; <img src="../images/del.gif" width="10"
														height="10" /> &nbsp;&nbsp;<img src="../images/edit.gif"
														width="10" height="10" /> &nbsp;</span><span class="STYLE1">
													&nbsp;</span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>
					<!--  <form action="Servlet/showGoodServlet" method="get">-->
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						bgcolor="#a8c7ce" onMouseOver="changeto
	();
ouseout="changeback()">
						<tr>
							<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10">
								<div align="center">
									<input type="checkbox" name="checkbox" id="checkbox" />
								</div>
							</td>

							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">员工ID</span>
								</div>
							</td>
							<td width="15%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">员工姓名</span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">员工账号</span>
								</div>
							</td>
							<td width="16%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">性别</span>
								</div>
							</td>
							<td width="27%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">电话</span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">基本操作</span>
								</div>
							</td>
						</tr>



						<tr>
							<%
								List<Employee> list = (List<Employee>) request.getAttribute("list");
								if (list == null || list.size() < 1) {
									out.print("没有数据！");
								} else {
									for (Employee p : list) {
							%>

							<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10">
								<div align="center">
									<input type="checkbox" name="checkbox" id="checkbox" />
								</div>
							</td>

							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><%=p.getUserID()%></span>
								</div>
							</td>
							<td width="15%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><%=p.getRealName()%></span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><%=p.getAccount()%></span>
								</div>
							</td>
							<td width="16%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><%=p.getSex()%></span>
								</div>
							</td>
							<td width="27%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><%=p.getPhoneNumber()%></span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><a
										href="<%=basePath%>servlet/ShowEmployeeDetail?employeeid=<%=p.getUserID()%>">查看</a>&nbsp;&nbsp;


										<a
										href="<%=basePath%>servlet/EmployeeDeleteServlet?employeeid=<%=p.getUserID()%>"><b>删除</b>
									</a> </span>
								</div>
							</td>
						</tr>
						<%
							}
							}
						%>

						<tr>
							<td align="center" colspan="5" bgcolor="white">
								<%=request.getAttribute("bar")%>
							</td>
						</tr>
					</table>

				</td>
			</tr>
	</body>
</html>
