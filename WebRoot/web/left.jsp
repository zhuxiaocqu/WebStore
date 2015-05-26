<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'left.jsp' starting page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE3 {
	font-size: 12px;
	color: #435255;
}

.STYLE4 {
	font-size: 12px;
	cursor: pointer;
}

.STYLE5 {
	font-size: 12px;
	font-weight: bold;
	cursor: pointer;
}

a:link {
	text-decoration: none;
	color: #000000;
}

a:visited {
	text-decoration: none;
	color: #000000;
}

a:hover {
	text-decoration: none;
	color: #000000;
}

a:active {
	text-decoration: none;
	color: #000000;
}
-->
		</style>

		<script type="text/javascript">
     function showOrhiddenMenu(id){
	      var node = document.getElementById(id);
		  if(node.style.display==""){
		      node.style.display="none";
		  }else{
		      node.style.display="";
		  }
 	 }
 	 
 	
</script>

		<base href="<%=basePath%>">
	</head>

	<body>


		<div align="center">
			<table width="147" height="10%" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td height="23" background="images/main_34.gif">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="9%">&nbsp;
									
								</td>
								<td width="83%">
									<div align="center" class="STYLE4"
										onClick="showOrhiddenMenu('0001')">
										人员管理
									</div>
								</td>
								<td width="8%">&nbsp;
									
								</td>
							</tr>

						</table>
					</td>
				</tr>



				<tr>
					<tr id="0001">

						<td height="76" valign="top">
							<div align="center">
								<table width="82%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="38">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="33" height="28">
														<img src="images/main_40.gif" width="28" height="28">
													</td>
													<td width="99">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" class="STYLE4" style="cursor: hand"
																	onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																	<a href="<%=basePath%>servlet/ShowEmployeeServlet"
																		target="home">工作人员管理</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>


									<tr>
										<td height="38">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="33" height="28">
														<img src="images/main_50.gif" width="28" height="28">
													</td>
													<td width="99">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" class="STYLE4" style="cursor: hand"
																	onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																	<a href="<%=basePath%>servlet/showuser" target="home">注册用户管理</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>


								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td height="23" background="images/main_34_1.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="9%">&nbsp;
										
									</td>
									<td width="83%">
										<div align="center" class="STYLE4"
											onClick="showOrhiddenMenu('0002')">
											商品管理
										</div>
									</td>
									<td width="8%">&nbsp;
										
									</td>
								</tr>
							</table>
						</td>
					</tr>





					<tr>
						<tr id="0002">

							<td height="38" valign="top">
								<div align="center">



									<table width="82%" border="0" align="center" cellpadding="0"
										cellspacing="0">


										<tr>
											<td height="38">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">



													<tr>
														<td width="33" height="28">
															<img src="images/main_40.gif" width="28" height="28">
														</td>
														<td width="99">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">




																<tr>
																	<td height="23" class="STYLE4" style="cursor: hand"
																		onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																		onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																		<a href="<%=basePath%>servlet/ShowGoodServlet"
																			target="home">商品管理</a>

																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>


									</table>
								</div>
							</td>
						</tr>





						<tr>
							<td height="23" background="images/main_34_1.gif">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="9%">&nbsp;
											
										</td>
										<td width="83%">
											<div align="center" class="STYLE4"
												onClick="showOrhiddenMenu('0003')">
												配送管理
											</div>
										</td>
										<td width="8%">&nbsp;
											
										</td>
									</tr>
								</table>
							</td>
						</tr>


						<tr>
							<tr id="0003">

								<td height="38" valign="top">
									<div align="center">



										<table width="82%" border="0" align="center" cellpadding="0"
											cellspacing="0">


											<tr>
												<td height="38">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">



														<tr>
															<td width="33" height="28">
																<img src="images/main_40.gif" width="28" height="28">
															</td>
															<td width="99">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">



																	<tr>
																		<td height="23" class="STYLE4" style="cursor: hand"
																			onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																			onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																			<a href="<%=basePath%>servlet/deliverShow"
																				target="home">物流公司管理</a>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>


											<tr>
											</tr>
										</table>
									</div>
								</td>
							</tr>




							<tr>
								<td height="23" background="images/main_34_1.gif">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="9%">&nbsp;
												
											</td>
											<td width="83%">
												<div align="center" class="STYLE4"
													onClick="showOrhiddenMenu('0005')">
													库房管理
												</div>
											</td>
											<td width="8%">&nbsp;
												
											</td>
										</tr>
									</table>
								</td>
							</tr>


							<tr>
								<tr id="0005">

									<td height="76" valign="top">
										<div align="center">



											<table width="82%" border="0" align="center" cellpadding="0"
												cellspacing="0">


												<tr>
													<td height="38">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">



															<tr>
																<td width="33" height="28">
																	<img src="images/main_40.gif" width="28" height="28">
																</td>
																<td width="99">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">



																		<tr>
																			<td height="23" class="STYLE4" style="cursor: hand"
																				onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																				onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																				<a href="<%=basePath%>servlet/GoodNeedServlet"
																					target="home">缺货信息管理</a>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>


												<tr>
													<td height="38">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="33" height="28">
																	<img src="images/main_50.gif" width="28" height="28">
																</td>
																<td width="99">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td height="23" class="STYLE4" style="cursor: hand"
																				onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																				onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																				<a href="<%=basePath%>servlet/RestServlet"
																					target="home">库存商品管理</a>

																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>

												<tr>
												</tr>
											</table>
										</div>
									</td>
								</tr>







								<tr>
									<td height="23" background="images/main_34_1.gif">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="9%">&nbsp;
													
												</td>
												<td width="83%">
													<div align="center" class="STYLE4"
														onClick=showOrhiddenMenu('0007');
>
														订单管理
													</div>
												</td>
												<td width="8%">&nbsp;
													
												</td>
											</tr>
										</table>
									</td>
								</tr>


								<tr>
									<tr id="0007">

										<td height="38" valign="top">
											<div align="center">



												<table width="82%" border="0" align="center" cellpadding="0"
													cellspacing="0">


													<tr>
														<td height="38">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">



																<tr>
																	<td width="33" height="28">
																		<img src="images/main_40.gif" width="28" height="28">
																	</td>
																	<td width="99">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">



																			<tr>
																				<td height="23" class="STYLE4" style="cursor: hand"
																					onMouseOver=this.style.backgroundImage
																					= 'url(images/tab_bg.gif)';
	this.style.borderStyle='solid'
																					;
	this.style.borderWidth='1'
																					;
	borderColor='#adb9c2'
																					;;
onmouseout=this.style.backgroundImage
																					= 'url()';
	this.style.borderStyle='none';
>
																					<a href="<%=basePath%>servlet/ShowOrderServlet"
																						target="home">订单管理</a>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</div>
										
									</tr>
			</table>
		</div>
	</body>
</html>
