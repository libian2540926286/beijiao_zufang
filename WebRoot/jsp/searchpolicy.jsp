<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchpolicy.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    <div class="file">
		<ul>
		<c:forEach items="${policys}" var="policys">
	  	   <li>
			 <img src="images/dian.png" width="5px" height="5px" alt="" />
			 <a href="policy/toPolicy?policyId=${policys.policyId}" title="">${policys.polTitle}</a>
			 <span id="time">[${policys.polTime}]</span>
		  </li>
	  	</c:forEach>
	  	 <!--  <li>
		    <img src="images/dian.png" width="5px" height="5px"alt="" />
		    <a href="" title="">办好热线事，搭起民心桥——国务院第四次大督查热线督查综述</a>
		    <span id="time">[2017-10-09]</span>
		  </li>  -->
		</ul>
	</div>
	
  </body>
</html>
