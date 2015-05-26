<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.webstore.bean.subobject.OrderProduct"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="/theme/13/style.css">
<script src="/inc/js/ccorrect_btn.js"></script>
<html>
<head>
<title>人事档案</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/inc/js_lang.php"></script>
<script type="text/javascript" src="/inc/js/attach.js"></script>
<style media="print" type="text/css">
.Noprint{display:none;}
.PageNext{page-break-after: always;}
</style>
</head>

<body class="bodycolor print" topmargin="5">

<form action="http://localhost:8080/WebStore/servlet/ShowOrderDetail" method="post">
<% 
			   OrderProduct op=(OrderProduct)session.getAttribute("order"); 

			 %>
<table width="80%" border="1" align="center" bordercolor="#000000" class="TableBlock">
<tr>
  <td colspan="6" nowrap bordercolor="#000000" class="TableHeader"><b>&nbsp;订单基本信息</b></td>
</tr>
<tr>
  <td align="left" nowrap bordercolor="#000000" class="TableContent">商品编号：</td>
  <td width="180" align="left" nowrap bordercolor="#000000" class="TableData" ><label for="account"></label>
    <input type="text" name="productid" id="productid" value=<%= op.getProduct().getProductID() %>></td>
  <td align="left" nowrap bordercolor="#000000" class="TableContent">仓库编号：</td>
  <td colspan="2" bordercolor="#000000" class="TableData"><label for="age"></label>
    <input type="text" name="baseid" id="baseid" value=<%= op.getBase().getID() %>></td>
  <td colspan="2" rowspan="5" align="center" bordercolor="#000000" class="TableData">&nbsp;</td>
</tr>
<tr>
<td align="left" nowrap bordercolor="#000000" class="TableContent">订单状态：</td>
<td align="left" nowrap bordercolor="#000000" class="TableData" ><label for="password"></label>
  <input type="text" name="orderstate" id="orderstate" value=<%= op.getOrderState() %>></td>
<td align="left" nowrap bordercolor="#000000" class="TableContent">用户编号：</td>
<td colspan="2" bordercolor="#000000" class="TableData"><label for="phonenumber"></label>
  <input type="text" name="userid" id="userid" value=<%= op.getUser().getUserID() %>></td>
</tr>
<tr>
<td align="left" nowrap bordercolor="#000000" class="TableContent">购买时间：</td>
<td bordercolor="#000000" class="TableData" ><label for="realname"></label>
  <input type="text" name="buytime" id="buytime" value=<%= op.getBuyTime() %>></td>
<td align="left" nowrap bordercolor="#000000" class="TableContent">送货员编号：</td>
<td colspan="2" bordercolor="#000000" class="TableData"><label for="address"></label>
  <input type="text" name="deliverid" id="deliverid" value=<%= op.getDeliver().getID() %>></td>
</tr>
<tr>
<td align="left" nowrap bordercolor="#000000" class="TableContent">付款时间：</td>
<td bordercolor="#000000" class="TableData"><label for="email"></label>
  <input type="text" name="paytime" id="paytime" value=<%= op.getPayTime() %>></td>
<td align="left" nowrap bordercolor="#000000" class="TableContent">&nbsp;</td>
<td colspan="2" bordercolor="#000000" class="TableData"><label for="sex"></label></td>
</tr>
<tr>
<td align="left" nowrap bordercolor="#000000" class="TableContent">数量：</td>
<td bordercolor="#000000" class="TableData" ><label for="managerid"></label>
  <input type="text" name="count" id="count" value=<%= op.getCount() %>></td>
<td align="left" nowrap bordercolor="#000000" class="TableContent">&nbsp;</td>
<td colspan="2" bordercolor="#000000" class="TableData"><label for="birthdate"></label></td>
</tr>
<tr>
<td align="left" nowrap bordercolor="#000000" class="TableContent">送货地址：</td>
<td colspan="5" bordercolor="#000000" class="TableData" ><label for="aboutme"></label>
  <textarea name="daddress" id="daddress" cols="45" rows="5"><%=op.getAddress() %></textarea></td>
</tr>
<tr>
  <td colspan="6" align="center" nowrap bordercolor="#000000" class="TableData" style="vertical-align:top;"><input type="submit" name="update" id="update" value="提交"></td>
  
</tr>
</table>
<OBJECT classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height=0 id=WebBrowser name=WebBrowser width=0></OBJECT>

<br>
<br>

<center></center>
<script language="javascript">
function print_view()
{
if(self.frames.name!="")
{
var url=self.location.href;
window.open(url,"","toolbar=no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");
}
else
{
window.document.all.WebBrowser.ExecWB(7,1);
}
}
function open_pic(AVATAR)
{
url=AVATAR;
window.open(url,"的头像","toolbar=0,status=0,menubar=0,scrollbars=yes,resizable=1")
}
</script>


</form>
</body>
</html>

