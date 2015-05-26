<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>订单</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<!--<link rel="stylesheet" href="CSS/get1.css" />

<link href="CSS/get2.css" type="text/css" rel="stylesheet" />-->
<link href="CSS/style.css" rel="stylesheet">

</head>
<body>
<table width="863"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td width="863" class="tableBorder">
 <!-- head -->

 <table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
    <td width="182" height="182" valign="top">
    <!-- left --></td>
    
    
    <td valign="top">
    <table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        
        <td width="505" height="33" align="right" valign="middle" >
        <table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ 顾客您好！购买商品请先登录 <a href="register.html" class="word_green">[新用户注册]</a></marquee></td>
          </tr>
        </table></td>
       
      </tr>
      <tr>
        
        <td colspan="2" background="images/shop_16.gif"></td>
      </tr>
    </table>
      <table border="0" cellpadding="0" cellspacing="0">
			
			<tr height="54"><td background="" style="padding-left:15;padding-top:20" ><font size="+3"><b>填写订单信息</b></font></td></tr>
		</table>
        
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
          
          		
   
  <table border="1" bordercolor="#F2F3F5" width="790" cellpadding="3" cellspacing="0" rules="none">
    <tr height="25" bgcolor="#F2F3F5">
    
    
      <td colspan="3">收货人信息:</td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td width="20%">收 货 人：</td>
                
    			<td colspan="2"><input type="text" name="getter" size="30" onpropertychange="">&nbsp;<b><span id="gettermessage" style="color:red"></span></b></td>
    		</tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td>详细地址：</td>
    			<td colspan="2"><input type="text" name="address" size="60" onpropertychange="">&nbsp;<b><span id="addressmessage" style="color:red"></span></b></td>
    		</tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td>邮政编码：</td>
    			<td colspan="2"><input type="text" name="postalcode" size="30" onpropertychange="">&nbsp;<b><span id="postalcodemessage" style="color:red"></span></b></td>
    		</tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td>移动电话：</td>
    			<td><input type="text" name="telephone1" size="20" onpropertychange=""></td>
    			<td>固定电话：<input type="text" name="telephone2" size="20" onpropertychange=""> (如:0431-1234560)</td>
    		</tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr><td colspan="3"><b><span id="linkphonemessage" style="color:red"></span></b></td></tr>
            
     
      
            
    		<tr bgcolor="#F2F3F5"><td colspan="3">送货方式&nbsp;<b><span id="shipmentmessage" style="color:red"></span></b></td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td><input type="radio" id="shipment1" name="shipment" value="1" onClick="">普通快递送货上门</td>
    			<td colspan="2" style="text-indent:20">
    				<div id="shipmenttimes" style="display:'none'">
    				送货时间：
    				<select name="shipmenttime" onChange="">
    					<option value="">-请选择时间-</option>
    					<option value="1">不限时间</option>
    					<option value="2">3天内</option>
    					<option value="3">1周内</option>
    					<option value="4">1月内</option>    					
    				</select>
    				(支持货到付款)【运费：20元】
    				</div>
    			</td>
    		</tr>
            
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
            
    		<tr bgcolor="white"><td colspan="3"><input type="radio" id="shipment2" name="shipment" value="2" onClick="">普通邮递(不支持货到付款)【运费：30元】</td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
            
    		<tr bgcolor="white"><td colspan="3"><input type="radio" id="shipment3" name="shipment" value="3" onClick="">邮政特快专递(不支持货到付款)【运费：40元】</td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr><tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="#F2F3F5"><td colspan="3">支付方式&nbsp;<b><span id="paymentmessage" style="color:red"></span></b></td></tr>
            <tr>&nbsp;
            <td width="20%">&nbsp;</td></tr>
    		<tr bgcolor="white">
    			<td colspan="3">
    				<input type="radio" id="payment1" name="payment" value="1" onClick="">网上支付<br>
    				<div id="networkpayments" style="padding-left:30;display:">
    				<input type="radio" id="networkpayment1" name="networkpayment" value="1" onClick="">
    				<img src="images/zgyh.JPG" width="127" height="26"><br>
    				<input type="radio" id="networkpayment2" name="networkpayment" value="2" onClick="">
    				<img src="images/zghsyh.JPG" width="127" height="24"><br>
    				<input type="radio" id="networkpayment3" name="networkpayment" value="3" onClick="">
    				<img src="images/zgnyyh.JPG" width="127" height="24"> <br>
    				<input type="radio" id="networkpayment4" name="networkpayment" value="4" onClick="">
    				<img src="images/zfb.JPG" width="127" height="30"> <br>
    				</div>
    			</td>
    		</tr>
    		<tr bgcolor="white"><td colspan="3"><input type="radio" id="payment2" name="payment" value="2" onClick="">货到付款</td></tr>
    		<tr bgcolor="white"><td colspan="3"><input type="radio" id="payment3" name="payment" value="3" onClick="">邮政汇款</td></tr>
    		<tr bgcolor="white"><td colspan="3"><input type="radio" id="payment4" name="payment" value="4" onClick="">银行转帐</td></tr>
    		<tr><td colspan="3" align="center"><input type="button" name="button" id="button" value="生成订单"style="background-color:#FFCC33;width:90px;height:40px;cursor:hand"class="btn_grey"onClick="location.href='order_detail.jsp'"/></td></tr>
  	</table>
  
  
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
