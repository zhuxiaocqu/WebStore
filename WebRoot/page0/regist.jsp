<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>用户注册</title>

<style type="text/css">
body{font:Verdana, Geneva, sans-serif; color:#9C0 ; font-weight:bolder; background-image:url(images/108.jpg) /*background-image: url(images/3.jpg)*/}
.code{
	/*验证码图片background-image: url(images/4.png);*/
background-image:url(images/106.jpg);
font-family:Arial;
font-style:italic;
color: #F90;
border:0;
padding:2px 3px;
letter-spacing:3px;
font-weight:bolder;
}
.unchanged {
border:0;
}
</style>
<script language="javascript" type="text/javascript">
var code ; //在全局 定义验证码
function createCode(){ 
code = "";
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}

function validate () {
var inputCode = document.getElementById("input1").value.toUpperCase();

if(inputCode.length <=0) {
   alert("请输入验证码！");
   return false;
}
else if(inputCode != code ){
   alert("验证码输入错误！");
   createCode();
   return false;
}
else {
   alert("OK");
   return true;
}

}
</script>

</head>
<script type="text/javascript">

function userCheck(){
	
	}

</script>

<body >
<!--顶部图片  style="background-image: url(images/8.jpg); position:fixed;width:1366px" -->
 <div  >
<script type="text/javascript" charset="utf-8">
	window.onload = function (){ 
		createCode();
	};
	
function chooseMale(){
	
	if(document.getElementById("female").checked)
		document.getElementById("female").checked=false;
		
	}
	
function chooseFemale(){
	if(document.getElementById("male").checked)
		document.getElementById("male").checked=false;
	}
		</script>
<!--http://wenku.baidu.com/view/5f4b9326aaea998fcc220e9e.html -->
<br>
<!-- cellpadding 在原有小格的基础上沿四边各加上10 个点子宽度，也就是把原来的小格变大-->
<table width="600" height="300" border="0" align="center" cellpadding="1" cellspacing="1" style="margin-top:70px">
<tr>
	<td height="202px" valign="top">
    <br />
<!--    <link rel="stylesheet" href="css/div1.css" /> -->
    <font size="+3" ><center><b>点点商城会员注册</b></center></font> 
    
    <hr /><!--横线 -->
    <!--<form name="regist" ></form> -->
    <table width="440px" border="0" align="center">
    	<tr>
        	<td >会员名：</td>
            <td>
            	<input width="20px" type="text"/>
                
            </td>
            <td><font color="#FF0000">*</font></td>
        </tr>
        
        <tr>
        	<td>密码： </td>
            <td><input width="20px" type="password"/>
                
            <td><font color="#FF0000">*</font></td></td>
        </tr>
        
        <tr>
        	<td>确认密码：</td>
            <td><input width="15px" type="password"/>
               
            </td>
            <td> <font color="#FF0000">*</font></td>
        </tr>
        
        <tr>
        	<td >性别：</td>
            <td><input type="radio" id="male" onClick="chooseMale()"/>男
            	 <input type="radio" id="female" onClick="chooseFemale()"/>女
            </td>
           
        </tr>
        
        <tr>
        	<td >注册邮箱:</td>
            <td><input width="15px" type="text" />
            <select>
            	<option>--请选择邮箱域名--</option>
            	<option>@sina.com.cn</option>
            	<option>@163.com.cn</option>
            	<option>@gmail.com.cn</option>
            	<option>@qq.com.cn</option>
            </select>
          
             <td><font color="#FF0000">*</font></td>
           </td> 
        </tr>
        
         <tr>
            <td>验证码：</td>
            <td><input type="text" id="input1" />
				<input type="text" id="checkCode" class="code" style="width: 50px" /> 
                <a href="#" onClick="createCode()"><font style="color:#9C0;"><em>看不清楚</em></font></a>
           <td><font color="#FF0000">*</font></td>
            </td>
            
        </tr>
        
        <tr>
        	
            <td align="center" colspan="2">
            <input type="submit"  style="width:110px; height:30px;" onClick="validate()" value="注册" />
            </td>
        </tr>  
        
        <tr>
            <td colspan="2">
            	注：<font color="#FF0000">*</font>为必填内容
            </td>
        </tr>  
        
    </table> 
    </td>
</tr>    
</table>
<div id="footer" align="center" style="margin-top:70px">
			<div class="g_foot" align="center">
				<div class="g_foot-ali" align="center">
					<a href="http://www.baidu.com">
						XX商城集团
					</a>
					<b>
						|
					</b>
					<a href="http://www.baidu.com">
						XX商城
					</a>
					<b>
						|
					</b>
					<a href="http://www.baidu.com">
						商城中国站
					</a>
					<b>
						|
					</b>
                    <a href="//www.1688.com">
						商城国际站
					</a>
				</div>
				
			</div>
            
            <style>
				/*位置*/.g_foot{ width: 960px; margin: 0 auto; font: 12px/1.5 tahoma,arial,宋体b8b\4f53;
				padding: 7px 0 9px; color: #b0b0b0; text-align: left !important; position:
				relative; clear:both; } 
				/*链接字体*/.g_foot a{ margin: 0 2px; color: #3e3e3e; text-decoration:none;
				} 
				/*底部线*/.g_foot-ali{margin-right: 0px; padding-left: 0; border-bottom: 1px solid #D3D3D3;
				padding-bottom: 8px; height: 18px; color:#CC6600 } 
				.g_foot-nohover{ cursor: default;} 
				.g_foot-line{ /*display:none*/; position: absolute; no-repeat; width: 104px; height: 1px; right: 45px; top:33px; } 	
			
			</style>
            
            <div id="server-num" >
				www.myshop.com
			</div>
</div>

</body><!-- position:absolute; bottom:100px;src="images/7.jpg" style="position:absolute; bottom:0; right:0;" -->
</html>



