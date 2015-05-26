<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script>
window.onerror = new Function("return(false);")
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script type="text/javascript">
            var  interval=1;
            function changeBoxMarginLeft(v,val){
                if(v.style.marginLeft == ""){
                    v.style.marginLeft = "0px";
                }
                var current = Number(v.style.marginLeft.substr(0,v.style.marginLeft.indexOf("p")));
                v.style.marginLeft = Number(current + val) + "px";
            }

            function changeBoxMarginTop(v,val){
                if(v.style.marginTop == ""){
                    v.style.marginTop = "0px";
                }
                var current = Number(v.style.marginTop.substr(0,v.style.marginTop.indexOf("p")));
                v.style.marginTop = Number(current + val) + "px";
            }
            function over(v){
                var maxWidth = 800;
                if(v.interval != undefined){
                    clearInterval(v.interval);
                }
                v.intervalID = setInterval(function(){
                    if(v.width < maxWidth) {
                        v.width = v.width + 60;
                        topchange = v.width * 3/4 - v.height;
                        v.height = v.width * 3/4;
                        changeBoxMarginLeft(v,-60);
                        changeBoxMarginTop(v,-topchange/2);
                    }
                    else{
                        clearInterval(v.intervalID); 
                    }
                },interval);
            }
            function out(v){ 
                var minWidth = 600;
                clearInterval(v.intervalID);
                v.interval = setInterval(function(){
                    if(v.width > minWidth) {
                        v.width = v.width - 60 ;
                        v.height = v.width * 3/4;
                        changeBoxMarginLeft(v,60);
                        changeBoxMarginTop(v,topchange/2)
                    }
                    else{
                        clearInterval(v.interval); 
                    }
                },interval);
            }
  </script>
</head>

<body>

<MARQUEE onmouseover=this.stop() onmouseout=this.start() scrollAmount=10 
scrollDelay=80><IMG onmouseover=over(this) 
style="MARGIN-TOP: 9px; MARGIN-LEFT: 0px" onmouseout=out(this) height=450
src="../images/26.jpg" width=600
intervalID="30690093" interval="30690094"> <IMG onmouseover=over(this) 
style="MARGIN-TOP: 9px; MARGIN-LEFT: 0px" onmouseout=out(this) height=450 
src="../images/27.jpg" width=600
intervalID="30690091" interval="30690092"> <IMG onmouseover=over(this) 
style="MARGIN-TOP: 9px; MARGIN-LEFT: 0px" onmouseout=out(this) height=450 
src="../images/28.jpg" width=600
intervalID="30690091" interval="30690092"></MARQUEE>

</body>

</html>
