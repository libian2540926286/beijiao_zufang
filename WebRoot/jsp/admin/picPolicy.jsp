<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'picPolicy.jsp' starting page</title>
    
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
	        id : 'content7',
	        cssPath : './index.css'
	    });
	  </script>
	    <script language="javascript">  
		function insertTitle(path){  
		   var test1 = path.lastIndexOf("/");  //对路径进行截取
		   var test2 = path.lastIndexOf("\\");  //对路径进行截取
		   var test= Math.max(test1, test2)
		   if(test<0){  
		     document.getElementById("file").value = path;
		   }else{
		    document.getElementById("textfield").value = path.substring(test + 1); //赋值文件名
		   }  
		}  
      </script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页图片政策管理</a></li>
    <li><a href="#">首页图片政策上传</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
       <form method="post" action="picpol/addpicPol" enctype="multipart/form-data">
		<ul class="forminfo">		  
			<li>
			<label>文章标题</label>
			<input name="picPolTitle" type="text" class="dfinput" placeholder="请填写标题" />
			<i>标题不能超过30个字符</i>
			</li>
			<li>
			<label>图片</label>
			<div class="file-box">         
            <input type='text' name='textfield' id='textfield' class='txt' placeholder="图片大小不超过400K"/>  
            <input type='button' class='btn' value='浏览上传...' />
            <input type="file" name="file" class="file" id="pic" size="28" onchange="if(this.value)insertTitle(this.value);" accept = "image/*"/>      
            <i></i>  
            </div>		
			</li>
			<li>
			<label>发布时间</label>
			<input name="picPolTime" type="date"class="dfinput" />
			</li>
			<li>
			<label>来源</label>
			<input name="picPolSource" type="text" class="dfinput" value="" placeholder="请填写来源" /></li>
			<li>
            <label>文章内容<b>*</b></label>
            <textarea id="content7" name="picPolContent" style="width:700px;height:250px;visibility:hidden;"></textarea>   
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
