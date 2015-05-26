<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background: #4E5869;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ 元素/标签选择器 ~~ */
ul, ol, dl { /* 由于浏览器之间的差异，最佳做法是在列表中将填充和边距都设置为零。为了保持一致，您可以在此处指定需要的数值，也可以在列表所包含的列表项（LI、DT 和 DD）中指定需要的数值。请注意，除非编写一个更为具体的选择器，否则您在此处进行的设置将会层叠到 .nav 列表。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 删除上边距可以解决边距会超出其包含的 div 的问题。剩余的下边距可以使 div 与后面的任何元素保持一定距离。 */
	padding-right: 15px;
	padding-left: 15px; /* 向 div 内的元素侧边（而不是 div 自身）添加填充可避免使用任何方框模型数学。此外，也可将具有侧边填充的嵌套 div 用作替代方法。 */
}
a img { /* 此选择器将删除某些浏览器中显示在图像周围的默认蓝色边框（当该图像包含在链接中时） */
	border: none;
}

/* ~~ 站点链接的样式必须保持此顺序，包括用于创建悬停效果的选择器组在内。 ~~ */
a:link {
	color:#414958;
	text-decoration: underline; /* 除非将链接设置成极为独特的外观样式，否则最好提供下划线，以便可从视觉上快速识别 */
}
a:visited {
	color: #4E5869;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 此组选择器将为键盘导航者提供与鼠标使用者相同的悬停体验。 */
	text-decoration: none;
}

/* ~~ 此容器包含所有其它 div，并依百分比设定其宽度 ~~ */
.container {
	width: 80%;
	max-width: 1260px;/* 可能需要最大宽度，以防止此布局在大型显示器上过宽。这将使行长度更便于阅读。IE6 不遵循此声明。 */
	min-width: 780px;/* 可能需要最小宽度，以防止此布局过窄。这将使侧面列中的行长度更便于阅读。IE6 不遵循此声明。 */
	background: #FFF;
	margin: 0 auto; /* 侧边的自动值与宽度结合使用，可以将布局居中对齐。如果将 .container 宽度设置为 100%，则不需要此设置。 */
}

/* ~~ 这是布局信息。 ~~ 

1) 填充只会放置于 div 的顶部和/或底部。此 div 中的元素侧边会有填充。这样，您可以避免使用任何“方框模型数学”。请注意，如果向 div 自身添加任何侧边填充或边框，这些侧边填充或边框将与您定义的宽度相加，得出 *总计* 宽度。您也可以选择删除 div 中的元素的填充，并在该元素中另外放置一个没有任何宽度但具有设计所需填充的 div。

*/
.content {
	padding: 10px 0;
}

/* ~~ 此分组的选择器为 .content 区域中的列表提供了空间 ~~ */
.content ul, .content ol { 
	padding: 0 15px 15px 40px; /* 此填充反映上述标题和段落规则中的右填充。填充放置于下方可用于间隔列表中其它元素，置于左侧可用于创建缩进。您可以根据需要进行调整。 */
}

