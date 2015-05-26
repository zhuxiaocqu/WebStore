<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="data-spm" content="a1z08" />
		<title>收货地址</title>
    <link rel="stylesheet" href="css/get1.css" />
	<link href="css/get2.css" type="text/css" rel="stylesheet" />

	</head>
<body id="mytaobao" data-spm="3">

	<!-- start vmc 3.1 -->
<div id="site-nav"><div id="site-nav-bd">
<!-- end vmc 3.1 -->
	<div id="page">       
			<style>
			#Content .main-wrap,
			#content .main-wrap {
			    margin-left: 140px;
			}

			#Content .col-sub,
			#content .col-sub {
			    width: 140px;
				margin-left: -100%;
				*display: inline;
			}
		</style>
	
        <header class="mt-header" data-spm="a210b">
    <article> 
        <div class="mt-logo">
           
        </div>
       
    </article>
</header>



    <div class="col-main">
        <div class="main-wrap">
            <span class="mytaobao-rc-tp"><span></span></span>
            <div class="account-security security-deliver" id="main-content" data-spm="1000502">
<form name="hidef" id="hidef" action="deliver_address.htm" method="post">
   <input type="hidden" name="action" value="deliver_address_mgr">
   <input type="hidden" name="event_submit_do_delete_in_fresh" value="submit">
   <input type="hidden" name="id" id="hidef_id" value="">
    <input name='_tb_token_' type='hidden' value='GsA2YyjyKWm'>
