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
    
    <title>政策解读</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div class="file">
			<ul>
			<c:forEach items="${polInterpres}" var="polInterpres">
		  		<li>
		  			<img src="images/dian.png" width="5px" height="5px"alt="" />
		  			<a href="polInterpre/toPolInterpre?polInterpreId=${polInterpres.polInterpreId}" title="">${polInterpres.polInterpreTitle}</a>
		  			<span id="time">[${polInterpres.polInterpreTime}]</span>
		  		</li>
		  	</c:forEach>
			</ul>
		</div>
  </body>
</html>
