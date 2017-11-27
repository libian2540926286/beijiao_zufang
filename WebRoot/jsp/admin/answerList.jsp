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
    
    <title>My JSP 'AnswerList.jsp' starting page</title>
    
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
	
	

  </head>
  
  <body>
   
    <div class="place">    
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">信息管理</a></li>
    <li><a href="#">回复列表</a></li>
    </ul>
    </div>
    <div id="tab1" class="">
      
    <span class="listStyle">已回复标题列表</span>    
    <table  class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>已回复标题<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th>
        <th>回复人</th>
        <th>回复内容</th>
        <th>回复邮件地址</th>
        <th>回复时间</th>
        <th>回复操作</th>
        </tr>
        </thead>
        <tbody>
      <c:forEach items="${replied}" var="replied">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${replied.disTitle}</td>
        <td>${replied.userId}</td>
        <td>${replied.reply}</td>
        <td>${replied.email}</td>
        <td>${replied.disTime}</td>
        <td>
        <a href="consult/getRepliedAnswer?discussId=${replied.discussId}" class="tablelink">查看</a>     
        <a href="consult/deleteConsult?discussId=${replied.discussId}" class="tablelink"> 删除</a>
        </td>
        </tr> 
      </c:forEach>  
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
 
    <div id="tab2" class="">
    <span class="listStyle">未回复标题列表</span>
    <table id="tab1" class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>未回复标题<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th>
        <th>回复人</th>
        <th>回复内容</th>
        <th>回复邮件地址</th>
        <th>回复时间</th>
        <th>回复操作</th>
        </tr>
        </thead>
        <tbody>
      <c:forEach items="${unreply}" var="unreply">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${unreply.disTitle}</td>
        <td>${unreply.userId}</td>
        <td>${unreply.reply}</td>
        <td>${unreply.email}</td>
        <td>${unreply.disTime}</td>
        <td>
        <a href="consult/addReplyAnswer" class="tablelink">点击回复</a>     
        <a href="consult/deleteConsult?discussId=${unreply.discussId}" class="tablelink"> 删除</a>
        </td>
        </tr> 
      </c:forEach>  
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
	$('.tablelist tbody tr:odd').addClass('odd');
	</script> 

  </body>
</html>
