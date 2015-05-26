<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.webstore.bean.subobject.Product"%>
<%@page import="com.webstore.bean.subobject.Rest"%>
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
		<title>My JSP 'goodNeed.jsp' starting page</title>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
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
-->
</style>

	</head>

	<body>

		<form action="<%=basePath%>servlet/GoodNeedServlet" method="post">
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
														<td width="94%" valign="bottom" class="STYLE1">
															选择仓库 ：
															<label for="select"></label>

															<select name="selectGoodNeed" id="selectGoodNeed">
																<option value="1">
																	成都库房001
																</option>
																<option value="2">
																	重庆库房002
																</option>
																<option value="3" selected>
																	重庆库房003
																</option>
															</select>
															<input type="submit" name="button" id="button" value="提交">

														</td>
													</tr>
												</table>
											</td>
											<td>
												<div align="right">
													<span class="STYLE1"> <input type="checkbox"
															name="checkbox11" id="checkbox11" /> &nbsp;&nbsp;
														</span><span class="STYLE1">
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
						<table width="100%" border="0" cellpadding="0" cellspacing="1"
							bgcolor="#a8c7ce" onmouseover=
	changeto();;;;;;;;;;;;
onmouseout=
	changeback();
>
							<tr>
								<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10">
									<div align="center">
										<input type="checkbox" name="checkbox" id="checkbox" />
									</div>
								</td>
								
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
									<div align="center">
										<span class="STYLE10">库存商品ID</span>
									</div>
								</td>

								<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
									<div align="center">
										<span class="STYLE10">剩余数量</span>
									</div>
								</td>
								<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
									<div align="center">
										<span class="STYLE10">编辑</span>
									</div>
								</td>



							</tr>
							<tr>
								<%
									List<Product> listProduct = (List<Product>) request
											.getAttribute("listNeedProduct");
									List<Rest> listCount = (List<Rest>) request
											.getAttribute("listNeedCount");
											
									if (listProduct == null || listProduct.size() < 1) {
										out.print("没有数据！");
									} else if (listCount == null || listCount.size() < 1) {
										out.print("没有库存");
									} else {
										for (int i = 0; i < listProduct.size(); i++) {
										
										
								%>

								<td height="20" bgcolor="#FFFFFF">
									<div align="center">
										<input type="checkbox" name="checkbox2" id="checkbox2" />
									</div>
								</td>
								<td height="20" bgcolor="#FFFFFF" class="STYLE6">
									<div align="center">
										<span class="STYLE19"><%=listProduct.get(i).getProductID()%></span>
									</div>
								</td>

								<td height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE19"><%=listCount.get(i).getCout()%></span>
									</div>
								</td>
								<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
									<div align="center">
										<span class="STYLE10"><a
											href="<%=basePath%>servlet/EditGoodNeedservlet?goodNeedId=<%=listProduct.get(i).getProductID()%>">查看</a>&nbsp;&nbsp;


											<a
											href="<%=basePath%>servlet/deleteNeedGood?goodNeedId=<%=listProduct.get(i).getProductID()%>"><b>删除</b>
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

			</table>
		</form>

	</body>
</html>