</form>
            <form name="mainform" action="deliver_address.htm" method="post" id="mytaobao-junk">
				            	<input name='_tb_token_' type='hidden' value='GsA2YyjyKWm'>
            	<input type="hidden" name="_fm.d._0.i" id="_fm.d._0.i" value="">
            	<input type="hidden" name="id" id="id" value="">
            	<input type="hidden" name="action1" id="action1" value="deliver_address_mgr">
            	<input type="hidden" name="event_submit_do_perform" id="event_submit_do_perform" value="1">

				<h2 class="h2-single"><span class="entity">收货地址</span></h2>
				 <h3><span class="entity-h3">新增收货地址</span>电话号码、手机号选填一项,其余均为必填项</h3>
                <ul class="elem-form section trade:addressEditor"  id="ah:addressForm">
                    <li>
						<label class="label-like" for="_fm.d._0.f">收货人姓名:</label>
						<p>
							<input type="text" name="_fm.d._0.f" id="_fm.d._0.f" value="" class="inputtext input-long" />
							<span class="spark-indeed">*</span>
						</p>
					</li>
                    <li><label class="label-like">所在地区:</label>
                        <p>
                            <select name="_fm.d._0.pr" id="J_AddrProv"  onchange="doChange(this)"></select>&nbsp;
							<select name="_fm.d._0.c" id="J_AddrCountry"></select>&nbsp;
							<select name="_fm.d._0.pro" id="J_AddrProvExt"></select>&nbsp;
							<select name="_fm.d._0.ci" id="J_AddrCity"></select>&nbsp;
							<select name="_fm.d._0.a" id="J_AddrArea"></select>&nbsp;
							<input id="divisionCode" class="pc:divisionCode" value="500100" type="hidden" name="_fm.d._0.d" />
							<span class="spark-indeed">*</span>
						</p>
                    </li>
                    <li><label class="label-like" for="_fm.d._0.ad">街道地址:</label>
                        <p>
							<textarea name="_fm.d._0.ad" id="_fm.d._0.ad" rows="3" cols="60"></textarea>
							<span class="spark-indeed">*</span>
							<span class="ex-margin-left ex-weaken-gray">不需要重复填写省/市/区</span>
						</p>
                    </li>
                    <li>
						<label class="label-like" for="_fm.d._0.po">邮政编码:</label>
						<input type="text" name="_fm.d._0.po" id="_fm.d._0.po" value="" class="inputtext input-short ds:areaCode" />
						<span class="spark-indeed">*</span>
						<span class="ex-margin-left ex-weaken-gray">大陆以外地区可不填写</span>
					</li>
					<li>
						<label class="label-like" for="mobilePhone">手机号码:</label>
						<p>
							<input type="text" name="_fm.d._0.m" value="" id="mobilePhone" class="inputtext input-long" />
							<span class="ex-margin-left ex-weaken-gray">电话号码、手机号码必填一项</span>
						</p>
					</li>
                    <li>
						<label class="label-like">电话号码:</label>
						<input type="text" name="_fm.d._0.ph" title="区号" value="" id="phoneSection" class="inputtext input-tel-code" /> -
						<input type="text" name="_fm.d._0.pho" title="电话号码" value="" id="phoneCode" class="inputtext input-tel-num" /> -
						<input type="text" name="_fm.d._0.phon" title="分机" value="" id="phoneExt" class="inputtext input-tel-cell" />
						<span class="ex-margin-left ex-weaken-gray">区号-电话号码-分机</span>
						<input type=hidden class="pc:formatPhone" id="formatPhone" value="" name="_fm.d._0.p">
					</li>
					<li>
						<label  class="label-like" for="statusAddr">设为默认:</label>
						<input type="checkbox" name="_fm.d._0.s"  id="statusAddr" />
					</li>
                    <li class="container-btn">
					 <div class="skin-gray" id="createD">
						<button type="submit" class="short-btn" onclick="createOrUpdate()">保存</button>
											<!--	<a href="#nogo" data-url="http://delivery.taobao.com/station/show_station_taobao.htm?areaId=112222&amp;isStation=false" class="btn-deliver-station" id="J_DeliverStation1">使用代收货（自提）</a> -->
					 </div>
                    <div class="skin-gray" id="updateD" style="display:none">
						<button type="submit" class="short-btn" onclick="createOrUpdate()">保存</button>
												<a href="#nogo" data-url="http://delivery.taobao.com/station/show_station_taobao.htm?areaId=112222&amp;isStation=false" class="btn-deliver-station" id="J_DeliverStation2">使用代收货（自提）</a>
					</div>
					</li>
                </ul>
                <div class="tbl-deliver-address">
                    <table border="0" cellspacing="0" cellpadding="0" class="tbl-main">
                        <caption>已保存的有效地址</caption>
                        <colgroup>
                            <col class="col-man" />

                            <col class="col-area" />
                            <col class="col-address" />
                            <col class="col-postcode" />
                            <col class="col-phone" />
                            <col class="col-actions">
                        </colgroup>
						<tr class="thead-tbl-grade">
                            <th>收货人</th><th>所在地区</th><th>街道地址</th><th>邮编</th><th>电话/手机</th><th></th><th>操作</th>
                        </tr>
					<tr class="thead-tbl-address" id="975975752" >
                                        <td class="cell-align-center">王子彦</td>
            							<td> 福建省 福州市</td>
            								<td>街道40号</td>
            								<td class="cell-align-center">350607</td>
            								<!--处理单个电话号码，上下居中的问题：add by yundian-->
											<!--这里的座机和手机可能为null或“”或有值-->
																																																																																											            								<td>12345677</td>
                                            <td class="thead-tbl-status" style="color:blue"></td>
            								<td class="cell-align-center">
            									<a href="#" onclick="selectDeliver(975975752)">修改</a> |
            									<a href="#" onclick="del(975975752)">删除</a>
            								</td>
                                    </tr>
						    	        <tr class="thead-tbl-address" id="926750276" bgcolor=#C6D9F0 >
                                        <td class="cell-align-center">李林</td>
            							<td> 重庆 重庆市 沙坪坝区</td>
            								<td>重庆大学A区A栋</td>
            								<td class="cell-align-center">400038</td>
            								<!--处理单个电话号码，上下居中的问题：add by yundian-->
											<!--这里的座机和手机可能为null或“”或有值-->
																																																																																											            								<td>123456789</td>
                                            <td class="thead-tbl-status" style="color:blue">默认地址</td>
            								<td class="cell-align-center">
            									<a href="#" onclick="selectDeliver(926750276)">修改</a> |
            									<a href="#" onclick="del(926750276)">删除</a>
            								</td>
                                    </tr>
						    								
																						                    </table>
                    <p class="tbl-attach" style="margin-bottom:100px">最多保存20个有效地址</p>
                </div>
				</form>
            </div>
            <span class="mytaobao-rc-bt"><span></span></span>
        </div>
    </div>
    <div class="col-sub">
						<style>
		#Content .main-wrap,
		#content .main-wrap {
		    margin-left: 139px;
		}

		#Content .col-sub,
		#content .col-sub {
		    width: 139px;
			margin-left: -100%;
			*display: inline;
		}
	</style>
	<aside class="mt-menu" id="J_MtSideMenu">
		<div class="mt-avatar">
			<div class="mt-avatar-box" id="J_MtAvatarBox">
									<a class="mt-user-avatar" href="http://i.taobao.com/u/NzIwOTEzNzg5/front.htm?tracelog=snshomeside" target="_blank">
								</a>
			</div>
		</div>
	
	</aside>
    <!-- 注释不能删,解决ie6下面的一个bug -->
				</div>
			</div>
		</div>
		<!-- 页面content内容结束 -->
		<!-- from vmcommon -->
