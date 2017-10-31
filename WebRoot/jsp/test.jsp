<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <a href="company/toCompany?companyId=1">查询公司信息</a>
    <a href="company/getFive">查询公司信息</a>
    <a href="company/companyList">查询公司信息</a>
    <a href="company/updateCompany">修改公司信息</a>
    <form method="post" action="company/addCompany">
    <input type="text" name="companyName" ></d>
     <input type="text" name="companyIntro">
     <input type="submit" name="submit">
    </form>
    
 </br>  
 <!-- link测试 -->
 <p>link测试</p>
  <a href="link/toLink?linkId=1">查询链接</a>
    <a href="link/toListLink">查询所有</a>   
    <form method="post" action="link/addLink">
    <input type="text" name="linkAddress" ></d>
     <input type="submit" name="submit">
    </form>  
    <br>
    <p>修改链接<p>
    <form method="post" action="link/updateLink">
    <input type="hidden" name="linkId" value="2">
    <input type="text" name="linkAddress" ></d>
    <input type="text" name="linkName" ></d>
     <input type="submit" name="submit">
    </form>
<!-- news测试 -->
 <p>news测试</p>
  <a href="news/toNews?newsId=1">查询news</a>
    <a href="news/toListNews">查询所有news</a>
    <a href="news/updateCompany">修改news</a>
    <form method="post" action="news/addNews">
    <input type="text" name="linkAddress" ></d>
     <input type="submit" name="submit">
    </form> 
    <!-- policy测试 -->
 <p>policy测试</p>
  <a href="policy/toPolicy?policyId=1">查询policy</a>
    <a href="policy/toListPolicy">查询所有policy</a>
    <a href="policy/updateCompany">修改policy</a>
    <form method="post" action="addPolicy/addLink">
    <input type="text" name="linkAddress" ></d>
     <input type="submit" name="submit">
    </form> 
    <!-- 政策解读测试 -->
 <p>政策解读测试</p>
  <a href="polInterpre/toPolInterpre?polInterpreId=1">查询政策解读</a>
    <a href="polInterpre/updateCompany">修改政策解读</a>
    <form method="post" action="polInterpre/addPolInterpre">
    <input type="text" name="linkAddress" ></d>
     <input type="submit" name="submit">
    </form> 
    <!-- 产品测试 -->
 <p>产品测试</p>
  <a href="product/toProduct?productId=1">查询产品</a>
    <a href="product/toListProduct">查询所有产品</a>
    <a href="product/updateCompany">修改产品</a>
    <form method="post" action="product/addProduct">
    <input type="text" name="linkAddress" ></d>
     <input type="submit" name="submit">
    </form> 
    
  </body>
</html>
