<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>购物车为空</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
 <!-- head -->
<table width="790" height="115"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#CCCCCC" height="6px"></td>
      </tr>
    </table>
      <table width="100%" height="109"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="25%"><img src="images/logo.gif"></td>
          <td width="75%"><table width="100%" height="109"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="52" align="right" valign="top"><table width="100%" height="31"  border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                  <td width="281">&nbsp;</td>
                  <td width="7" valign="top"><img src="images/T_contact.gif" width="42" height="28"></td>
                  <td width="72"><a href="mailto:jiaqi.ji@fendoujiaoyu.com">联系我们</a></td>
                  <td width="10" valign="top"><img src="images/T_favorite.gif" width="42" height="28"></td>
                  <td width="68"><a href="javascript:window.external.AddFavorite('www.fendoujiaoyu.com','电子商城')">收藏本站</a></td>
                  <td width="10" valign="top"><img src="images/T_home.gif" width="42" height="28"></td>
                  <td width="70"><a href="#" onClick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.fendoujiaoyu.com')">设为首页</a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="57" valign="top" background="images/shop_07.gif"><table width="100%" height="53"  border="0" cellpadding="0" cellspacing="0">
                <tr align="center">
                  <td width="9%"><a href="index.jsp">首页<br>
                    Index</a></td>
                  <td width="2%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="15%"><a href="NewGoods.jsp">新品上架<br>
                    NewGoods</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="14%"><a href="sale.jsp">特价商品<br>
                    At a sale</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="14%"><a href="modifyMember.jsp">会员资料修改<br>
                    Member</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="10%"><a href="cart_see.jsp">购物车<br>
                    Cart</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="15%"><a href="order.jsp">查看订单<br>
                    Order</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="11%"><a href="SellSort.jsp">销售排行<br>
                    SellSort</a></td>
                  <td width="2%">&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" height="182" valign="top">
    <!-- left -->
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="83" align="center"><img src="images/shop_11.gif" width="182" height="83"></td>
      </tr>
      <tr>
        <td height="98" align="center" background="images/shop_17.gif">		  <form name="form1" method="post" action="#">
		  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="10%">&nbsp;</td>
              <td width="90%" valign="top" background="Images/index_09.gif">
			  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="94%" height="24">会员名
                    <input name="username" type="text" class="txt_grey" id="username" size="16"></td>
                  <td width="6%">&nbsp;</td>
                </tr>
                <tr>
                  <td height="24">密&nbsp;&nbsp;码
                    <input name="PWD" type="password" class="txt_grey" id="PWD" size="16" onKeydown="if(event.keyCode==13) form1.submit();"></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="31">
                    <input name="Button" type="button" class="btn_grey" value="注册" onClick="window.location.href='register.jsp'">
                    &nbsp;
                    <input name="Submit2" type="button" class="btn_grey" value="登录" onClick="checkU(form1)">                    <input name="Submit3" type="reset" class="btn_grey" value="重置"></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
				</td>
            </tr>
          </table>
		  </form></td>
      </tr>
    </table>
      <table width="100%" height="155"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/shop_22.gif" width="182" height="58"></td>
        </tr>
        <tr>
          <td height="97" align="center" valign="top" class="tableBorder_l"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
          	
			<tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="24" class="tableBorder_T_dashed"><a href="bbs_detail.jsp">电子商城</a></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="100%" height="151"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="40" background="images/shop_33.gif">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" valign="top" class="tableBorder_lb"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
            <tr>
              <td height="20" class="tableBorder_B_dashed"><a href="goods_detail.jsp">电子商城</a></td>
            </tr>
          </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table>
	</td>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/shop_12.gif"></td>
        <td width="505" height="33" align="right" valign="middle" background="images/shop_12.gif"><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ 顾客您好！购买商品请先登录 <a href="register.jsp" class="word_green">[新用户注册]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" background="images/shop_12.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="93" height="50" background="images/shop_15.gif">&nbsp;</td>
        <td colspan="2" background="images/shop_16.gif">
        <!-- search -->
		       <form name="form2" method="post" action="#">
				<table width="100%" height="23"  border="0" cellpadding="0" cellspacing="0">
				<tr>
				  <td colspan="2" height="7"></td>
				  </tr>
				<tr>
				  <td width="85%">请输入查询条件：
					<select name="type" class="textarea">
					  <option value="0" selected>全部分类</option>
					 
					</select>
					<input name="key" type="text" class="txt_grey" size="33">                  </td>
				  <td width="15%"><input name="search" type="submit" class="btn_grey" value="搜索"></td>
				</tr>
				</table>
				</form>
		</td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              
              <td  height="80" ><img src="images/center_empty.gif" width="796" height="80"></td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="24" colspan="2" align="center">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="351" height="38" align="right" class="word_orange">您的购物车为空！</td>
                      <td width="381" rowspan="3" align="right" valign="bottom"><img src="images/cart.gif" width="150" height="186"></td>
                    </tr>
                    <tr>
                      <td height="57" align="right">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="72" align="right"><input name="Button2" type="button" class="btn_grey" value="我要购买商品！" onClick="window.location.href='index.html'"></td>
                    </tr>
                  </table>
                 </td>
            </tr>
            <tr>
              <td height="38" align="right" background="images/center02.gif"><a href="sale.html"><br>
                    <br>
              </a></td>
              </tr>
          </table></td>
          </tr>
      </table></td>
  </tr>
</table>
<table width="790"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="78"  border="0" align="center" cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="5"><div align="center">
          <hr width="100%" size="1">
          </div></td>
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
    </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
