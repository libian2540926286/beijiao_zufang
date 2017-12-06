<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>我要咨询页面</title>
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<link href="css/mui.min.css" rel="stylesheet" />
	<link href="css/consult.css" rel="stylesheet" />

  </head>
  
  <body>
  
    	<script src="js/mui.min.js"></script>
		<script type="text/javascript">
			mui.init();
			
			mui('body').on('tap','a',function(){
				window.top.location.href=this.href;
			});
			
		</script>
		<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    	<script type="text/javascript" src="js/consult.js"></script>
		
		<!-- 主页面容器 -->
		<div class="mui-inner-wrap">
		    <!-- 头部（从左到右：侧滑按钮、标题、搜索框）-->
		    <header id="head" class="mui-bar mui-bar-nav">
		      	<a id="back" href="tab-personal.html"><button type="button" class="mui-btn mui-btn-primary mui-btn-outlined">返回</button></a>
		      	<h1 id="head_title" class="mui-title">我要咨询</h1>
		    </header>

			<!--正文部分-->
		    <div class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">

   				<div id="consult">
   					<form class="mui-input-group">
					    <div class="mui-input-row consult_information">
					        <label>咨询标题</label>
					    	<input type="text" class="mui-input-clear" placeholder="请输入咨询标题">
					    </div>
					    <div class="mui-input-row consult_information">
					        <label>手机号码</label>
					        <input type="number" class="mui-input-clear" placeholder="请输入手机号码">
					    </div>
					    <div class="mui-input-row consult_information">
					        <label>电子邮箱</label>
					        <input type="email" class="mui-input-clear" placeholder="请输入电子邮箱">
					    </div>
					    <div id="consult_content">
					        <label>咨询内容</label>
					        <textarea type="text" placeholder="请输入详细咨询内容"></textarea>
					    </div>
					    <div class="mui-button-row">
					        <button id="ensure" type="button" class="mui-btn mui-btn-primary" >确认</button>
					        <a href="tab-personal.html"><button id="cansel" type="button" class="mui-btn mui-btn-danger" >取消</button></a>
					    </div>
					</form>
   				</div>
   				
			</div>
		   	</div>
		</div>
		
  </body>
</html>
