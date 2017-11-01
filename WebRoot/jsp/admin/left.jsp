<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="jsp/admin/js/jquery.js"></script>
	
	<script type="text/javascript">
	$(function(){	
		//导航切换
		$(".menuson li").click(function(){
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});
		
		$('.title').click(function(){
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if($ul.is(':visible')){
				$(this).next('ul').slideUp();
			}else{
				$(this).next('ul').slideDown();
			}
		});
	})	
	</script>


</head>
  
  <body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>系统管理</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="jsp/admin/images/leftico01.png" /></span>信息管理
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="jsp/admin/index.jsp" target="rightFrame">管理员首页</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/right.jsp" target="rightFrame">浏览记录分析</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/imgtable.jsp" target="rightFrame">操作记录</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/form.jsp" target="rightFrame">首页轮播操作</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/focus.jsp" target="rightFrame">热点关注</a><i></i></li>      
        <li><cite></cite><a href="jsp/admin/interpretation.jsp" target="rightFrame">政策解读</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/media.jsp" target="rightFrame">媒体聚焦</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/file.jsp" target="rightFrame">文件发布</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="jsp/admin/images/leftico02.png" /></span>用户管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="jsp/admin/user.jsp" target="rightFrame">用户账号管理</a><i></i></li>
        <li><cite></cite><a href="jsp/admin/administrator.jsp" target="rightFrame">管理员账号管理</a><i></i></li>
        <!-- <li><cite></cite><a href="#">档案列表显示</a><i></i></li> -->
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="jsp/admin/images/leftico03.png" /></span>系统设置</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">自定义</a><i></i></li>
        <li><cite></cite><a href="#">常用资料</a><i></i></li>
        <li><cite></cite><a href="#">信息列表</a><i></i></li>
        <li><cite></cite><a href="#">其他</a><i></i></li>
    </ul>    
    </dd>  
    
    
    </dl>
</body>
</html>
