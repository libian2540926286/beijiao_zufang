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
    <c:forEach items="${news}" var="news">
      <div class="title">
		<p>北京日报：沿着习总书记指引的方向——北京努力建设全国科技创新中心${news.newsTitle}</p>
		<span id="source">发布时间：2017-10-20${news.newsTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp信息来源：${news.newsSource}</span>
		<hr>
      </div>
      <div class="content">
        <img src="jsp/admin/images/img12.jpg" >
		<%-- <img src="upload/pic/${news.newsLink}" width="1004px" height="480px"> --%>
		<p>沿着总书记指引的方向，北京勉力前行。1、国务院部署“多证合一”改革后，地方纷纷出台 “多证合一”方案，但各地所整合的证照数量和事项都不尽相同，还有一些地方把行政许可类证照也纳入“多证合一”改革范围，10月1日以后是否会在国家层面进行统一规范和明确？
　　答：“多证合一”改革是通过在更深层次、更广领域实现部门协同和信息共享，将有关涉企证照事项进一步整合到营业执照上，减少企业在进入市场前后办理的证照数量，使得企业在办理营业执照后即能达到预定可生产经营状态，缩短企业从设立开办到进入市场的时间。我们明确要求各地在整合范围上，要严格遵循《意见》要求，只整合信息采集、记载公示、管理备查类的一般经营项目涉企证照事项，以及企业登记信息能够满足政府部门管理需要的涉企证照事项，对于关系国家安全、经济安全和公民生命财产安全的行政许可类事项不予整合，确保改革依法合规、于法有据。对于相关涉企证照与营业执照由同一部门发放的，对证照事项要加强管理力度。同时，在工作推进上，要求各地坚持省级统筹，做到统一标准、统一事项、统一部署、统一实施，确保“全省一盘棋”，各地、市的改革要在省级统一规划的范畴下部署开展。
　${news.newsContent}</p>
		</div>
	  <br/><br/>
	 </c:forEach>
	 </div>
    
  </body>
</html>
