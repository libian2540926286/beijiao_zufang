<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
  <tr>
    <td>${company.companyId}</td>
    <td>${company.companyName}</td>
    <td>${company.companyIntro}</td>
  </tr>
  
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="list_1" items="${companys}">
    <tr>
    <td>${list_1.companyId}</td>
    <td>${list_1.companyName}</td>
    <td>${list_1.companyIntro}</td>
    </tr>
    </c:forEach>
<%--  </c:if> --%>



<tr>
    <td>${link.linkId}</td>
    <td>${link.linkAddress}</td>
    <td>${link.linkName}</td>
  </tr>
  <br>
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="links_1" items="${links}">
    <tr>
    <td>${links_1.linkId}</td>
    <td>${links_1.linkAddress}</td>
    <td>${links_1.linkName}</td>
    </tr>
    <br>
    </c:forEach>
<%--  </c:if> --%>



  <ul>
    <li>${news.newsId}</li>
    <li>${news.newsTitle}</li>
    <li>${news.newsAuthor}</li>
    <li><pre>${news.newsContent}</pre></li>
    <li>${news.newsSource}</li>
    <li>${news.newsLink}</li>
    <li>${news.newsTime}</li>
  </ul>
  
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="news1_1" items="${news1}">
    <tr>
    <td>${news1_1.newsId}</td>
    <td>${news1_1.newsTitle}</td>
    <td>${news1_1.newsAuthor}</td>
    <td>${news1_1.newsContent}</td>
    <td>${news1_1.newsSource}</td>
    <td>${news1_1.newsLink}</td>
    <td>${news1_1.newsTime}</td>
    </tr>
    </c:forEach>
<%--  </c:if> --%>


<tr>
    <td>${policy.policyId}</td>
    <td>${policy.polTitle}</td>
    <td>${policy.polContent}</td>
    <td>${policy.polSource}</td>
    <td>${policy.polTime}</td>
    <td>${policy.polType}</td>
    <td>${policy.polFile}</td>
  </tr>
  
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="policys_1" items="${policys}">
    <tr>
    <td>${policys_1.policyId}</td>
    <td>${policys_1.polTitle}</td>
    <td>${policys_1.polContent}</td>
    <td>${policys_1.polSource}</td>
    <td>${popolicys_1licy.polTime}</td>
    <td>${policys_1.polType}</td>
    <td>${policys_1.polFile}</td>
    </tr>
    </c:forEach>
<%--  </c:if> --%>


<tr>
    <td>${product.productId}</td>
    <td>${product.companyId}</td>
    <td>${product.productName}</td>
    <td>${product.productIntro}</td>
  </tr>
  
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="products_1" items="${products}">
    <tr>
    <td>${products_1.productId}</td>
    <td>${products_1.companyId}</td>
    <td>${products_1.productName}</td>
    <td>${products_1.productIntro}</td>
    </tr>
    </c:forEach>
<%--  </c:if> --%>



<tr>
    <td>${polInterpre.polInterpreId}</td>
    <td>${polInterpre.polInterpreTitle}</td>
    <td>${polInterpre.polInterpreAuthor}</td>
    <td>${polInterpre.polInterpreContent}</td>
    <td>${polInterpre.polInterpreSource}</td>
    <td>${polInterpre.polInterpreTime}</td>
  </tr>
  
<%-- <c:if test="${!empty companys}"> --%>
    <c:forEach var="polInterpres_1" items="${polInterpres}">
    <tr>
     <td>${polInterpres.polInterpreId}</td>
    <td>${polInterpres.polInterpreTitle}</td>
    <td>${polInterpres.polInterpreAuthor}</td>
    <td>${polInterpres.polInterpreContent}</td>
    <td>${polInterpres.polInterpreSource}</td>
    <td>${polInterpres.polInterpreTime}</td>
    </tr>
    </c:forEach>
<%--  </c:if> --%>

  </body>
</html>