/* ~~ 其它浮动/清除类 ~~ */
.fltrt {  /* 此类可用于在页面中使元素向右浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 此类可用于在页面中使元素向左浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 如果从 .container 中删除了 overflow:hidden，则可以将此类放置在 <br /> 或空 div 中，作为 #container 内最后一个浮动 div 之后的最终元素 */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
.up_po {
	cursor: pointer;
}
-->
</style>
</head>

<body>
<form action="http://localhost:8080/WebStore1/servlet/UploadProductServlet" method="post">
<div class="container">
  <div class="content">
    <table width="100%" border="1">
      <tr>
        <td bgcolor="#4E5869">商品ID</td>
        <td bgcolor="#4E5869"><input type="text" name="product_id" id="product_id"></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">商品名称：</td>
        <td bgcolor="#4E5869"><label for="product_name"></label>
        <input type="text" name="product_name" id="product_name"></td>
      </tr>
       <tr>
        <td bgcolor="#4E5869">品牌：</td>
        <td bgcolor="#4E5869"><label for="trademark"></label>
        <input type="text" name="trademark" id="trademark"></td>
      </tr>
       <tr>
        <td bgcolor="#4E5869">制造商ID：</td>
        <td bgcolor="#4E5869"><label for="producer_id"></label>
        <input type="text" name="producer_id" id="producer_id"></td>
      </tr>
     
      <tr>
        <td bgcolor="#4E5869">商品分类：</td>
        <td bgcolor="#4E5869">
        
<SCRIPT LANGUAGE="JavaScript">
<!--
function CreateSelect(_FormName,_SName,_SValue,_Ds,_AllOptionStr,ShowType)
{

 if (_FormName=="")
  _FormName = "all"
 var _DsArr = _Ds.split("|")
 var _Ds1,_Ds2,_Ds3
 var _Ds1 = _DsArr[0]
 var _Ds2 = (_DsArr.length>1)?_DsArr[1]:_DsArr[0]
 var _Ds3 = (_DsArr.length>2)?_DsArr[2]:_DsArr[0]

 var _SNameArr = _SName.split("|")
 var _SName1,_SName2,_SName3
 var _SName1 = _SNameArr[0]
 var _SName2 = (_SNameArr.length>1)?_SNameArr[1]:_SNameArr[0]
 var _SName3 = (_SNameArr.length>2)?_SNameArr[2]:_SNameArr[0]

 var _SValueArr = _SValue.split("|")
 var _SValue1,_SValue2,_SValue3
 var _SValue1 = _SValueArr[0]
 var _SValue2 = (_SValueArr.length>1)?_SValueArr[1]:_SValueArr[0]
 var _SValue3 = (_SValueArr.length>2)?_SValueArr[2]:_SValueArr[0]

 if (ShowType==3){
  _AllOptionStr = _AllOptionStr.replace(/\(\(/ig,"\(\("+_Ds3+"\^")
  _AllOptionStr = _AllOptionStr.replace(/\{\{/ig,"\{\{"+_Ds2+"\(\("+_Ds3+"\*\*")
 }
 else if(ShowType==2){
  _AllOptionStr = _AllOptionStr.replace(/\{\{/ig,"\{\{"+_Ds2+"\(\("+_Ds3+"\*\*")
 }
 else if(ShowType==1){
  _AllOptionStr = _AllOptionStr.replace(/\(\(/ig,"\(\("+_Ds3+"\^")
 }
 var AllStr = _Ds1 + "{{"+ _Ds2 + "(("+ _Ds3 +"||"+_AllOptionStr
 //alert(AllStr)
 var _AR0 = AllStr.split("||");
 document.writeln("<select name=\"" + _SName1 + "\" size=\"1\" onChange=\""+_SName1+"redirect(this.options.selectedIndex)\">");
 for (var i1 = 0;i1 < _AR0.length;i1++)
 {
  var Area1Str = _AR0[i1];
  var _AR10 = Area1Str.split("{{");
  var _AR11 = _AR10[0].split("@");
  var Tstr1 = _AR11[0];
  var Vstr1 = (_AR11.length==2)?_AR11[1]:_AR11[0]
  document.writeln("<option value=\""+Vstr1+"\">"+Tstr1+"<\/option>");
 }
 document.writeln("<\/select>");

 document.writeln("<select name=\"" + _SName2 + "\" size=\"1\" onChange=\""+_SName1+"redirect1(this.options.selectedIndex)\">");
 var _AR111 = _Ds2.split("@");
 var Tstr11 = _AR111[0];
 var Vstr11 = (_AR111.length==2)?_AR111[1]:_AR111[0];
 document.writeln("<option value=\""+Vstr11+"\">"+Tstr11+"<\/option>");
 document.writeln("<\/select>");

 document.writeln("<select name=\"" + _SName3 + "\" size=\"1\">");
 var _AR222 = _Ds3.split("@");
 var Tstr22 = _AR222[0];
 var Vstr22 = (_AR222.length==2)?_AR222[1]:_AR222[0];
 document.writeln("<option value=\""+Vstr22+"\">"+Tstr22+"<\/option>");
 document.writeln("<\/select>");

 document.writeln("<S"+"CRIPT LANGUAGE=\"JavaScript\" defer>");
 document.writeln("<!--");
 document.writeln("var "+_SName1+"NewAllStr = \""+ AllStr +"\"");
 document.writeln("var "+_SName1+"_AR0 = "+_SName1+"NewAllStr.split(\"||\");");
 document.writeln("var "+_SName1+"groups=document."+ _FormName +"." + _SName1 + ".options.length;");
 document.writeln("var "+_SName1+"group=new Array("+_SName1+"groups)");
 document.writeln("for (i=0; i<"+_SName1+"groups; i++){");
 document.writeln(" "+_SName1+"group[i]=new Array();");
 document.writeln("}");
 document.writeln("for (var i1 = 0;i1 < "+_SName1+"_AR0.length;i1++){");
 document.writeln(" var Area1Str = "+_SName1+"_AR0[i1];");
 document.writeln(" var _AR10 = Area1Str.split(\"{{\");");
 document.writeln(" var _AR12 = _AR10[1].split(\"**\");");
 document.writeln(" for (var i2 = 0;i2 < _AR12.length;i2++){");
 document.writeln("  var Area2Str = _AR12[i2];");
 document.writeln("  var _AR20 = Area2Str.split(\"((\");");
 document.writeln("  var _AR211 = _AR20[0].split(\"@\");");
 document.writeln("  var Tstr2 = _AR211[0];");
 document.writeln("  var Vstr2 = (_AR211.length==2)?_AR211[1]:_AR211[0];");
 document.writeln("  "+_SName1+"group[i1][i2]=new Option(Tstr2,Vstr2);");
 document.writeln(" }");
 document.writeln("}");
 document.writeln("var "+_SName1+"temp = document."+ _FormName +"." + _SName2);
 document.writeln("function "+_SName1+"redirect(x){");
 document.writeln(" for (m="+_SName1+"temp.options.length-1;m>0;m--)");
 document.writeln(" "+_SName1+"temp.options[m]=null;");
 document.writeln(" for (i=0;i<"+_SName1+"group[x].length;i++){");
 document.writeln("  "+_SName1+"temp.options[i]=new Option("+_SName1+"group[x][i].text,"+_SName1+"group[x][i].value);");
 document.writeln(" }");
 document.writeln(" "+_SName1+"temp.options[0].selected=true");
 document.writeln(" "+_SName1+"redirect1(0)");
 document.writeln("}");
 document.writeln("var "+_SName1+"Group2s=document."+ _FormName +"." + _SName2 + ".options.length;");
 document.writeln("var "+_SName1+"Group2=new Array("+_SName1+"groups);");
 document.writeln("for (i=0; i<"+_SName1+"groups; i++){");
 document.writeln(" "+_SName1+"Group2[i]=new Array("+_SName1+"group[i].length)");
 document.writeln(" for (j=0; j<"+_SName1+"group[i].length; j++){");
 document.writeln("  "+_SName1+"Group2[i][j]=new Array()");
 document.writeln(" }");
 document.writeln("}");
 document.writeln("for (var i1 = 0;i1 < "+_SName1+"_AR0.length;i1++){");
 document.writeln(" var Area1Str = "+_SName1+"_AR0[i1]");
 document.writeln(" var _AR10 = Area1Str.split(\"{{\");");
 document.writeln(" var _AR12 = _AR10[1].split(\"**\");");
 document.writeln(" for (var i2 = 0;i2 < _AR12.length;i2++){");
 document.writeln("  var Area2Str = _AR12[i2]");
 document.writeln("  var _AR20 = Area2Str.split(\"((\");");
 document.writeln("  _AR212 = _AR20[1].split(\"^\");");
 document.writeln("  for (var i3 = 0;i3 < _AR212.length;i3++){");
 document.writeln("   Area3Str = _AR212[i3]");
 document.writeln("   _AR3 = Area3Str.split(\"@\");");
 document.writeln("   Tstr3 = _AR3[0]");
 document.writeln("   Vstr3 = (_AR3.length==2)?_AR3[1]:_AR3[0]");
 document.writeln("   "+_SName1+"Group2[i1][i2][i3]=new Option(Tstr3,Vstr3);");
 document.writeln("  }");
 document.writeln(" }");
 document.writeln("}");
 document.writeln("var "+_SName1+"temp1=document."+ _FormName +"." + _SName3 + "");
 document.writeln("function "+_SName1+"redirect1(y){");
 document.writeln(" for (m="+_SName1+"temp1.options.length-1;m>0;m--)");
 document.writeln(" "+_SName1+"temp1.options[m]=null");
 document.writeln(" for (i=0;i<"+_SName1+"Group2[document."+ _FormName +"." + _SName1 + ".options.selectedIndex][y].length;i++){");
 document.writeln("  "+_SName1+"temp1.options[i]=new Option("+_SName1+"Group2[document."+ _FormName +"." + _SName1 + ".options.selectedIndex][y][i].text," + _SName1 + "Group2[document."+ _FormName +"." + _SName1 + ".options.selectedIndex][y][i].value)");
 document.writeln(" }");
 document.writeln(" "+_SName1+"temp1.options[0].selected=true");
 document.writeln("}");
 document.writeln("\/\/-->");
 document.writeln("<\/script>");
 document.writeln("<s"+"cript language=\"JavaScript\">");
 document.writeln("<!--");
 document.writeln("function "+_SName1+"SetValue(){");
 document.writeln(" try{");
 document.writeln("  if (\""+_SValue1+"\"!=\"\"){");
 document.writeln("   document."+ _FormName +"."+_SName1+".value=\""+_SValue1+"\"");
 document.writeln("   "+_SName1+"redirect(document."+ _FormName +"."+_SName1+".options.selectedIndex);");
 document.writeln("   if (\""+_SValue2+"\"!=\"\"){");
 document.writeln("    document."+ _FormName +"."+_SName2+".value=\""+_SValue2+"\"");
 document.writeln("    "+_SName1+"redirect1(document."+ _FormName +"."+_SName2+".options.selectedIndex)");
 document.writeln("    if (\""+_SValue3+"\"!=\"\")");
 document.writeln("     document."+ _FormName +"."+_SName3+".value=\""+_SValue3+"\"");
 document.writeln("   }");
 document.writeln("  }");
 document.writeln(" }");
 document.writeln(" catch(e){");
 document.writeln(" }");
 document.writeln("}");
 document.writeln("window.attachEvent(\"onload\","+_SName1+"SetValue)");
 document.writeln("\/\/-->");
 document.writeln("<\/script>");
}
//-->
</script>

<SCRIPT LANGUAGE="JavaScript">
<!--
var AllStr1 = ""
+"服饰箱包{{"
 +"女装((上衣^外套"
 +"**男装((衬衫^西装"
 +"**裤子((休闲裤^牛仔裤"
+"**鞋子((运动鞋^靴子"
+"**箱包((单肩包^手拿包"
+"||手机数码{{"
 +"手机通讯((中兴^华为"
 +"**摄像摄影((数码相机^单反"
 +"**数码配件((耳机^手机套"
 +"**时尚影音((音响^MP4"
+"||家纺家具{{"
 +"家居饰品((花瓶^盆景"
 +"**厨房餐饮((电饭锅^电磁炉"
+"**家居日用((洗发露^洗衣液"
+"真丝床品((四件套"
+"||图书影像{{"
 +"小说((武侠^爱情^科幻"
 +"**音像((DVD^专辑^磁带"
 +"**儿童书((幼教^启蒙"
 +"**教材教辅((小学^初中"
+"**其他书籍((工具书^专业书"
+"||其它{{"
 +"其它((其它"
//-->
</SCRIPT>

<form name="HwForm">
<SCRIPT LANGUAGE="JavaScript">
CreateSelect("","S_13|S_23|S_33","","请选择大类@|请选择小类@|请选择详细分类@",AllStr1,0);
</SCRIPT>
</form>
        </td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">市场价格：</td>
        <td bgcolor="#4E5869"><label for="marker_price"></label>
        <input type="text" name="market_price" id="market_price"></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">折扣：</td>
        <td bgcolor="#4E5869"><label for="discount"></label>
        <input type="text" name="discount" id="discount"></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">商品数量：</td>
        <td bgcolor="#4E5869"><label for="count"></label>
        <input type="text" name="count" id="count"></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">商品描述：</td>
        <td bgcolor="#4E5869"><label for="detailinfo"></label>
        <textarea type="text" name="detailinfo" id="detailinfo" cols="45" rows="5">请输入商品相关信息……</textarea></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">商品图片：</td>
        <td bgcolor="#4E5869"><label for="fileField"></label>
        <input type="file" name="fileField" id="fileField">
        <input type="image" name="imageField" id="imageField" src="../images/ul_pic.png"></td>
      </tr>
      <tr bgcolor="#4E5869">
        <td colspan="2" align="center"><input type="submit" name="提交" id="提交" value="提交"></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">&nbsp;</td>
        <td bgcolor="#4E5869">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">&nbsp;</td>
        <td bgcolor="#4E5869">&nbsp;</td>
      </tr>
    </table>
  </div>
  <!-- end .container --></div>
</form>
</body>
</html>
