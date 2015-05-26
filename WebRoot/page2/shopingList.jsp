<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="style/css.css" rel="stylesheet" type="text/css" />
<link href="style/div.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
     function ShowMenu(id)
	 {
	      var node = document.getElementById(id);
		  if(node.style.display==""){
		      node.style.display="none";
		  }else{
		      node.style.display="";
		  }
 	 }
	 
	 function HideMenu(id)
	 {
		 var node = document.getElementById(id);
		 if(node.style.display=="")
		 {
		      node.style.display="none";
		  }
	 }
	 
	function SetCwinHeight(obj)
	{
  		var cwin=obj;
  		if (document.getElementById)
  		{
   			 if (cwin && !window.opera)
    		{
      			if (cwin.contentDocument && cwin.contentDocument.body.offsetHeight)
        			cwin.height = cwin.contentDocument.body.offsetHeight;
      			else if(cwin.Document && cwin.Document.body.scrollHeight)
        			cwin.height = cwin.Document.body.scrollHeight;
   			 }
	
  		}
	}
	
	function setLeftHight(a ,b)
	{
		
		
		}
</script>
</head>

<body onload="HideMenu('0001')">		
	<div id="top">
		<h1>我的商城</h1>
	</div>
	<div id="main">
		<div id="center">
			<div id="left">
				<ul>
                <li></li>
				<li class="font01"><a href="shoplist.html" target="center" class="nodecousor">我的购物车</a></li>
				<li class="font01"><a href="buylist.html" target="center" class="font01">已买到的宝贝</a></li>
				<li class="font01" onclick="ShowMenu('0001')" style="cursor:pointer"><span style="color:#0F9">账号管理<span></li>
                <div id="0001">
                <li class="font11"><a href="1.html" target="center" class="nodecousor">我的账号</a></li>
				<li class="font11"><a href="info.html" target="center" class="nodecousor">个人信息</a></li>
                
                </div>
                <li class="font01"><a href="getAdd.html"  class="font01">发货地址</a></li>
				</ul>
			</div>
            <div id="right">
            	<iframe  id="fr1" name="center" width="100%" height="800"  scrolling="no" frameborder="0" src="" onload="SetCwinHeight(this)"></iframe>
            </div>
            
		</div>
	</div>
    <div id="footer">
    	<span id="foot">@by 信2Java-狗蛋最棒组</span>
    </div>
</body>
</html>
