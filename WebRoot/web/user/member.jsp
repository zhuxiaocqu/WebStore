<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.webstore.bean.subobject.UserList"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
	cursor: pointer;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
	cursor: pointer;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}

a:link {
	color: #3B6375;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #3B6375;
}

a:hover {
	text-decoration: none;
	color: #3B6375;
}

a:active {
	text-decoration: none;
	color: #3B6375;
}
-->
</style>
		<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>


	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="6%" height="19" valign="bottom">
														<div align="center">
															<img src="../images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="bottom">
														<span class="STYLE1"> 注册用户基本信息列表</span>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<div align="right">
												<span class="STYLE1"> <input type="checkbox"
														name="checkbox11" id="checkbox11" /> 全选 &nbsp;&nbsp;<img
														src="../images/add.gif" width="10" height="10" /> 添加
													&nbsp; <img src="../images/del.gif" width="10" height="10" />
													删除 &nbsp;&nbsp;<img src="../images/edit.gif" width="10"
														height="10" /> 编辑 &nbsp;</span><span class="STYLE1">
													&nbsp;</span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						bgcolor="#a8c7ce" onmouseover="changeto()"
						onmouseout="changeback()">
						<tr>
							<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10">
								<div align="center">
									<input type="checkbox" name="checkbox" id="checkbox" />
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">用户名</span>
								</div>
							</td>
							<td width="15%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">年龄</span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">联系方式</span>
								</div>
							</td>
							<td width="16%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">地址</span>
								</div>
							</td>
							<td width="27%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">真实姓名</span>
								</div>
							</td>
							<td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">基本操作</span>
								</div>
							</td>
						</tr>

						<%
							List<UserList> list = (List<UserList>) request
									.getAttribute("userList");
							if (list == null || list.size() < 1) {
								out.print("没有数据");
							} else {
								for (UserList p : list) {
						%>
						<tr>
							<td height="20" bgcolor="#FFFFFF">
								<div align="center">
									<input type="checkbox" name="checkbox10" id="checkbox10" />
								</div>
							</td>
							<td height="20" bgcolor="#FFFFFF" class="STYLE19">
								<div align="center"><%=p.getAccount()%></div>
							</td>
							<td height="20" bgcolor="#FFFFFF" class="STYLE19">
								<div align="center"><%=p.getAge()%></div>
							</td>
							<td height="20" bgcolor="#FFFFFF" class="STYLE19">
								<div align="center"><%=p.getPhoneNumber()%></div>
							</td>
							<td height="20" bgcolor="#FFFFFF" class="STYLE19">
								<div align="center"><%=p.getAddress()%></div>
							</td>
							<td height="20" bgcolor="#FFFFFF" class="STYLE19">
								<div align="center"><%=p.getRealName()%></div>
							</td>
							<td height="20" bgcolor="#FFFFFF">
								<div align="center">
									<span class="STYLE21"><a
										href="<%=path%>/servlet/showUserDetail?id=<%=p.getUserID()%>">查看</a>
									</span>&nbsp;
									<span class="STYLE21">修改</span>
								</div>
							</td>
						</tr>
						<%
							}
							}
						%>
					</table>
				</td>
			</tr>

		</table>
	</body>
</html>
