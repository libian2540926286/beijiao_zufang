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
    
    <title>My JSP 'policy_detail.jsp' starting page</title>
    
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
    <li><a href="#">查看政策</a></li>
    </ul>
    </div>
    
    <div class="detail">
     <c:if test="${not empty policys}">
     <%-- <div class="title">   
		<p>${policys.polTitle}</p>
		<span id="source">发布时间： ${policys.polTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp信息来源：${policys.polSource}</span>
		<hr>
      </div> --%>
      <div class="title">   
		<p>安徽省印发《关于做好2017年化解钢铁煤炭行业过剩产能中职工安置工作的通知》${policys.polTitle}</p>
		<span id="source">发布时间： 2017年10月9日${policys.polTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp信息来源：  国务院${policys.polSource}</span>
		<hr>
      </div>
      <div class="content">
      <p >${policys.polContent}为贯彻落实《人力资源社会保障部等五部门关于做好2017年化解钢铁煤炭行业过剩产能中职工安置工作的通知》（人社部发〔2017〕24号）精神，我厅会同省发展改革委、
                                      省经济和信息化委、省财政局、省国资委联合印发《关于做好2017年化解钢铁煤炭行业过剩产能中职工安置工作的通知》（皖人社发〔2017〕22号）。 
           </p>      
      </div>
	<br/><br/>
    </c:if>
       
   
    </div>
    
  </body>
</html>
