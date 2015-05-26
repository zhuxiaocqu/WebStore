<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>中国工商</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
<style type="text/css">
.payed {
	font-size: 16px;
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
        <td width="10" >&nbsp;</td>
        </tr>
      <tr>
        
        <td colspan="2" background="images/shop_16.gif"></td>
        </tr>
      </table>
      <!--支付宝-->
      
      <form action="" method="post">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="40" colspan="4">&nbsp;</td>
            </tr>
          <tr>
            <td width="17%" align="right" class="payed">付款方式：</td>
            <td width="31%"><img src="images/zghsyh.JPG" width="190" height="39"></td>
            <td width="26%">储蓄卡  <img src="images/kjfs.JPG" width="86" height="28"></td>
            <td width="26%" class="payed">支付：</td>
            </tr>
          <tr>
            <td colspan="4"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2">&nbsp;</td>
                </tr>
              <tr>
                <td width="19%" height="30" align="right" class="payed">姓名：</td>
                <td width="85%"><label for="textfield"></label>
                  <input name="textfield" type="text" class="payed" id="textfield"></td>
                </tr>
              </table></td>
            </tr>
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
          <tr>
            <td width="19%" align="right" class="payed">证件：</td>
            <td width="85%" class="payed"><label for="select"></label>
              <select  name="select" id="select" onChange="">
                <option value="">身份证</option>
                
                </select>
              
              </select>
              <label for="textfield2"></label>
              <input type="text" name="textfield2" id="textfield2"></td>
            </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
          <tr>
            <td width="19%" align="right" class="payed">储蓄卡号：</td>
            <td width="85%" class="payed"><label for="textfield3"></label>
              <input type="text" name="textfield3" id="textfield3"></td>
            </tr>
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="30" colspan="2">&nbsp;</td>
            </tr>
          <tr>
            <td width="19%" align="right" class="payed">手机号码：</td>
            <td width="85%" class="payed"><label for="textfield4"></label>
              <input type="text" name="textfield4" id="textfield4"></td>
            </tr>
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" colspan="4">&nbsp;</td>
            </tr>
          <tr>
            <td width="18%" height="20" colspan="0" align="right" class="payed">付款校验码：</td>
            <td width="82%"><label for="textfield5"></label>
              <input type="text" name="textfield5" id="textfield5">
              <input type="submit" name="button" id="button" value="免费获取"></td>
            </tr>
          
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" colspan="3">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
            </tr>
          <tr>
            <td width="15%">&nbsp;</td>
            <td width="57%"><input type="checkbox" name="checkbox" id="checkbox">
              <LABEL for="J-paymentArgreement">开通快捷支付，下次可凭支付宝支付密码快速付款。</LABEL>
  <label for="checkbox"></label></td>
            <td width="28%">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
            </tr>
          </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center"><a href="https://www.alipay.com/"><img src="images/sure.JPG" width="139" height="30"></td>
            </tr>
          <tr>
            <td height="20" align="center">《<A href="https://katongweb.alipay.com/express/onlineExpressPaymentAgreement.htm?bankCardType=D&instId=ICBC&signChannel=YZ" seed="link-agreement-fast-ICBC" storeTargetId="1378179153410">支付宝快捷支付服务协议</A>》</td>
            </tr>
          </table>
        </form>
      
      
      
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
