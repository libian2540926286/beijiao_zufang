<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'consultAnswer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
    <link href="jsp/admin/css/select.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jsp/admin/js/jquery.js"></script>
	<script type="text/javascript" src="jsp/admin/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="jsp/admin/js/select-ui.min.js"></script>
	<script type="text/javascript" src="jsp/admin/editor/kindeditor.js"></script>
	
	<script type="text/javascript">
	    KE.show({
	        id : 'consultContent',
	        cssPath : './index.css'
	    });
	</script>
	
	

  </head>
  
  <body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">信息管理</a></li>
    <li><a href="#">咨询答疑</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
       <form method="post" action="">
		<ul class="forminfo">		  
			<li>
			<label>咨询标题<b>*</b></label>
			<input name="consultTitle" type="text" class="dfinput" placeholder="请填写咨询标题"  />
			<i>标题不能超过30个字符</i>
			</li>
			<li>
			<label>咨询用户</label>
			<input name="consultUser" type="text" class="dfinput" placeholder="请填写咨询用户" />
			<i></i>
			</li>
			<li>
			<label>回复时间</label>
			<input name="consultDate" type="date" class="dfinput" placeholder="请填写回复时间" />
			<i></i>
			</li>
			<!-- <li>
			<label>回复手机号码</label>
			<input name="consultTel" type="tel" class="dfinput" placeholder="请填写回复手机号码" />
			<i></i>
			</li> -->
			<li>
			<label>回复邮箱地址<b>*</b></label>
			<input id="consultEmail" name="consultEmail" type="email" class="dfinput" placeholder="请填写回复邮箱地址" />
			<i></i>
			</li>
			<li>
            <label>答疑回复内容<b>*</b></label>
            <textarea id="consultContent" name="consultContent" class="textinput"  ></textarea>   
            </li>
            <li>
			<label>&nbsp;</label>
			<input  type="submit"class="btn" value="提交" />
			</li>			
		</ul>
        </form>
	</div>
  </body>
</html>
