<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'news_detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">	
	-->
	<link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">查看媒体聚焦</a></li>
    </ul>
    </div>
    
    <div class="detail">
    <c:if test="${news no empty}">
      <div class="title">
		<p>${news.newsTitle}</p>
		<span id="source">发布时间：${news.newsTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp信息来源：${news.newsSource}</span>
		<hr>
      </div>
      <div class="content">
	    <img src="upload/pic/${news.newsLink}" width="1004px" height="480px">
		<p>${news.newsContent}</p>
		</div>
	  <br/><br/>
	 </c:if>
	 </div>
    
  </body>
</html>
