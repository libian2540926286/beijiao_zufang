<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%-- <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guide_detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/guide-detail.css" type="text/css" rel="stylesheet" />
	<link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
   
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">查看申报指南</a></li>
    </ul>
    </div>
    
 <%--    <div class="detail">
    <c:if test="${notices no empty}">
      <div class="title">
		<p>${notices.noticeTitle}</p>
		<span id="source">申报时间：${notices.noticeTime}</span>
		<hr>
      </div>
      <div class="content">
		<p>${notices.noticeContent}</p>
	  </div>
	  <br/><br/>
	 </c:if>
   </div> --%>
   
  <div id="content2">
  <c:if test="${not empty affair}">
    <div id="title2">
      <span>${affair.workName}</span>
      <table border="1">
        <tr>
          <th>办理地点：</th>
          <td>${affair.place}</td>
          <th>办理时间：</th>
          <td>${affair.timeRange}</td>
          <th>承诺期限：</th>
          <td>${affair.timeRange}</td>
          <th>咨询电话：</th>
          <td>${affair.phone}</td>
        </tr>
      </table>
    </div>
    
    <div id="introduce2">
      <span>事项介绍</span>
      <ul>
        <li><span class="title">事项名称：</span><span class="content">${affair.workName}</span></li>
        <li><span class="title">法定实施主体：</span><span class="content">${affair.depart}</span></li>        
        <li><span class="title">主体范围：</span><span class="content">${affair.departRange} </span></li>
        <li><span class="title">办事依据：</span><span class="content">${affair.legal}</span></li>
        <li><span class="title">办理地点：</span><span class="content">${affair.place}</span></li>
        <li><span class="title">办公时间：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">咨询电话：</span><span class="content">${affair.phone}</span></li>
        <li><span class="title">法定期限：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">承诺期限：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">收费依据和标准：</span><span class="content">${affair.reference}</span></li>
        <li><span class="title">有效期限：</span><span class="content">${affair.timeRange} </span></li>
      </ul>
    </div>
    </c:if>
	</div>
   
  </body>
</html>
