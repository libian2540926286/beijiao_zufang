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
	<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
	<script src="js/jquery-validation-1.17.0/lib/jquery.js"></script>
	<script src="js/jquery-validation-1.17.0/dist/jquery.validate.min.js"></script>
	<script src="js/jquery-validation-1.17.0/dist/localization/messages_zh.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script>
		$(document).ready(function(c) {
			$('.alert-close').on('click', function(c){
				$('.message').fadeOut('slow', function(c){
						$('.message').remove();
				});
			});	  
		});
	
		$.validator.setDefaults({
	    submitHandler: function() {
	      alert("提交事件!");
	    }
		});
	
		$().ready(function() {
			$("#login").validate();
	</script>

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
					<input type="text" value="请输入用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入用户名';}"
					minlength="2" maxlength="12" class="text" required>
					<a href="#" class=" icon user"></a>
				</li>
				<br/>
	
				<li>
					<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"
					minlength="6" maxlength="12" required> 
					<a href="#" class="icon lock"></a>
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
