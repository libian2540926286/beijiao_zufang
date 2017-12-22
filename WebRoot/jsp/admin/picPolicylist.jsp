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
    
    <title>My JSP 'picpolicylist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jsp/admin/js/jquery.js"></script>
	<script language="javascript">
	$(function(){	
		//导航切换
		$(".imglist li").click(function(){
			$(".imglist li.selected").removeClass("selected")
			$(this).addClass("selected");
		})	
	})	
	</script>
	<script type="text/javascript">
	$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	  
	  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	});
	
	  $(".sure").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	  $(".cancel").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	});
	</script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页图片政策管理</a></li>
    <li><a href="#">所有首页图片政策</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
     <div class="tools">
    	<ul class="toolbar">
        <li class="click"><span><img src="jsp/admin/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="jsp/admin/images/t02.png" /></span>修改</li>
        <li><span><img src="jsp/admin/images/t03.png" /></span>删除</li>
        <li><span><img src="jsp/admin/images/t04.png" /></span>统计</li>
      </ul>
        
      <ul class="toolbar1">
        <li><span><img src="jsp/admin/images/t05.png" /></span>设置</li>
      </ul>
    </div>
    
    
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">图片</th>
    <th>标题</th>
    <th>发布时间</th>
    <th>政策来源</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    <c:forEach items="${picpols}" var="picpols">
    <tr>
    <td class="imgtd"><img style="width: 160px ; height: 90px;" src="${picpols.picpolFile}" /></td>
    <td><a href="#">${picpols.picpolTitle}</a><p>发布时间：${picpols.picpolTime}</p></td>
    <td><p>发布时间：${picpols.picpolTime}</p></td>
    <td>${picpols.picpolSource}</td>
    <td>
    <a href="picpol/toAdminpicpol?picpolId=${picpols.picpolId}">查看</a>
    <a href="picpol/deletepicpol?picpolId=${picpols.picpolId}">删除</a>
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
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageNow-1}"><span class="pagepre"></span></a></li>
	      </c:when>
	      <c:when test="${pageNow-1<=0}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageNow}"><span class="pagepre"></span></a></li>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<2}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=1">2</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=2">2</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=1">3</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=3">3</a></li>
	      </c:otherwise>
	     </c:choose>
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=1">4</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=4">4</a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=1">10</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=10">10</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>           
	     <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageNow}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1<page.pageTotalCount}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageNow+1}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1>=page.pageTotalCount}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageTotalCount}"><span class="pagenxt"></span></a></li>
	     </c:when>
	    </c:choose>               
        <c:choose>
	      <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageNow}">尾页</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="picpol/allpicpol?pageNow=${page.pageTotalCount}">尾页</a></li>
	      </c:otherwise>
	     </c:choose>       
        </ul>
    </div>
    
    
    
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="jsp/admin/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="jsp/admin/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
