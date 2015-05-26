<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>电子商城</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="CSS/style.css" rel="stylesheet">
		<script language='JavaScript' src='js/menutree.js'></script>
	    <style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {font-size: 12px}
.STYLE4 {color: #000000}
.STYLE8 {font-size: 14px}
-->
        </style>
</head>
	<body>
		<table width="833" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td width="833" class="tableBorder">
					<!--header -->
					<table width="790" height="74" border="0" align="center"
						cellpadding="0" cellspacing="0">
						<tr>
							<td valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td bgcolor="#CCCCCC" height="6px"></td>
									</tr>
								</table>
								<table width="100%" height="68" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="25%"><img src="images/logo.gif"></td>
									  <td width="75%"><table width="100%" height="65" border="0" cellpadding="0"
												cellspacing="0">
                                        <tr>
                                          <td height="52" align="right" valign="top"><table width="100%" height="31" border="0" cellpadding="0"
															cellspacing="0">
                                              <tr align="center">
                                                <td width="281">&nbsp;</td>
                                                <td width="7" valign="top"><img src="images/T_contact.gif" width="42" height="28"> </td>
                                                <td width="72"><a href="mailto:jiaqi.ji@fendoujiaoyu.com">联系我们</a> </td>
                                                <td width="10" valign="top"><img src="images/T_favorite.gif" width="42" height="28"> </td>
                                                <td width="68"><a
																		href="javascript:window.external.AddFavorite('www.fendoujiaoyu.com','电子商城')">收藏本站</a> </td>
                                                <td width="10" valign="top"><img src="images/T_home.gif" width="42" height="28"> </td>
                                                <td width="70"><a href="#"
																		onClick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.fendoujiaoyu.com')">设为首页</a> </td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                       
                                      </table></td>
									</tr>
							  </table>
							</td>
						</tr>
				  </table>
					<table width="100%" height="53" border="0" cellpadding="0"
															cellspacing="0">
                      <tr align="center">
                        <td width="9%" bgcolor="#FFFFFF"><a href="index.html">首页<br>
                        Index</a> </td>
                        <td width="2%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="15%" bgcolor="#FFFFFF"><a href="NewGoods.html">新品上架<br>
                        NewGoods</a> </td>
                        <td width="1%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="14%" bgcolor="#FFFFFF"><a href="sale.html">特价商品<br>
                        At a sale</a> </td>
                        <td width="1%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="14%" bgcolor="#FFFFFF"><a href="modifyMember.html">会员资料修改<br>
                        Member</a> </td>
                        <td width="1%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="10%" bgcolor="#FFFFFF"><a href="cart_see.html">购物车<br>
                        Cart</a> </td>
                        <td width="1%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="15%" bgcolor="#FFFFFF"><a href="order.html">查看订单<br>
                        Order</a> </td>
                        <td width="1%" bgcolor="#FFFFFF"><img src="images/shop_09.gif" width="3" height="57"> </td>
                        <td width="11%" bgcolor="#FFFFFF"><a href="SellSort.html">销售排行<br>
                        SellSort</a> </td>
                        <td width="2%" bgcolor="#FFFFFF">&nbsp;</td>
                      </tr>
                    </table>
					<table width="790" height="236" border="0" align="center"
						cellpadding="0" cellspacing="0">
						<tr>
							<td width="182" height="182" valign="top">
								<!-- left -->
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="83" align="center">
											<img src="images/shop_11.gif" width="182" height="83">
										</td>
									</tr>
									<tr>
										<td height="98" align="center" background="images/shop_17.gif">
											<form name="form1" method="post" action="Login_U.html">
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td width="10%">&nbsp;
															
														</td>
														<td width="90%" valign="top"
															background="Images/index_09.gif">
															<table width="100%" border="0" cellpadding="0"
																cellspacing="0">
																<tr>
																	<td width="94%" height="24">
																		会员名
																		<input name="username" type="text" class="txt_grey"
																			id="username" size="16">
																	</td>
																	<td width="6%">&nbsp;
																		
																	</td>
																</tr>
																<tr>
																	<td height="24">
																		密&nbsp;&nbsp;码
																		<input name="PWD" type="password" class="txt_grey"
																			id="PWD" size="16"
																			onKeydown="if(event.keyCode==13) form1.submit();">
																	</td>
																	<td>&nbsp;
																		
																	</td>
																</tr>
																<tr>
																	<td height="31">
																		<input name="Button" type="button" class="btn_grey"
																			value="注册"
																			onClick="window.location.href='register.html'">
																		&nbsp;
																		<input name="Submit2" type="button" class="btn_grey"
																			value="登录" onClick="checkU(form1)">
																		<input name="Submit3" type="reset" class="btn_grey"
																			value="重置">
																	</td>
																	<td>&nbsp;
																		
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>
								</table>
								<table width="100%" height="155" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td>
											<img src="images/shop_22.gif" width="182" height="58">
										</td>
									</tr>
									<tr>
										<td height="97" align="center" valign="top"
											class="tableBorder_l">
											<table width="99%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC">

												<tr>
													<td width="39%" height="75" rowspan="4" class="tableBorder_T_dashed"><div align="center"><img src="images/c7d113e5-9807-439d-8397-78aa4426ea6e.gif" width="50" height="50"></div></td>
												    <td width="61%" height="24" class="word_orange word_white STYLE2 tableBorder_T_dashed"><a href="#">高校鼓励学生开网店</a></td>
												</tr>
												<tr>
												  <td height="23" class="word_white STYLE2 tableBorder_T_dashed STYLE4"><a href="#">六一儿童节必逛店铺</a></td>
											  </tr>
												<tr>
												  <td height="22" class="word_white STYLE2 tableBorder_T_dashed STYLE4"><a href="#">19款超显瘦雪纺裙</a></td>
											  </tr>
												<tr>
												  <td height="23" class="word_white STYLE2 tableBorder_T_dashed STYLE4"><a href="#">想做高手学卖家秘籍</a></td>
											  </tr>
											</table>
										</td>
									</tr>
								</table>
								<table width="100%" height="377" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="40" bgcolor="#FFFFFF"><img src="images/help_gwzn.gif"></td>
									</tr>
									<tr>
										<td height="337" align="center" valign="top" class="tableBorder_lb">
											<table width="88%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td class="tableBorder_B_dashed"><div align="center"><a href="#"><img src="images/new_member.png" ></a></div></td>
												</tr>
												<tr>
												  <td class="tableBorder_B_dashed"><div align="center"><a href="#"><img src="images/reg.png" ></a></div></td>
											  </tr>
												<tr>
												  <td class="tableBorder_B_dashed"><div align="center"><a href="#"><img src="images/free_join.png" ></a></div></td>
											  </tr>
												<tr>
												  <td class="tableBorder_B_dashed"><div align="center"><a href="#"><img src="images/join_mall.png" ></a></div></td>
											  </tr>
											</table>
											<table height="219" border="0"
												cellpadding="0" cellspacing="0">
												<tr>
													<td colspan="2"><div align="center" class="STYLE8"><img src="images/list.gif" width="11" height="13">友情连接</div></td>
												</tr>
												<tr>
												  <td><img src="images/Button_pp_dpd.jpg" width="88" height="31"></td>
											      <td><img src="images/Button_pp_DLINK.jpg" width="88" height="31"></td>
											  </tr>
												<tr>
												  <td><img src="images/Button_pp_apple.jpg" width="88" height="31"></td>
											      <td><img src="images/Button_pp_netac.jpg" width="88" height="31"></td>
											  </tr>
												<tr>
												  <td><img src="images/Button_pp_sandisk.jpg" width="88" height="31"></td>
											      <td><img src="images/Button_pp_onondo.jpg" width="88" height="31"></td>
											  </tr>
												<tr>
												  <td><img src="images/Button_pp_joyoung.jpg" width="88" height="31"></td>
											      <td><img src="images/Button_pp_amd.jpg" width="88" height="31"></td>
											  </tr>
												<tr>
												  <td><img src="images/Button_pp_verbatim.jpg" width="88" height="31"></td>
											      <td><img src="images/Button_pp_cre.jpg" width="88" height="31"></td>
											  </tr>
											</table>
									  </td>
									</tr>
							  </table>
							</td>
							<td valign="top">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="33" background="images/shop_12.gif"></td>
										<td width="505" height="33" align="right" valign="middle"
											background="images/shop_12.gif">
											<table width="100%" height="24" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="8"></td>
												</tr>
												<tr>
													<td align="right" class="word_green">
														<marquee direction="left" scrollamount="1" scrolldelay="1"
															onMouseOver="this.stop();" onMouseOut="this.start();">
															您好，欢迎您来到京东商城！您是新用户？<a href="register.html" class="word_green">[免费注册]</a>
															
														</marquee>
													</td>
												</tr>
											</table>
										</td>
										<td width="10" background="images/shop_12.gif">&nbsp;
											
										</td>
									</tr>
									<tr>
										<td width="93" height="50" background="images/shop_15.gif">&nbsp;
											
										</td>
										<td colspan="2" background="images/shop_16.gif">
											<!-- search -->
											<form name="form2" method="post" action="search_deal.html">
												<table width="100%" height="23" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td colspan="2" height="7"></td>
													</tr>
													<tr>
														<td width="85%">
															请输入查询条件：
															<select name="type" class="textarea">
																<option value="0" selected>
																	全部分类
																</option>

															</select>
															<input name="key" type="text" class="txt_grey" size="33">
														</td>
														<td width="15%">
															<input name="search" type="submit" class="btn_grey"
																value="搜索">
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>
								</table>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="69%" height="189" valign="top">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td height="40" colspan="2"><div align="center"><img src="images/T1.0piXcBchdNMoUfr-360-190.gif" >													      													</div></td>
												</tr>
												<tr>
												  <td height="40" colspan="2"><img src="images/shop_18a.gif"></td>
											  </tr>
												<tr align="center" valign="top">
													<td height="134" colspan="2">
														<table width="100%" height="162" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td width="49%" height="162" valign="top">

																	<table width="100%" border="0" cellpadding="0"
																		cellspacing="0">
																		<tr>
																			<td height="95" align="center">
																				<img
																					src="images/goods/ebbb4308-679c-45d1-a5c1-f2b3af595051.jpg"
																					>																			</td>
																		</tr>
																		<tr>
																			<td height="22" align="center">
																				<a href="goods_detail.html%>">华硕（ASUS）X82H585S-SL</a>																			</td>
																		</tr>
																		<tr>
																			<td height="20" align="center"
																				style="text-decoration: line-through; color: #FF0000">
																				京东原价：￥4399.00																		</td>
																		</tr>
																		<tr>
																			<td height="20" align="center">
																				京东现价：￥3933.00																			</td>
																		</tr>
																		<tr>
																			<td height="22" align="center">
																				<input name="see" type="button" class="btn_grey"
																					onClick="window.location.href='goods_detail.html'"
																					value="详细信息">
																				&nbsp;
																				<input name="see" type="button" class="btn_grey"
																					onClick="window.location.href='cart_see.html'"
																					value="购买">																			</td>
																		</tr>
																	</table>																</td>
																<td width="2%" align="center" valign="top">
																	<table width="3" height="160" border="0"
																		cellpadding="0" cellspacing="0"
																		background="images/point.gif">
																		<tr>
																			<td></td>
																		</tr>
																	</table>																</td>
																<td width="49%" valign="top">
																	<table width="100%" border="0" cellpadding="0"
																		cellspacing="0">
																		<tr>
																			<td height="95" align="center">
																				<img src="images/goods/19cc4bdc-239f-4f76-9325-dc156a1b7a8c.jpg" >																			</td>
																		</tr>
																		<tr>
																			<td height="22" align="center">
																				<a href="goods_detail.html%>">佳能EOS</a>																			</td>
																		</tr>
																		<tr>
																			<td height="20" align="center"
																				style="text-decoration: line-through; color: #FF0000">
																				京东原价：￥5499.00																			</td>
																		</tr>
																		<tr>
																			<td height="20" align="center">
																				京东现价：￥4699.00																			</td>
																		</tr>
																		<tr>
																			<td height="22" align="center">
																				<input name="see" type="button" class="btn_grey"
																		onClick="location.href='goods_detail.html';"
																		value="详细信息">
																	&nbsp;
																	<input name="see" type="button" class="btn_grey"
																		onClick="window.location.href='cart_see.html'"
																		value="购买">																			</td>
																		</tr>
																	</table>																</td>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td width="98%" height="42" align="right"
														background="images/shop_24.gif">
														<a href="sale.html"><img src="images/MORE.GIF"
																width="50" height="20" border="0">														</a><a href="sale.html"><br> <br> </a>													</td>
													<td width="2%" height="42" background="images/shop_25.gif">&nbsp;													</td>
												</tr>
											</table>
											<table width="100%" height="76" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="361" background="images/shop_28.gif">&nbsp;
														
													</td>
													<td width="46" height="35" background="images/shop_29.gif">&nbsp;
														
													</td>
												</tr>
												<tr>
													<td colspan="2">

														<table width="100%" height="79" border="0" cellpadding="0"
															cellspacing="0" class="tableBorder_B_dashed">
															<tr>
																<td width="33%" height="95" rowspan="4" align="center">
																	<img
																		src="images/goods/15cb8d1f-6f65-4ff1-835e-801afeef507f.jpg"
																		>																</td>
																<td width="67%">
																	美的（Midea）欧式抽油烟机																</td>
															</tr>
															<tr>
																<td>
																	京东价：￥1255.00																</td>
															</tr>
															<tr>
															  <td>
																	简介：CXW-200-DT17S+嵌入式燃气灶JZ(12T)2-Q632<br>
																	<span class="STYLE1">限量抢购100套																</span></td>
															</tr>
															<tr>
																<td>
																	<input name="see" type="button" class="btn_grey"
																		onClick="location.href='goods_detail.html';"
																		value="详细信息">
																&nbsp;
																<input name="see2" type="button" class="btn_grey"
																		onClick="window.location.href='cart_see.html'"
																		value="购买"></td>
															</tr>
														</table>
												  <table width="100%" height="30" border="0" cellpadding="0"
															cellspacing="0">
															<tr>
																<td width="98%" align="right">
																	<a href="NewGoods.html"><img src="images/MORE.GIF"
																			width="50" height="20" border="0">
																	</a>
																</td>
																<td width="2%">&nbsp;
																	
																</td>
															</tr>
													  </table>
													</td>
												</tr>
											</table>
										</td>
										<td width="31%" valign="top">
											<!-- right -->
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td>
														<img src="images/shop_20.gif" width="201" height="80">
													</td>
												</tr>
												<tr>
													<td height="90" valign="top">
														<table width="100%" height="40" border="0" cellpadding="0"
															cellspacing="0">
															<!--DWLayoutTable-->
															<tr>
																<td width="29" height="90" valign="top"><!--DWLayoutEmptyCell-->&nbsp;
																	
																	
																</td>
																<td width="172" valign="top">

																	<script language='JavaScript'>
			
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		
																		addtree('<B>电子</B>');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		addtree('-电子1','');
																		createtree();
																 </script>
																</td>
														</table>
													</td>
												</tr>
												<tr>
													<td height="30" valign="bottom">
														<img src="images/shop_31.gif" width="201" height="30">
													</td>
												</tr>
											</table>
											<table width="100%" height="281" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="35" align="center">
														<img src="images/T1smVhXerOddOKKqDm-70-70.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/T15W8iXc5YfJOKKqDm-70-70.jpg">													</td>
												</tr>
												<tr>
												  <td height="13" align="center">&nbsp;</td>
											  </tr>
												<tr>
													<td height="35" align="center">
														<img src="images/T13EFhXautedOKKqDm-70-70.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/T1SWRiXaYqftOKKqDm-70-70.jpg">													</td>
												</tr>
												<tr>
												  <td height="13" align="center">&nbsp;</td>
											  </tr>
												<tr>
													<td height="70" align="center">
														<img src="images/T1QqRiXlDGftOKKqDm-70-70.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/T1bY0iXd5FgdOKKqDm-70-70.jpg">												</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="790" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<!-- bottom -->
								<table width="100%" height="78" border="0" align="center"
									cellpadding="-2" cellspacing="-2">
									<tr>
										<td height="13" colspan="5">
											<div align="center">
												<a href="manage/Login_M.html"><hr width="100%" size="1">
												</a>											</div>										</td>
									</tr>
									<tr>
        <td width="124" height="13">&nbsp;</td>
        <td height="13" colspan="3" align="center">客户服务热线：XXXXXXX，XXXXXXX 传真：XXXXXXXX</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2013 2013 www.shopping.com</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        
     
        <td colspan="2">&nbsp;</td>
      </tr>
									<tr bgcolor="#cccccc">
										<td height="8" colspan="2"></td>
										<td height="8" align="center"></td>
										<td height="8" colspan="2"></td>
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
