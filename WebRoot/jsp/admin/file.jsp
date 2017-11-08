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
    
    <title>My JSP 'file.jsp' starting page</title>
    
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
		     document.getElementById("fileName").value = path;
		   }else{
		    document.getElementById("fileName").value = path.substring(test + 1); //赋值文件名
		   }  
		}  
      </script>
	  
	  
	<script type="text/javascript">
	$(document).ready(function(e) {
	    $(".select1").uedSelect({
			width : 345			  
		});
		$(".select2").uedSelect({
			width : 167  
		});
		$(".select3").uedSelect({
			width : 100
		});
	});
	</script>
  </head>
  
 <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">系统设置</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <form method="post"  action="file/upfile" enctype="multipart/form-data">
    
    <div id="usual1" class="usual">    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1">发布通知</a></li> 
    <li><a href="#tab2" class="selected">自定义</a></li> 
  	</ul>
    </div>
    </div>
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用文件上传功能！</div>   
    <ul class="forminfo">
    <li><label>文件标题<b>*</b></label>
    <input name="filename" type="text" class="dfinput" value="" placeholder="请填写文件标题"  style="width:518px;"/>
    </li>
   
    <li>
    <label>文件来源<b>*</b></label>    
    <input name="filesource" type="text" class="dfinput" value="" placeholder="请填写政策来源"  style="width:518px;"/> 
    </li>
    <li>
    <label>文件上传<b>*</b></label>    
   <!--  <input type="text" class="dfinput" id="fileName" value=""  style="width:518px;"/>
    <input class="btn"  type="file" name="file" onChange="if(this.value)insertTitle(this.value);" value="请上传文件" />   -->
    
     <div class="file-box">         
     <input type='text' name='fileName' id="fileName" value="" class='dfinput' placeholder="请上传文件" />  
     <input type='button' class='btn' value="浏览上传..." />
     <input type="file" name="file" class="file" id="file" size="28" onChange="if(this.value)insertTitle(this.value);" />      
     <i></i>  
    </div>	
    </li>
    
     <li>
    <label>发布时间<b>*</b></label>    
    <input name="filetime" type="date" class="dfinput" value=""  style="width:518px;"/>
    </li>
    <li>
    <label>&nbsp;</label>
    <input name="" type="submit" class="btn" value="马上发布"/>
    </li>
    </ul>   
    </div> 
    </form>
     </div>
  	<div id="tab2" class="tabson">
  
    
    <ul class="seachform">
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>指派</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>重点客户</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>客户状态</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th>
        <th>文件名字</th>
        <th>文件路径</th>
        <th>上传时间</th>
        <th>文件来源</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${files}" var="files">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${files.fileId}</td>
        <td>${files.filename}</td>
        <td>${files.filepath}</td>
        <td>${files.filetime}</td>
         <td>${files.filesource}</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr> 
        </c:forEach>
        
      <!--  
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130905</td>
        <td>江西&quot;局长违规建豪宅&quot;：局长检讨</td>
        <td>admin</td>
        <td>北京市</td>
        <td>2013-09-06 10:36</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
			-->  
    
        </tbody>
    </table>
    <div class="pagin">
    	<div class="message">
    	共<i class="blue">${page.pageTotalCount}</i>页，当前显示第&nbsp; 
    	<i class="blue">${page.pageNow}&nbsp;</i>页，
    	共<i class="blue">${page.totalCount}</i>条记录&nbsp;   	
    	</div>
        <ul class="paginList">
        <c:choose>
	      <c:when test="${page.pageNow - 1 > 0}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageNow-1}"><span class="pagepre"></span></a></li>
	      </c:when>
	      <c:when test="${page.pageNow - 1 <= 0}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageNow}"></a></li>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="file/allFile?pageNow=1">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount < 2}">
	      <li class="paginItem"><a href="file/allFile?pageNow=1">2</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="file/allFile?pageNow=2">2</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="file/allFile?pageNow=1">3</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="file/allFile?pageNow=3">3</a></li>
	      </c:otherwise>
	     </c:choose>
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="file/allFile?pageNow=1">4</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="file/allFile?pageNow=4">4</a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="file/allFile?pageNow=1">10</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="file/allFile?pageNow=10">10</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>           
	     <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageNow}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1<page.pageTotalCount}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageNow+1}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1>=page.pageTotalCount}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageTotalCount}"><span class="pagenxt"></span></a></li>
	     </c:when>
	    </c:choose>
        
        
        
        <c:choose>
	      <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageNow}"><span class="pagenxt">尾页</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="file/allFile?pageNow=${page.pageTotalCount}">尾页</a></li>
	      </c:otherwise>
	     </c:choose>
        
        </ul>
    </div>
    
    </div>  
       
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script> 
    

</body>
</html>
