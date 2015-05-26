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
</head>

<body>
<table width="60%" border="1">
  <tr>
    <td><form id="form1" name="form1" method="post" action="">
        <label>姓名 &nbsp &nbsp 
          <input name="textfield" type="text" size="40" />
        </label>
      </form>
    </td>
  </tr>
  <tr>
    <td><form id="form2" name="form2" method="post" action="">
      <label>个性签名
        <input name="textfield2" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form3" name="form3" method="post" action="">
      <label>性别 &nbsp &nbsp
        <input name="textfield3" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form4" name="form4" method="post" action="">
      <label>年龄 &nbsp &nbsp
        <input name="textfield4" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form5" name="form5" method="post" action="">
      <label>电子邮箱
        <input name="textfield5" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form6" name="form6" method="post" action="">
      <label>联系电话
        <input name="textfield6" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form7" name="form7" method="post" action="">
      <label>血型 &nbsp &nbsp
        <input name="textfield7" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
  <tr>
    <td><form id="form8" name="form8" method="post" action="">
      <label>兴趣爱好
        <input name="textfield8" type="text" size="40" />
        </label>
    </form>
    </td>
  </tr>
</table>
</body>
</html>
