<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="stylesheet" type="text/css" href="/theme/13/style.css">

<html>
	<head>
		<base href="<%=basePath%>">
		<title>人事档案</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script type="text/javascript" src="/inc/js_lang.php"></script>
		<script type="text/javascript" src="/inc/js/attach.js"></script>
		<style media="print" type="text/css">
.Noprint {
	display: none;
}

.PageNext {
	page-break-after: always;
}
</style>
<script type="javascript" >
	function check() {
	
	    'var ee=document.formtt.employeeid.value
	    
		var employeeid = document.getElementById("employeeid").value;
		alert(employeeid);
		var account = document.getElementById("account").value;
		var age = document.getElementById("age").value
		var password = document.getElementById("password").value
		var phonenumber = document.getElementById("phonenumber").value
		var realname = document.getElementById("realname").value
		var address = document.getElementById("address").value
		var sex = document.getElementById("sex").value
		var managerid = document.getElementById("managerid").value
		var birthdate = document.getElementById("birthdate").value
		var aboutme = document.getElementById("aboutme").value
		var interest = document.getElementById("interest").value

		if (aboutme == "" && interest == "" && birthdate == ""
				&& managerid == "" && sex == "" && address == ""
				&& realname == "" && phonenumber == "" && password == ""
				&& age == "" && account == "" && employeeid == "") {
			alert("注意查看，不能为空值！");
			return false;
		}
	}
</script>

	</head>

	<body class="bodycolor print" topmargin="5">

		<form action="<%=basePath%>servlet/EmployeeRegisterServlet"
			method="post" name="formtt" id="formtt">
			<table width="80%" border="1" align="center" bordercolor="#000000"
				class="TableBlock">
				<tr>
					<td height="39" colspan="6" align="center" nowrap
						bordercolor="#000000" class="TableHeader">
						<strong>&nbsp;基本信息 </strong>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						员工编号：
					</td>
					<td colspan="4" bordercolor="#000000" class="TableData">
						<label for="employeeid"></label>
						<input type="text" name="employeeid" id="employeeid">
					</td>
					<td colspan="2" rowspan="6" align="center" bordercolor="#000000"
						class="TableData">
						<div class="avatar">
							<img src="../images/head.jpg" width="130" height="130">
						</div>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						员工账户：
					</td>
					<td width="180" align="left" nowrap bordercolor="#000000"
						class="TableData">
						<label for="account"></label>
						<input type="text" name="account" id="account">
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						年龄：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="age"></label>
						<input type="text" name="age" id="age">
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						密码：
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableData">
						<label for="password"></label>
						<input type="text" name="password" id="password">
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						联系电话：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="phonenumber"></label>
						<input type="text" name="phonenumber" id="phonenumber">
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						姓名：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="realname"></label>
						<input type="text" name="realname" id="realname">
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						通信地址：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="address"></label>
						<input type="text" name="address" id="address">
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						电子邮件：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="email"></label>
						<input type="text" name="email" id="email">
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						性别：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="sex"></label>
						<input type="text" name="sex" id="sex">
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						所属管理员编号：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="managerid"></label>
						<input type="text" name="managerid" id="managerid">
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						出生日期(yyyy-mm-dd)：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="birthdate"></label>
						<input type="text" name="birthdate" id="birthdate">
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						个人简介：
					</td>
					<td colspan="5" bordercolor="#000000" class="TableData">
						<label for="aboutme"></label>
						<textarea name="aboutme" id="aboutme" cols="45" rows="5"></textarea>
					</td>
				</tr>
				<tr>
					<td height="90" align="left" nowrap bordercolor="#000000"
						class="TableContent">
						兴趣爱好：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="interest"></label>
						<textarea name="interest" id="interest" cols="45" rows="5"></textarea>
					</td>

				</tr>
				<tr>
					<td height="44" colspan="6" align="center" nowrap
						bordercolor="#000000" class="TableData"
						style="vertical-align: top;">
						<input onclick="check()" type="submit" name="update" id="update"
							value="提交">
					</td>

				</tr>
			</table>
			<OBJECT classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height=0
				id=WebBrowser name=WebBrowser width=0></OBJECT>

			<br>
			<br>

			<center>
			</center>



		</form>
	</body>
</html>

