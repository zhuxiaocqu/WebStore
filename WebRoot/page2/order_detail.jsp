<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>订单详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<style type="text/css">
body {
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
 <!-- head -->

 <table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
    <td width="182" height="182" valign="top">
    <!-- left -->

    
	</td>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        
        <td width="505" height="33" align="right" valign="middle" ><table width="102%" height="23"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ 顾客您好！购买商品请先登录 <a href="register.html" class="word_green">[新用户注册]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" >&nbsp;</td>
      </tr>
      
      <tr>
        <td  background="images/shop_16.jpg">
		</td>
      </tr>
      
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0" >
        <tr>
          
            <tr>
            <td  height="80" ><img src="images/center_orderdetail.jpg" width="796" height="80"></td>
             
            
              </tr>
             
            <tr valign="top">
              <td height="134" align="center">
<table width="100%" height="272"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="97%" height="220" align="center" valign="top">
              <table border="1" bordercolor="lightgrey" width="790" cellpadding="3" cellspacing="6" rules="none">
    		<tr height="30">
    			<td colspan="2" align="right">
		    		订单号：&nbsp;&nbsp;&nbsp;
    				下单时间：
    			</td>
    		</tr>
    		<tr bgcolor="#F2F3F5"><td colspan="2"><font size="+3"><b>收货人信息</b></font></td></tr>
    		<tr>
    			<td width="25%" style="padding-left:40">收 货 人：</td>
    			<td>填写收货人姓名</td>
    		</tr>
    		<tr>
    			<td style="padding-left:40">详细地址：</td>
    			<td>填写地址</td>
    		</tr>
    		<tr>
    			<td style="padding-left:40">邮政编码：</td>
    			<td>填写邮编</td>
    		</tr>
    		<tr>
    			<td style="padding-left:40">联系电话：</td>
    			<td>填写电话</td>
    		</tr>
    		<tr bgcolor="#F2F3F5"><td colspan="2">送货方式</td></tr>
    		<tr height="50">
    			<td colspan="2" style="padding-left:40">
    				
    					普通快递送货上门，送货时间：
    					不限时间。</br>
    					3天内。</br>
    					1周内。</br>
    					1月内。</br>
                        
    					运费：
    				         普通邮递【运费：30元】</br>
    				          邮政特快专递【运费：40元】</br>
     			</td>  	
    		</tr>
    		<tr bgcolor="#F2F3F5"><td colspan="2">支付方式</td></tr>
    		<tr height="50">
    			<td colspan="2" style="padding-left:40">
    				
    					网上支付，</br>
    					通过 <b>中国工商银行</b> 支付。</br>
    					通过 <b>中国银行</b> 支付。</br>
    					通过 <b>中国农业银行</b> 支付。</br>
    					通过 <b>支付宝支付平台</b>
                        </br> 支付。
                        判断支付方式：
    				货到付款</br>
    				邮政汇款</br>
    				银行转帐</br>
    			</td>
    		</tr>
    		<tr bgcolor="#F2F3F5"><td colspan="2">商品清单</td></tr>
    		<tr>
    			<td colspan="2" align="center">
    				
    				<table border="1" width="99%" rules="none" cellpadding="0" cellspacing="1">
	    				<tr height="40" style="font-size:12">
	    					<th width="10%" align="center">序号</th>
    						<th align="left">商品名称</th>
    						<th align="left" width="15%">价格</th>
    						<th align="left" width="15%">数量</th>
    						<th align="left" width="15%">总计</th>
	    				</tr>
    					
    					<tr>
    						<td align="center">填写序号</td>
    						<td>填写名称</td>
    						<td>填写价格</td>
    						<td>填写数量</td>
    						<td>填写总计</td>
    					</tr>
    					<tr height="2"><td colspan="5"><hr width="98%" color="black"></td></tr>
    					
    					<tr height="50" valign="bottom">
    						<td colspan="5" align="right">
    							商品合计：输出合计值
    							<hr color="black" width="40%" style="border-style:solid">
    						</td>
    					</tr>
    					<tr height="50" valign="top"><td colspan="5" align="right">您需要为该订单支付：填写支付金额（含运费）</td></tr>
    				</table>
    				
    			</td>
    		</tr>
    	</table>    
              
              
              <table width="100%" height="49"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                          <td colspan="3" align="center"><input type="button" name="button" id="button" value="确认订单"style="background-color:#FFCC33;width:90px;height:40px;cursor:pointer"class="btn_grey"onClick="location.href='alipay.jsp'"/></td>
                        </tr>
                  </table></td>
              <td width="3%" valign="top">&nbsp;</td>
            </tr>
          </table>
                </td>
            </tr>
            <tr>
              <td height="38" align="right" background="images/center02.gif"><a href="sale.jsp"><br>
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
