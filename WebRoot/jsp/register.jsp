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
			<h1>欢迎来到新政策网，请注册</h1>		
		</div>

		<form id="login" method="get" action="index/reg" >
		<ul>
		
			<li>
				<input type="text" name="username" value="" placeholder="请输入用户名" minlength="2" maxlength="12" class="text" required>
				<a href="#" class=" icon user"></a>
			</li>
			<br/>

			<li>
				<input type="password" name="password" class="onlyNumAlpha" placeholder="请输入密码" minlength="6" maxlength="12" required> 
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
				<select name="pClassName" class="list_content" minlength="6" maxlength="12" required>
				<option value="机械化工">机械化工</option>
				<option value="交通汽车">交通汽车</option>
				<option value="房产建材">房产建材</option>				
				<option value="服装纺织">服装纺织</option>
				<option value="IT互联网">IT互联网</option>
				<option value="文化传媒">文化传媒</option>
				<option value="医药">医药</option>
				<option value="食品">食品</option>
				<option value="农林渔牧">农林渔牧</option>
				
				</select>
			</li>
           <br/>

          </ul>	
			<div class="submit">
				<input type="submit" value="确定注册" >
				<input type="button" id="exit" onclick="javascript:window.location.href='/'" value="取消" >
				<div class="clear"> 
		       </div>	
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
