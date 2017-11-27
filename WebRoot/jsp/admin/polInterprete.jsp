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
    
    <title>My JSP 'interpretation.jsp' starting page</title>
    
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
    <form method="post" action="polInterpre/addPolInterpre">
    
    <div id="usual1" class="usual">    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" >发布政策解读</a></li> 
    <li><a href="#tab2" class="selected">所有政策解读</a></li> 
  	</ul>
    </div>
    </div>
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div>   
    <ul class="forminfo">
    <li><label>政策解读标题<b>*</b></label>
    <input name="polInterpreTitle" type="text" class="dfinput" value="" placeholder="请填写政策解读来源"  style="width:518px;"/>
    </li>    
    <li>
    <label>政策解读作者<b>*</b></label>    
    <input name="polInterpreAuthor" type="text" class="dfinput" value="" placeholder="请填写政策解读作者"  style="width:518px;"/>
    </li>
    <li>
    <label>政策解读来源<b>*</b></label>    
    <input name="polInterpreSource" type="text" class="dfinput" value="" placeholder="请填写政策解读来源"  style="width:518px;"/> 
    </li>
    <li>
    <label>政策解读内容<b>*</b></label>
    <textarea id="content7" name="polInterpreContent" style="width:700px;height:250px;visibility:hidden;"></textarea>   
    </li>
    <li>
    <label>发布时间<b>*</b></label>    
    <input name="polInterpreTime" type="date" class="dfinput" value=""  style="width:518px;"/>
    </li>
    <!-- <li>
    <label>政策解读文件<b>*</b></label>
    <input type="text" class="dfinput" id="fileName" value=""  style="width:518px;"/>
    <input class="btn"  type="file" name="file" onChange="if(this.value)insertTitle(this.value);" value="请上传政策解读文件" />
    </li> -->
    <li>
    <label>&nbsp;</label>
    <input name="" type="submit" class="btn" value="马上发布"/>
    </li>
    </ul>   
    </div> 
    </form>
   
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
    
    <li>
    <label>&nbsp;</label>
    <input name="" type="button" class="scbtn" value="查询"/>
    </li>
    
    </ul>   
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th>
        <th>政策解读标题</th>
        <th>政策解读作者</th>
        <th>政策解读来源</th>
        <th>政策解读发布时间</th>
        <th>政策解读操作</th>
        </tr>
        </thead>
        <tbody>
      <c:forEach items="${polInterpres}" var="polInterpres">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130908</td>
        <td>${polInterpres.polInterpreTitle}</td>
        <td>${polInterpres.polInterpreAuthor}</td>
        <td>${polInterpres.polInterpreSource}</td>
        <td>${polInterpres.polInterpreTime}</td>
        <td>
        <a href="polInterpre/adminPolInterpre?polInterpreId=${polInterpres.polInterpreId}" class="tablelink">查看</a>     
        <a href="#" class="tablelink"> 删除</a>
        </td>
        </tr> 
      </c:forEach>  
        </tbody>
    </table>  
     <div class="pagin">
    	<div class="message">
    	共<i class="blue">${page.pageNow}</i>页，当前显示第&nbsp; 
    	<i class="blue">${page.pageTotalCount}&nbsp;</i>页，
    	共<i class="blue">${page.totalCount}</i>条记录&nbsp;   	
    	</div>
        <ul class="paginList">
        <c:choose>
	      <c:when test="${pageNow-1>0}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow-1}"><span class="pagepre"></span></a></li>
	      </c:when>
	      <c:when test="${pageNow-1<=0}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow}"><span class="pagepre"></span></a></li>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<2}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1">2</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=2">2</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1">3</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=3">3</a></li>
	      </c:otherwise>
	     </c:choose>
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1">4</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=4">4</a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1">10</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=10">10</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>           
	     <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1<page.pageTotalCount}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow+1}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1>=page.pageTotalCount}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageTotalCount}"><span class="pagenxt"></span></a></li>
	     </c:when>
	    </c:choose>
        
        
        
        <c:choose>
	      <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow}">尾页</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageTotalCount}">尾页</a></li>
	      </c:otherwise>
	     </c:choose>
        
        </ul>
    </div>
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
