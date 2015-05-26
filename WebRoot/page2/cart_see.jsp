<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>购物车查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<style type="text/css">
.cartFont {
	font-size: 16px;
}
</style>
</head>
<body>
<table width="926"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td width="926" class="tableBorder">
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
                  <td width="9%"><a href="index.html">首页<br>
                    Index</a></td>
                  <td width="2%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="15%"><a href="NewGoods.html">新品上架<br>
                    NewGoods</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="14%"><a href="sale.html">特价商品<br>
                    At a sale</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="14%"><a href="modifyMember.html">会员资料修改<br>
                    Member</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="10%"><a href="cart_see.html">购物车<br>
                    Cart</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="15%"><a href="order.html">查看订单<br>
                    Order</a></td>
                  <td width="1%"><img src="images/shop_09.gif" width="3" height="57"></td>
                  <td width="11%"><a href="SellSort.html">销售排行<br>
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
    <td width="10" height="182" valign="top">
    <!-- left -->
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td height="98" align="center" background="images/shop_17.gif">&nbsp;</td>
      </tr>
    </table>
	<table width="100%" height="151"  border="0" cellpadding="0" cellspacing="0">
	  <tr>
          
        </tr>
    </table>
	</td>
    <td width="780" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/shop_12.gif"></td>
        <td width="505" height="33" align="right" valign="middle" background="images/shop_12.gif"><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ 顾客您好！购买商品请先登录 <a href="register.html" class="word_green">[新用户注册]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" background="images/shop_12.gif">&nbsp;</td>
      </tr>
      <tr>
       
        <td colspan="2" background="images/shop_16.jpg"></td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
            
              <td  height="80" ><img src="images/center_cart.jpg" width="796" height="80"></td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
<table width="100%" height="126"  border="0" cellpadding="0" cellspacing="0">

			    <tr>
                  <td valign="top"><!--垂直对其-->
                  
                  
                  <table width="100%" height="282" border="0" cellpadding="0" cellspacing="0" background="images/car_bk.jpg" rules="none" class="cartFont">
    	<tr height="45"><td colspan="6" background="images/car_t.jpg"></td></tr>
    	<tr height="54">
    		<td height="56" colspan="6" background="images/car_m.jpg" style="padding-left:20">
    			顾客您好，购物车中的商品在您未生成订单之前我们将为您保存3天，3天后将自动清空！	
    		</td>
    	</tr>
    	<tr height="40" style="font-size:12">
    		<th width="10%" align="center">序号</th>
    		<th width="24%" align="center">商品名称</th>
    		<th width="17%" align="center">价格（元）</th>
    		<th width="24%" align="center">数量</th>
    		<th width="15%" align="center">总计</th>
    		<th width="10%" align="center">删除</th>
    	</tr>
    	<!--要判断是否加入购物车？？-->
        <!--
    	<tr height="80"><td colspan="6" align="center">您还没有挑选商品到购物车中。</td></tr>
        -->
    	
    	<!--如果不空，就输出-->
    	<form action="submitshopcar" name="updateform" method="post">
    	
        
    	<tr height="30">
        
    		<td align="center">1</td>
            
    		<td>足球</td>
            
    		<td align="center">120</td>
            
    		<td align="center">
            <input type="text" name="buygoodsnum" value="1" size="6" style="text-align:center;border:1 solid"><br>
            
            <font color="red"></font>
            
            </td>
            
    		<td align="center">120.0</td>
            
            <!--remove?goodsId=${buygoods.id}-->
    		<td align="center"><a href="">删除</a></td>
    	</tr>
    	
    	<input type="hidden" name="goodsprices" value="输入总计">
        
    	<tr height="40">
           <td colspan="6"><hr width="99%" color="black">
            </td>
        </tr>
    	<tr height="20">
          <td colspan="6" style="padding-left:30">
             总金额：<input type="text" name="goodsprices" value="120.0" style="border:0" disabled>元
          </td>
        </tr>
    	<tr height="50" valign="bottom">
    		<td colspan="3" style="padding-left:30">
    			<input type="submit" name="whichsubmit" value="修改数量" >
    			<a href="clearshopcar">清空购物车</a>
    		</td>
    		
    	</tr>
        
    	</form>
    
    	<tr height="40"><td colspan="6" align="right"><a href="javascript:window.history.go(-1)"><b>返回&nbsp;&nbsp;</b></a></td></tr>
    </table>
                  
             </td>
			     </tr>
              </table>
                 </td>
            </tr>
            <tr>
              <td height="147" align="right" background="images/center02.gif"><a href="sale.html"><br>
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
