<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>支付宝</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
 <!-- head -->

 <table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
    <td height="182" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        
        <td width="505" height="33" align="right" valign="middle" ><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
            </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ 顾客您好！购买商品请先登录 <a href="register.html" class="word_green">[新用户注册]</a></marquee></td>
            </tr>
          </table></td>
        
        </tr>
      <tr>
        
        
        </tr>
      </table>
     <!--支付宝-->
     
      <form action="" method="post">
    		<table width="700" height="200" border="1" align="center" rules="none" style="margin-top:120">
				 <tr>
				 	<td style="padding-left:100">
				 		订单号：<font color="red">填写订单号</font>，您需要支付：<font color="red">填写订单号</font><br><br>
				 		你选择的是通过中国工商银行进行网上支付，只有在网上支付成功后，我们才会为您发货。<br><br>
				 		请立即支付：<input type="button" name="1" id="1" value="中国工商银行网上支付"style="background-color:#FFCC33;width:120px;height:40px;cursor:pointer"class="btn_grey"/>
				 	</td>
				 </tr>				
    		</table>
   			</form>
        <p></p>
      
     

      
    </td>
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
