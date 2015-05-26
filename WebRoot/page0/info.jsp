<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
			我的商城
		</title>
        
	</head>
	<body>
    <div id="fix"></div>
		<div id="content" class="layout grid-s160m0">
			<link rel="stylesheet" href="css/pf-base.css"> 
			<div class="col-main">
				<div class="main-wrap">
					<!--start sns-config-->
					<div id="profile" class="sns-config">
						<div class="sns-tab tab-app" align="right" >
							<ul>
								<!--<li class="selected"> -->
									<span style="margin-right:200px">
										<font color="#FC0" size="+3"><B>个人信息</B></font>
									</span>
								<!--</li> -->
							</ul>
						</div>
						<div class="sns-box box-detail">
							<div class="bd">
								<div class="sns-nf">
									<!--step end-->
									<form id="baseInfoForm" name="baseInfoForm" method="post" class="infoForm">
										
								
                           <p style="margin-left:140px">
                                	<label for="">当前头像：</label>
                                	<span class="pf-avatar-box">
                                		<a class="pf-avatar">
        <img src="images/104.jpg" alt="" width="80" height="80"/>
                                		</a>
                                		<a href="http://www.baidu.com" class="pf-edit-avatar">编辑头像</a>
                                	</span>
                                </p>             
                                        
							<table border="0" align="center" cellpadding="1" cellspacing="1" >
                            		<tr>
                                       <td><p>
                                       		<td><label>昵称<font color="#FF0000">*</font></label></td>
                                            <td><input id="J_uniqueName" name="_fm.b._0.u" class="f-txt" type="text" value=""
												maxlength="25" style="width:136px"></td>
                                       </p></td>
                                       <td><p>
                                       		<td><label>真实姓名：</label></td>
                                            <td><input id="J_realname" name="_fm.b._0.r" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                       </p></td>
                                    </tr>
                                    
                                    <tr>
                                    	<td><p>
                                        	<td><label>性别<font color="#FF0000">*</font></label></td>
                                            <td>
												<label for="J_gender1" class="except">
													<input id="J_gender1" type="radio" name="_fm.b._0.g" value="0" />
													男
												</label>
												<label for="J_gender2" class="except">
													<input id="J_gender2" type="radio" name="_fm.b._0.g" value="1" />
													女
												</label></td>
                                        </p></td>
                                        
                                        <td><p>
                                        	<td><label>生日：</label></td>
                                            <td><select id="J_Year" name="_fm.b._0.y">
													<option selected="selected">
														年
													</option>
													<option value="1940">
														1940
													</option>
													<option value="1941">
														1941
													</option>
                                                    <option value="1942">
														1942
													</option>
													<option value="1943">
														1943
													</option>
													<option value="1944">
														1944
													</option>
													<option value="1945">
														1945
													</option>
													<option value="1946">
														1946
													</option>
													<option value="1947">
														1947
													</option>
													<option value="1948">
														1948
													</option>
													<option value="1949">
														1949
													</option>
													<option value="1950">
														1950
													</option>
													<option value="1951">
														1951
													</option>
													<option value="1952">
														1952
													</option>
													<option value="1953">
														1953
													</option>
													<option value="1954">
														1954
													</option>
													<option value="1955">
														1955
													</option>
													<option value="1956">
														1956
													</option>
													<option value="1957">
														1957
													</option>
													<option value="1958">
														1958
													</option>
													<option value="1959">
														1959
													</option>
													<option value="1960">
														1960
													</option>
													<option value="1961">
														1961
													</option>
													<option value="1962">
														1962
													</option>
													<option value="1963">
														1963
													</option>
													<option value="1964">
														1964
													</option>
													<option value="1965">
														1965
													</option>
													<option value="1966">
														1966
													</option>
													<option value="1967">
														1967
													</option>
													<option value="1968">
														1968
													</option>
													<option value="1969">
														1969
													</option>
													<option value="1970">
														1970
													</option>
													<option value="1971">
														1971
													</option>
													<option value="1972">
														1972
													</option>
													<option value="1973">
														1973
													</option>
													<option value="1974">
														1974
													</option>
													<option value="1975">
														1975
													</option>
													<option value="1976">
														1976
													</option>
													<option value="1977">
														1977
													</option>
													<option value="1978">
														1978
													</option>
													<option value="1979">
														1979
													</option>
													<option value="1980">
														1980
													</option>
													<option value="1981">
														1981
													</option>
													<option value="1982">
														1982
													</option>
													<option value="1983">
														1983
													</option>
													<option value="1984">
														1984
													</option>
													<option value="1985">
														1985
													</option>
													<option value="1986">
														1986
													</option>
													<option value="1987">
														1987
													</option>
													<option value="1988">
														1988
													</option>
													<option value="1989">
														1989
													</option>
													<option value="1990">
														1990
													</option>
													<option value="1991">
														1991
													</option>
													<option value="1992">
														1992
													</option>
													<option value="1993">
														1993
													</option>
													<option value="1994">
														1994
													</option>
													<option value="1995">
														1995
													</option>
													<option value="1996">
														1996
													</option>
													<option value="1997">
														1997
													</option>
													<option value="1998">
														1998
													</option>
													<option value="1999">
														1999
													</option>
													<option value="2000">
														2000
													</option>
													<option value="2001">
														2001
													</option>
													<option value="2002">
														2002
													</option>
													<option value="2003">
														2003
													</option>
													<option value="2004">
														2004
													</option>
													<option value="2005">
														2005
													</option>
													<option value="2006">
														2006
													</option>
													<option value="2007">
														2007
													</option>
													<option value="2008">
														2008
													</option>
													<option value="2009">
														2009
													</option>
													<option value="2010">
														2010
													</option>
													<option value="2011">
														2011
													</option>
													<option value="2012">
														2012
													</option>
													<option value="2013">
														2013
													</option>
												
												</select>
												<select id="J_Month" name="_fm.b._0.m">
													<option selected="selected">
														月
													</option>
													<option value="1">
														1
													</option>
													<option value="2">
														2
													</option>
													<option value="3">
														3
													</option>
													<option value="4">
														4
													</option>
                                                    <option value="5">
														5
													</option>
													<option value="6">
														6
													</option>
													<option value="7">
														7
													</option>
													<option value="8">
														8
													</option>
													<option value="9">
														9
													</option>
													<option value="10">
														10
													</option>
													<option value="11">
														11
													</option>
													<option value="12">
														12
													</option>
													
												</select>
												<select id="J_Date" name="_fm.b._0.d">
													<option selected="selected">
														日
													</option>
													<option value="1">
														1
													</option>
													<option value="2">
														2
													</option>
                                                    <option value="3">
														3
													</option>
													<option value="4">
														4
													</option>
													<option value="5">
														5
													</option>
													<option value="6">
														6
													</option>
													<option value="7">
														7
													</option>
													<option value="8">
														8
													</option>
													<option value="9">
														9
													</option>
													<option value="10">
														10
													</option>
													<option value="11">
														11
													</option>
													<option value="12">
														12
													</option>
													<option value="13">
														13
													</option>
													<option value="14">
														14
													</option>
													<option value="15">
														15
													</option>
													<option value="16">
														16
													</option>
													<option value="17">
														17
													</option>
													<option value="18">
														18
													</option>
													<option value="19">
														19
													</option>
													<option value="20">
														20
													</option>
													<option value="21">
														21
													</option>
													<option value="22">
														22
													</option>
													<option value="23">
														23
													</option>
													<option value="24">
														24
													</option>
													<option value="25">
														25
													</option>
													<option value="26">
														26
													</option>
													<option value="27">
														27
													</option>
													<option value="28">
														28
													</option>
													<option value="29">
														29
													</option>
													<option value="30">
														30
													</option>
													<option value="31">
														31
													</option>
													
												</select></td>
                                        </p></td>
                                    </tr>
                                    
                                    <tr>
                                    	<td><p>
                                        	<td><label>年龄：</label></td>
                                            <td>  <input id="J_age" name="J_age" class="f-txt" type="text" value=""maxlength="6" style="width:136px"></td>
                                        </p></td>
                                        
                                        <td><p>
                                        	<td><label>星座：</label></td>
                                            <td> <select id="astro" name="astro" >
													<option value="">---请选择---</option>
                                                    <option value="">白羊座</option>
                                                    <option value="">金牛座</option>
                                                    <option value="">双子座</option>
                                                    <option value="">巨蟹座</option>
                                                    <option value="">狮子座</option>
                                                    <option value="">处女座</option>
                                                    <option value="">天秤座</option>
                                                    <option value="">天蝎座</option>
                                                    <option value="">射手座</option>
                                                    <option value="">摩羯座</option>
                                                    <option value="">水瓶座</option>
                                                    <option value="">双鱼座</option>
                                                  </select></td>
                                        </p></td>
                                    </tr>
                                    
                                    <tr>
                                    	<td><p>
                                        	<td><label>职业：</label></td>
                                            <td><input id="J_job" name="J_job" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                        </p></td>
                                        
                                        <td><p>
                                        	<td><label>职位：</label></td>
											<td><input id="J_joblocation" name="J_joblocation" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                        </p></td>
                                    </tr>
                                    
                                    <tr>
                                    	<td><p>
                                        	<td><label>学历：</label></td>
                                            <td><select>
                                            	<option>--请选择--</option>
                                                <option>小学及以下</option>
                                                <option>初中</option>
                                                <option>高中</option>
                                                <option>中专</option>
                                                <option>大专</option>
                                                <option>本科</option>
                                            </select></td>
                                        </p></td>
                                        
                                        <td><p>
                                        	<td><label>学校：</label></td>
                                            <td><input id="J_school" name="J_school" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                        </p></td>
                                    </tr>
                                    
                                     <tr>
                                    	<td><p>
                                        	<td><label>固定电话：</label></td>
                                            <td><input id="J_phone" name="J_phone" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                        </p></td>
                                        
                                        <td><p>
                                        	<td><label>手机：</label></td>
                                            <td><input id="J_telphone" name="J_telphone" class="f-txt" type="text" value=""
												maxlength="6" style="width:136px"></td>
                                        </p></td>
                                    </tr><br />
                                    
                                       <table border="0" style="margin-left:133px" cellpadding="1" cellspacing="1" >
                                       	<tr>
                                        	<td><label style="margin-left:5px">邮箱：</label></td>
                                            <td><input id="J_mail" name="J_mail" class="f-txt" type="text" value=""
												maxlength="6" style=" margin-left:16px ;width:373px">
                                      </td>
                                        </tr>
                                        
                                        <tr>
                                        	<td><label style="margin-left:5px">主页：</label></td>
                                            <td><input id="J_telphone" name="J_telphone" class="f-txt" type="text" value=""
												maxlength="6" style=" margin-left:16px ;width:373px">
                                      </td>
                                        </tr>
                                        
                                         <tr>
                                        	<td><label style="margin-left:5px">居住地：</label></td>
                                            <td><input id="J_live" name="J_live" class="f-txt" type="text" value=""
												maxlength="6" style=" margin-left:16px ;width:373px"> </td>
                                        </tr>
                                    <!-- <tr>
                                    	<td><p>
                                        	<td></td>
                                            <td></td>
                                        </p></td>
                                    </tr> -->
                                     </table>
   		
             	
										</div>
                                       
										<div class="act skin-blue" align="center">
											<span class="btn n-btn">
												<button type="submit" id="J_saveProfile" style="width:130px; height:30px">
													<font size="+1">保存</font>
												</button>
											</span>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				
				</div>
                
                
			<!-- 任务 布点 基本资料 任务ID 3812005-->
			<div class="sns-widget" data-mission='{"missionId":"3812005"}' style='display:none;'>
			</div>
			
		<!-- from vmcommon -->
		<div id="footer" align="center" style="margin-top:70px">
			<div class="g_foot" align="center">
				<div class="g_foot-ali" align="center">
					<a href="//news.alibaba.com/specials/aboutalibaba/aligroup/index.html">
						XX商城集团
					</a>
					<b>
						|
					</b>
					<a href="//www.alibaba.com">
						XX商城
					</a>
					<b>
						|
					</b>
					<a href="//www.1688.com">
						商城中国站
					</a>
                    <b>
						|
					</b>
					<a href="//www.1688.com">
						商城国际站
					</a>
					
				</div>
				<span class="g_foot-toy">
				</span>
				<span class="g_foot-line">
				</span>
			</div>
			<style>
				/*位置*/.g_foot{ width: 960px; margin: 0 auto; font: 12px/1.5 tahoma,arial,宋体b8b\4f53;
				padding: 7px 0 9px; color: #b0b0b0; text-align: left !important; position:
				relative; clear:both; } 
				/*链接字体*/.g_foot a{ margin: 0 2px; color: #3e3e3e; text-decoration:none;
				} 
				/*底部线*/.g_foot-ali{margin-right: 100px; padding-left: 0; border-bottom: 1px solid #D3D3D3;
				padding-bottom: 8px; height: 18px; color:#CC6600 } 
				.g_foot-nohover{ cursor: default;
				} 
				.g_foot-line{ display:none; position: absolute; no-repeat; width: 104px; height: 1px; right: 45px; top:33px; } 	
			
			</style>
			<div id="server-num" >
				www.myshop.com
			</div>
		</div>
		<!-- end vmcommon -->
		</div>
		<div class="hidden" id="Jianghu_tb_token">
			<input name='_tb_token_' type='hidden' value='RymSS7xixeen'>
		</div>
	
	</body>

</html>