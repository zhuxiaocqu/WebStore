<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.webstore.bean.subobject.Employee"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
.Noprint {
	display: none;
}

.PageNext {
	page-break-after: always;
}
</style>
	</head>

	<body class="bodycolor print" topmargin="5">

		<form
			action="http://localhost:8080/WebStore/servlet/ShowEmployeeDetail"
			method="post">

			<%
				Employee em = (Employee) session.getAttribute("employee");
			%>

			<table width="80%" border="1" align="center" bordercolor="#000000"
				class="TableBlock">
				<tr>
					<td colspan="6" nowrap bordercolor="#000000" class="TableHeader">
						<b>&nbsp;基本信息</b>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						员工编号：
					</td>
					<td colspan="4" bordercolor="#000000" class="TableData">
						<label for="employeeid"></label>
						<input type="text" name="employeeid" id="employeeid"
							value=<%=em.getUserID()%>>
					</td>
					<td colspan="2" rowspan="6" align="center" bordercolor="#000000"
						class="TableData">
						<div class="avatar">
							<img src="<%=basePath %>servlet/ShowGoodPicServlet" width="130" height="130">
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
						<input type="text" name="account" id="account"
							value=<%=em.getAccount()%>>
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						年龄：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="age"></label>
						<input type="text" name="age" id="age" value=<%=em.getAge()%>>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						密码：
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableData">
						<label for="password"></label>
						<input type="password" name="password" id="password"
							value=<%=em.getPassWord()%>>
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						联系电话：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="phonenumber"></label>
						<input type="text" name="phonenumber" id="phonenumber"
							value=<%=em.getPhoneNumber()%>>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						姓名：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="realname"></label>
						<input type="text" name="realname" id="realname"
							value=<%=em.getRealName()%>>
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						通信地址：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="address"></label>
						<input type="text" name="address" id="address"
							value=<%=em.getAddress()%>>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						电子邮件：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="email"></label>
						<input type="text" name="email" id="email"
							value=<%=em.getEMail()%>>
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						性别：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="sex"></label>
						<input type="text" name="sex" id="sex" value=<%=em.getSex()%>>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						所属管理员编号：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="managerid"></label>
						<input type="text" name="managerid" id="managerid"
							value=<%=em.getManagerGroup().getTypeID()%>>
					</td>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						出生日期：
					</td>
					<td colspan="2" bordercolor="#000000" class="TableData">
						<label for="birthdate"></label>
						<input type="text" name="birthdate" id="birthdate"
							value=<%=em.getBirthDate()%>>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						个人简介：
					</td>
					<td colspan="5" bordercolor="#000000" class="TableData">
						<label for="aboutme"></label>
						<textarea name="aboutme" id="aboutme" cols="45" rows="5"><%=em.getAboutMe()%></textarea>
					</td>
				</tr>
				<tr>
					<td align="left" nowrap bordercolor="#000000" class="TableContent">
						兴趣爱好：
					</td>
					<td bordercolor="#000000" class="TableData">
						<label for="interest"></label>
						<textarea name="interest" id="interest" cols="45" rows="5"><%=em.getInterest()%></textarea>
					</td>
					
					<td align="center">
						照片：
					</td>
					<td colspan="2" align="center">
						<label for="employeeimage"></label>
						<input type="file" name="employeeimageurl" id="employeeimageurl" />
					</td>
				
				</tr>
				<tr>
					<td colspan="6" align="center" nowrap bordercolor="#000000"
						class="TableData" style="vertical-align: top;">
						<input type="submit" name="update" id="update" value="修改">
					</td>

				</tr>
			</table>
			<OBJECT classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height=0
				id=WebBrowser name=WebBrowser width=0></OBJECT>

			<br>
			<br>

			<center>
				&nbsp;
				<br>
			</center>
			<script language="javascript">
	function print_view() {
		if (self.frames.name != "") {
			var url = self.location.href;
			window
					.open(url, "",
							"toolbar=no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");
		} else {
			window.document.all.WebBrowser.ExecWB(7, 1);
		}
	}
	function open_pic(AVATAR) {
		url = AVATAR;
		window.open(url, "的头像",
				"toolbar=0,status=0,menubar=0,scrollbars=yes,resizable=1")
	}
</script>


		</form>
	</body>
</html>