<div id="footer">
	<div class="g_foot">
    <div class="g_foot-ali">
    <a href="//news.alibaba.com/specials/aboutalibaba/aligroup/index.html">XX商城集团</a>
    <b>|</b>
    <a href="//www.alibaba.com">商城国际站</a>
    <b>|</b>
    <a href="//www.1688.com">XX商城中国站</a>
   
    </div>
    <div class="g_foot-nav" align="center">
        <a href="http://www.baidu.com">关于商城</a>
        <a href="http://www.baidu.com">网站地图</a>
        <a href="http://www.baidu.com">法律声明</a>
       
    </div>
    <span class="g_foot-toy"></span>
    <span class="g_foot-line"></span>
</div>

<style>
.g_foot{
  width: 960px;
  margin: 0 auto;
  font: 12px/1.5 tahoma,arial,宋体b8b\4f53;
  padding: 7px 0 9px;
  color: #b0b0b0;
  text-align: left !important;
  position: relative;
  clear:both;
}
.g_foot a{
  margin: 0 2px;
  color: #3e3e3e;
  text-decoration:none;
}
.g_foot a:hover{
  color: #F60;
  text-decoration: underline;

}
.g_foot-ali{
  margin-right: 100px;
  padding-left: 0;
  border-bottom: 1px solid #D3D3D3;
  padding-bottom: 8px;
  height: 18px;
}
.g_foot-nohover{
  cursor: default;
}
.g_foot-nohover:hover{
  color:#3e3e3e !important;
  text-decoration:none !important;
}
.g_foot-ali a,.g_foot-ali b{
  float: left;

}
.g_foot-ali b {
  margin: 0 2px;
  color:#d3d3d3;
  font-weight: normal;
  *margin-top:-1px;
  margin-top:-1px \0/;
}
.g_foot-nav{
  margin-top: 8px;
  line-height: 20px;
}
.g_foot-nav span{
  margin-left: 50px;
}
/* IE9 only */
:root .g_foot-toy {
    right:-20px\9; 
 } 
.g_foot-line{
  display: none;
  position: absolute;
  background: url(http://img01.taobaocdn.com/tps/i1/T1I_56Xl0wXXXXXXXX-104-1.png) no-repeat;
  width: 104px;
  height: 1px;
  right: 45px;
  top:33px;
}

.footer-more {
  cursor: pointer;
  z-index: 1;
  position: relative;
  padding-top: 1px;
  width: 82px;
  float: left;
  *top:-1px;
  top:-2px \0/;

}
.footer-more-trigger {
  position: absolute;

  padding: 6px 11px 4px 14px;
  width: 37px;
  line-height: 1.3;
  border: 1px solid #fff;
  left:-12px;
  top:-5px;
}

.footer-more-trigger .arrow{
    position: absolute;
    display: inline-block;
    font-size: 0;
    line-height: 0;
    width: 0;
    height: 0;
    border: dashed 4px;
}
.footer-more-trigger .arrow-d {
  border-color: #666 transparent transparent transparent;
  border-top-style: solid;
  right: 12px;
  top: 11px;
}
.footer-more-panel {
  text-align: left;
  position: absolute;
  right: 26px;
  bottom: -90px;
  padding: 7px 3px 2px 2px;
  border: 1px solid #C5C5C5;
  width: 57px;
  background: 
  white;
  line-height: 1.9;
  display: none;
}
.footer-more-panel a {
  float: none;
  margin-right: 3px;
}
.footer-more-hover .footer-more-trigger,.footer-more:hover .footer-more-trigger {
  border-color: #c5c5c5;
  background: #fff;
  border-bottom: 0;
}
.footer-more-hover .footer-more-panel,.footer-more:hover .footer-more-panel  {
  display: block;
}

.footer-more-hover .footer-more-trigger .arrow-d,.footer-more:hover .footer-more-trigger .arrow-d {
  -moz-transform: rotate(180deg);
  -moz-transform-origin: 50% 30%;
  -o-transform: rotate(180deg);
  -o-transform-origin: 50% 30%;
  -webkit-transform: rotate(180deg);
  -webkit-transform-origin: 50% 30%;
  transform: rotate(180deg);
  transform-origin: 50% 30%;
  filter: progid:DXImageTransform.Microsoft.BasicImage(rotation = 2);
  *top: 8px;
  top:8px \0/;
}
</style>

<!-- end vmcommon -->

	</div>
</body>
</html>