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
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery-1.7.2.min.js"></script>
	
  </head>
  
  <body>
	<!-- contact-form -->	
	<div class="message warning">
		<div class="inset">
	
			<div class="login-head">
				<h1>欢迎来到新政策网，请登录</h1>		
			</div>
	
			<form id="login" action="index/login" method="post">
			  <ul>
				<li>
					<input type="text" placeholder="请输入用户名" name="username" minlength="2" maxlength="12" class="text" required>
					<a href="#" class=" icon user"></a>
				</li>
				<br/>	
				<li>
					<input type="password" placeholder="请输入密码" name="password" minlength="6" maxlength="12" required> 
					<a href="#" class="icon lock"></a>
				</li>
				<br/>
	         </ul>
				<div class="submit">
					<input type="submit" value="登录" >
					<input id="exit" type="button" onclick="javascript:window.location.href='index/toindex'" value="取消" >
					<h4><a href="#">忘记密码?</a></h4>
					<div class="clear">  </div>	
				</div>
			</form>
		</div>					
	</div>
	
	<!--- footer -->
	<div class="footer">
	
	</div>
	
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
  </body>
</html>
