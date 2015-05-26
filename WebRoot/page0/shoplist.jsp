<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="style/div.css" rel="stylesheet" type="text/css" />
<link href="style/css.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color:#FFF">
	<div id="center-right_01">
              <ul>
            	<li></li>
                <li>
                	<span class="font03" id=“f1”>查看购物车</span>
               	</li>
                <li>
                购物车状态<input type="text" id ="car"/>
                /50
                </li>
                <li>
                商品总价：<input type="money" id ="car"/><input type="submit" value="结算"/>
                </li>
                <li>
                	<div id="menu">
                    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                	  <tr>
                	    <td width="11%" style="text-align:center"><input type="checkbox"/></td>
                	    <td width="24%" style="text-align:center">店铺宝贝</td>
                	    <td width="11%" style="text-align:center">商城积分</td>
                	    <td width="17%" style="text-align:center">单价（元）</td>
                	    <td width="11%" style="text-align:center">数量</td>
                	    <td width="13%" style="text-align:center">优惠</td>
                        <td width="13%" style="text-align:center">小计</td>
              	    </tr>
              	  </table>
                	
                    </div>
                	
                </li>
                
              </ul>  
              <div id="center-right1">
              	<ul>
                	<li>
                	  <table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td height="39">
                          	<div id="box2"><input type="checkbox"/>
                          	  店铺：cattura缇纳旗舰店
                          	<span style="margin-left:100px;">卖家：<a href="http://member1.taobao.com/member/user_profile.jhtml?user_id=354f5e14752451f9ff1f36c14e0a2767" target="_blank">cattura缇纳旗舰店</a></span></div> 
                          </td>
              	      </tr>
              	    </table>
                	  <table id="box3" width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td width="9%" height="90"><input type="checkbox"/></td>
                	      <td width="26%"><table width="87%" border="0" cellspacing="0" cellpadding="0">
                	        <tr><div id="box3">
                	          <td width="38%" height="78"><img src="images/good1.jpg" width="60" height="60" /></td>
                	          <td width="62%">缇纳2013新款手包手拿包</td></div>
              	          </tr>
              	        </table></td>
                	      <td width="11%">45</td>
                	      
                	      <td width="15%">218.00</td>
                	      <td width="13%">1</td>
                	      <td width="13%"><img src="images/1.png" width="47" height="12" /></td>
                	      <td width="13%">218</td>
                 
              	      </tr>
              	    </table>
                    
                    </li>
                    
                    <li>
                	  <table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td height="39">
                          	<div id="box2"><input type="checkbox"/>
                          	  店铺：芭妃服饰旗舰店<span style="margin-left:100px;">卖家：<a href="http://member1.taobao.com/member/user_profile.jhtml?user_id=354f5e14752451f9ff1f36c14e0a2767" target="_blank">芭妃服饰旗舰店</a></span></div> 
                          </td>
              	      </tr>
              	    </table>
                	  <table id="box3" width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td width="9%" height="90"><input type="checkbox"/></td>
                	      <td width="26%"><table width="87%" border="0" cellspacing="0" cellpadding="0">
                	        <tr><div id="box3">
                	          <td width="38%" height="78"><img src="images/2.jpg" width="60" height="60" /></td>
                	          <td width="62%"><p>肌情橄榄油护肤泡沫洗面奶 </p>
               	              </td></div>
              	          </tr>
              	        </table></td>
                	      <td width="11%">23</td>
                	      
                	      <td width="15%">112.00</td>
                	      <td width="13%">2</td>
                	      <td width="13%"><img src="images/1.png" width="47" height="12" /></td>
                	      <td width="13%">112</td>
                 
              	      </tr>
              	    </table>
                    
                    </li>
                    
                   <!-- <li>
                    	<table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td height="30">
                          	<div id="box2">
                          	</div>
                          </td>
              	      </tr>
              	    </table>
                	  <table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                          <div id="box3">
                	      <td height="85">&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                          </div>
              	      </tr>
              	    </table>
                    </li>
                    <li>
                    	<table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td height="30">
                          	<div id="box2">
                          	</div>
                          </td>
              	      </tr>
              	    </table>
                	  <table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                          <div id="box3">
                	      <td height="85">&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                          </div>
              	      </tr>
              	    </table>
                    </li>
                   <li>
                    	<table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                	      <td height="30">
                          	<div id="box2">
                          	</div>
                          </td>
              	      </tr>
              	    </table>
                	  <table width="100%" border="2px" cellspacing="0" cellpadding="0">
                	    <tr>
                          <div id="box3">
                	      <td height="85">&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                	      <td>&nbsp;</td>
                          </div>
              	      </tr>
              	    </table>
                    </li>-->
                   
                </ul>
      </div>
		  </div>
</body>
</html>
