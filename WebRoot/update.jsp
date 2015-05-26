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
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
</head>

<body>
<form action="http://localhost:8080/WebStore/servlet/UploadProductServlet" method="post">
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
        <td bgcolor="#4E5869"><ul id="MenuBar1" class="MenuBarHorizontal">
          <li><a class="MenuBarItemSubmenu" href="#">家居用品</a>
            <ul>
              <li><a href="#">项目 1.1</a></li>
              <li><a href="#">项目 1.2</a></li>
              <li><a href="#">项目 1.3</a></li>
            </ul>
          </li>
          <li><a href="#">户外运动</a></li>
          <li><a href="#" name="productbigtype" class="MenuBarItemSubmenu">服装配饰</a>
            <ul>
              <li><a class="MenuBarItemSubmenu" href="#" value=“1”>精品男装</a>
                <ul>
                  <li><a href="#" value="1">衬衫</a></li>
                  <li><a href="#">牛仔裤</a></li>
                </ul>
              </li>
              <li><a href="#" name="productsmalltype" >精品女装</a></li>
              <li><a href="#"  name="productdetailtype"><option valure="1">配饰</a></option></li>
            </ul>
          </li>
</ul></td>
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
        <td bgcolor="#4E5869">付款方式：</td>
        <td bgcolor="#4E5869"><input type="checkbox" name="支付宝" id="支付宝">
        <label for="支付宝">支付宝</label>          <label for="checkbox"> 
          <input type="checkbox" name="网银" id="网银">
        网银
        <input type="checkbox" name="货到付款" id="货到付款">
        货到付款</label></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">商品所属库房：</td>
        <td bgcolor="#4E5869"><p>
          <label>
            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_0">
            重庆库房001</label>
          <br>
          <label>
            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1">
            成都库房007</label>
          <br>
        </p></td>
      </tr>
      <tr>
        <td bgcolor="#4E5869">支持物流：</td>
        <td bgcolor="#4E5869"><input type="checkbox" name="支付宝2" id="支付宝2">
          EMS
            <label for="支付宝2"></label>
          <label for="checkbox">
            <input type="checkbox" name="网银2" id="网银2">
            平邮
            <input type="checkbox" name="货到付款2" id="货到付款2">
        顺丰</label></td>
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
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
