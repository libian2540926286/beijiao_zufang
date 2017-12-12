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
    
    <title>My JSP 'guide.jsp' starting page</title>
    
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
	<script type="text/javascript">
	$(document).ready(function(e) {
	    $(".dfinputList").uedSelect({
			width : 518			  
		});
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
    <li><a href="#">申报指南</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <form method="post"  action="notice/addNotice">
    
    <div id="usual1" class="usual">    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1">添加申报指南</a></li> 
    <li><a href="#tab2" class="selected">申报指南列表</a></li> 
  	</ul>
    </div>
    </div>
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用添加申报指南功能！</div>   
    <ul class="forminfo">
     <li><label>申报类型<b>*</b></label>
     <div class="vocation">
     <select name="affairId" class="dfinputList" placeholder="请选择申报类型"  style="width:518px;">
     <option >设立登记</option>
     <option >经营许可</option>
     <option >年检年审</option>
     <option >项目申报</option>
     </div>
     </select>
    </li>
    <li><label>事项名称<b>*</b></label>
    <input name="workName" type="text" class="dfinput" value="" placeholder="请填写事项名称"  style="width:518px;"/>
    </li>
    <li><label>法定实施主体<b>*</b></label>
    <input name="depart" type="text" class="dfinput" value="" placeholder="请填写法定实施主体"  style="width:518px;"/>
    </li>
    <li><label>主体范围<b>*</b></label>
    <input name="departRange" type="text" class="dfinput" value="" placeholder="请填写主体范围"  style="width:518px;"/>
    </li>
    <li><label>办事依据<b>*</b></label>
    <input name="legal" type="text" class="dfinput" value="" placeholder="请填写办事依据"  style="width:518px;"/>
    </li>
    <li><label>办理地点<b>*</b></label>
    <input name="place" type="text" class="dfinput" value="" placeholder="请填写办理地点"  style="width:518px;"/>
    </li>
    <li>
    <label>办公时间<b>*</b></label>    
    <input name="timeRange" type="date" class="dfinput" value=""  style="width:518px;"/>
    </li>
    <li>
    <label>咨询电话<b>*</b></label>    
    <input name="phone" type="tel" class="dfinput" value="" placeholder="请填写咨询电话"  style="width:518px;"/>
    </li>
     <li>
    <label>申报链接<b>*</b></label>    
    <input name="link" type="text" class="dfinput" value="" placeholder="请填写申报链接" style="width:518px;"/>
    </li>
    <li>
     <label>收费依据和标准</label>
     <textarea id="content7" name="reference" style="width:700px;height:250px;visibility:hidden;"></textarea>    
     </li>
    <li>
    <label>&nbsp;</label>
    <input name="" type="submit" class="btn" value="马上发布"/>
    </li>
    </ul>   
    </div> 
    </form>
     </div>
  	<div id="tab2" class="tabson2">
  
    
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
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>申报类型</th>  
        <th>事项名称</th>  
        <th>法定实施主体</th>
        <th>主体范围</th>
        <th>办事依据</th>
        <th>办理地点</th>
        <th>办公时间</th>
        <th>咨询电话</th>
        <th>申报链接</th>
        <th>收费依据和标准</th>    
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${affair}" var="affair">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${affair.affairId}</td>
        <td>${affair.workName}</td>
        <td>${affair.depart}</td>
        <td>${affair.departRange}</td>
        <td>${affair.legal}</td>
        <td>${affair.place}</td>
        <td>${affair.timeRange}</td>
        <td>${affair.phone}</td>
        <td>${affair.link}</td>
        <td>${affair.reference}</td>       
        <td><a href="notice/toAdminno?noticeId=${notices.noticeId}" class="tablelink">查看</a>  
           <a href="notice/deleteNotice?noticeId=${notices.noticeId}" class="tablelink">删除</a></td>
        </tr> 
        </c:forEach>
    
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
