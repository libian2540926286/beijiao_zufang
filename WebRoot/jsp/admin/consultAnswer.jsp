<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'consultAnswer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	    function updateReply(){
		var form = document.forms[0];
		form.action = "<%=basePath%>consult/addReplyAnswer";
		form.method="post";
		form.submit();
		}
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
       <form  action="">
		<ul class="forminfo">	
		<c:if test="${not empty unreply}">
			<li>
			<input type="hidden" name="discussId" value="${unreply.discussId }"/>
			<label>咨询标题<b>*</b></label>
			<input name="disTitle" type="text" class="dfinput" value="${unreply.disTitle}" />
			<i>标题不能超过30个字符</i>
			</li>
			<li>
            <label>咨询内容</label>
            <textarea  name="disContent" class="textinput"  >${unreply.disContent}</textarea>   
            </li>
			<li>
			<label>咨询用户</label>
			<input name="disUser" type="text" class="dfinput" value="${unreply.userId}"/>
			<i></i>
			</li>
			<li>
			<label>回复时间</label>
			<input name="disTime" type="date" class="dfinput" value="${unreply.disTime}" />
			<i></i>
			</li>
			<!-- <li>
			<label>回复手机号码</label>
			<input name="consultTel" type="tel" class="dfinput" placeholder="请填写回复手机号码" />
			<i></i>
			</li> -->
			<li>
			<label>回复邮箱地址<b>*</b></label>
			<input id="consultEmail" name="email" type="email" class="dfinput" value="${unreply.email}" />
			<i></i>
			</li>
			<li>
            <label>答疑回复内容<b>*</b></label>
            <textarea  name="reply" class="textinput"></textarea>   
            </li>
            <li>
			<label>&nbsp;</label>
			<input  type="button"class="btn" value="提交" onclick="updateReply()"/>
			</li>	
			</c:if>		
		</ul>
        </form>
	</div>
  </body>
</html>
