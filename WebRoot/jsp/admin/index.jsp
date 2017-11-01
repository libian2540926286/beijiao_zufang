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
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="jsp/admin/js/jquery.js"></script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">信息管理</a></li>
    <li><a href="#">管理员首页</a></li>    
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="jsp/admin/images/sun.png" alt="天气" /></span>
    <b>欢迎使用信息管理系统</b>
    <!-- <a href="#">帐号设置</a> -->
    </div>
    
    <div class="welinfo">
    <span><img src="jsp/admin/images/time.png" alt="时间" /></span>
    <i>您上次登录的时间：2013-10-09 15:22</i> 
    <!-- （不是您登录的？<a href="#">请点这里</a>） -->
    </div>
    <div class="xline"></div>
    
    
    <div class="welinfo">
    <span><img src="jsp/admin/images/dp.png" alt="提醒" /></span>
    <b>信息管理系统使用指南</b>
    </div>
    
    <ul class="infolist">
        <li>
            <span>您可以快速进行头条文章发布管理操作</span>
            <a class="ibtn">发布首页轮播图片新闻</a>
            <a class="ibtn">发布热点关注文章</a>
        </li>
        <li>
            <span>您可以快速发布政策</span>
            <a class="ibtn">发布区域政策</a>
            <a class="ibtn">发布行业政策</a>            
        </li>
        <li>
            <span>您可以进行用户管理、密码修改、账户管理等操作</span>
            <a class="ibtn">用户管理</a>
            <a class="ibtn">管理员账户管理</a>            
        </li>
    </ul>
    
    <div class="xline"></div>
    
    <div class="info"><b>查看网站使用指南，您可以了解到多种风格的B/S后台管理界面,软件界面设计，图标设计，手机界面等相关信息</b>(More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>)</div>
    <ul class="umlist">
        <li><a href="#">如何发布文章</a></li>
        <li><a href="#">如何访问网站</a></li>
        <li><a href="#">如何管理广告</a></li>
        <li><a href="#">后台用户设置(权限)</a></li>
        <li><a href="#">系统设置</a></li>
    </ul>
    
    
    </div>
</body>
</html>
