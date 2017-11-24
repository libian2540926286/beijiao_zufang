<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--    <link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="jsp/admin/js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){	
		//顶部导航切换
		$(".nav li a").click(function(){
			$(".nav li a.selected").removeClass("selected")
			$(this).addClass("selected");
		})	
	})	
	</script>
  </head>
  
  <body style="background:url(jsp/admin/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="jsp/admin/main.jsp" target="_parent"><img src="jsp/admin/images/logo.png" title="系统首页" /></a>
    </div>
        
    <!-- <ul class="nav">
    <li><a href="default.jsp" target="rightFrame" class="selected"><img src="jsp/admin/images/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
    <li><a href="imgtable.jsp" target="rightFrame"><img src="jsp/admin/images/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
    <li><a href="imglist.jsp"  target="rightFrame"><img src="jsp/admin/images/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
    <li><a href="tools.jsp"  target="rightFrame"><img src="jsp/admin/images/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="computer.jsp" target="rightFrame"><img src="jsp/admin/images/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
    <li><a href="tab.jsp"  target="rightFrame"><img src="jsp/admin/images/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul> -->
            
    <div class="topright">    
    <ul>
		<li>
		<span><img src="jsp/admin/images/help.png" title="帮助"class="helpimg" /></span>
		<a href="#">帮助</a>
		</li>
		<li><a href="#">关于</a></li>
		<li><a href="admin/logout" target="_parent">退出</a></li>
	</ul>
	
   <c:if test="${not empty sessionAdmin}"> 
    <div class="user">
    <span>${session.adminName}</span>
    <!-- <i>消息</i>
    <b>5</b> -->
    </div>    
    </c:if>
    </div>
</body>
</html>
