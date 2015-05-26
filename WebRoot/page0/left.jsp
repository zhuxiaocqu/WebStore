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
<link href="style/div1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
     function showOrhiddenMenu(id){
	      var node = document.getElementById(id);
		  if(node.style.display==""){
		      node.style.display="none";
		  }else{
		      node.style.display="";
		  }
 	 }
</script>
</head>

<body>
<div id="left_01">
  <ul>
     <li class="font02" style="padding-top:20px; font-weight:bold;">商品分类</li>
     <li id="good_01" onclick="showOrhiddenMenu('0001')" class="nodecousor">服饰箱包</li>
     <div id="0001">
     <li id="good_02"><a href="../page1/page.jsp" target="_parent">女装</a></li>
     <li id="good_02">男装</li>
     <li id="good_02">裤子</li>
     <li id="good_02">鞋子</li>
     <li id="good_02">箱包</li>
     </div>
    <li id="good_01" onclick="showOrhiddenMenu('0002')" class="nodecousor">手机数码</li>
     <div id="0002">
     <li id="good_02">手机通讯</li>
     <li id="good_02">摄像摄影</li>
     <li id="good_02">数码配件</li>
     <li id="good_02">时尚影音</li>
     </div>
   	<li id="good_01" onclick="showOrhiddenMenu('0003')" class="nodecousor">家纺家居</li>
    <div id="0003">
    <li id="good_02">家居饰品</li>
    <li id="good_02">厨房餐饮</li>
    <li id="good_02">家居日用</li>
    <li id="good_02">真丝床品</li>
  </div>
    <li id="good_01" onclick="showOrhiddenMenu('0004')" class="nodecousor">图书影像</li>
     <div id="0004">
     <li id="good_02">小说</li>
     <li id="good_02">音像</li>
     <li id="good_02">儿童书</li>
     <li id="good_02">教材教辅</li>
    <li id="good_02">其他书籍</li>
    </div>
  </ul>
</div>
</body>
</html>
