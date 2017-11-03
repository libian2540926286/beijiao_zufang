<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
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
			<h1>欢迎来到新政策网</h1>		
		</div>

		<form id="login">
			<li>
				<input type="text" value="请输入用户名" placeholder="请输入用户名"
				minlength="2" maxlength="12" class="text" required>
				<a href="#" class=" icon user"></a>
			</li>
			<br/>

			<li>
				<input type="password" class="onlyNumAlpha" placeholder="请输入密码"
				minlength="6" maxlength="12" required> 
				<a href="#" class="icon lock"></a>

				<script type="text/javascript">
					$('.onlyNumAlpha').focus(function() {
						$(this).keypress(function (event) {  
							var eventObj = event || e;  
							var keyCode = eventObj.keyCode || eventObj.which;  
							if ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122))  
									return true;  
							else  
									return false;  
						}).focus(function () {  
								this.style.imeMode = 'disabled';  
						}).bind("paste", function () {  
								var clipboard = window.clipboardData.getData("Text");  
								if (/^(\d|[a-zA-Z])+$/.test(clipboard))  
										return true;  
								else  
										return false;  
						});   
					});
				</script>
			</li>
			<br/>

			<li>
				<select class="list_content" minlength="6" maxlength="12" required>
				<option value="0">123</option>
				<option value="1">455</option>
				</select>
			</li>
      <br/>

			<div class="submit">
				<input type="submit" onclick="myFunction()" value="确定" >
				<input id="exit"  value="取消" >
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
