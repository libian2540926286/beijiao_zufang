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
      <c:forEach items="${polInterpres}" var="polInterpres">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>已回复标题</td>
        <td>${polInterpres.polInterpreTitle}</td>
        <td>${polInterpres.polInterpreAuthor}</td>
        <td>${polInterpres.polInterpreSource}</td>
        <td>${polInterpres.polInterpreTime}</td>
        <td>
        <a href="#" class="tablelink">查看</a>     
        <a href="#" class="tablelink"> 删除</a>
        </td>
        </tr> 
      </c:forEach>  
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>已回复标题1</td>
        <td>张三</td>
        <td>回复内容2</td>
        <td>2540937687@qq.com</td>
        <td>2013-09-08 14:02</td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>已回复标题2</td>
        <td>李四</td>
        <td>回复内容3</td>
        <td>2540937687@qq.com</td>
        <td>2013-09-07 13:16</td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>已回复标题3</td>
        <td>江西</td>
        <td>回复内容4</td>
        <td>2540937687@qq.com</td>
        <td>2013-09-06 10:36</td>
        <td>已审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
      
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
	      <a href="">尾页</a>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<2}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">2</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=2"><span class="pagenxt">2</span></a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">3</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=3"><span class="pagenxt">3</span></a></li>
	      </c:otherwise>
	     </c:choose>
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">4</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=4"><span class="pagenxt">4</span></a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">10</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=10"><span class="pagenxt">10</span></a></li>
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
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow}"><span class="pagenxt">尾页</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageTotalCount}"><span class="pagenxt">尾页</span></a></li>
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
      <c:forEach items="${Replys}" var="polInterpres">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>未回复标题</td>
        <td>${polInterpres.polInterpreTitle}</td>
        <td>${polInterpres.polInterpreAuthor}</td>
        <td>${polInterpres.polInterpreSource}</td>
        <td>${polInterpres.polInterpreTime}</td>
        <td>
        <a href="#" class="tablelink">查看</a>     
        <a href="#" class="tablelink"> 删除</a>
        </td>
        </tr> 
      </c:forEach>  
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>未回复标题1</td>
        <td></td>
        <td></td>
        <td>2540937687@qq.com</td>
        <td></td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>未回复标题2</td>
        <td></td>
        <td></td>
        <td>2540937687@qq.com</td>
        <td></td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>未回复标题3</td>
        <td></td>
        <td></td>
        <td>2540937687@qq.com</td>
        <td></td>
        <td>已审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
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
	      <a href="">尾页</a>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<2}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">2</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=2"><span class="pagenxt">2</span></a></li>
	      </c:otherwise> 
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">3</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=3"><span class="pagenxt">3</span></a></li>
	      </c:otherwise>
	     </c:choose> 
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">4</span></a></li>
	      </c:when>
	       <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=4"><span class="pagenxt">4</span></a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=1"><span class="pagenxt">10</span></a></li>
	      </c:when>
	     <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=10"><span class="pagenxt">10</span></a></li>
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
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageNow}"><span class="pagenxt">尾页</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="polInterpre/allPolInterpre?pageNow=${page.pageTotalCount}"><span class="pagenxt">尾页</span></a></li>
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
