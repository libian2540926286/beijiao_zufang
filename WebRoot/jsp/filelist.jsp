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
    
    <title>My JSP 'filelist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/module_style.css" type="text/css" rel="stylesheet" />

  </head>
  
   <body>
	<div class="top">
		<div class="wrap">
		<span class="fl">欢迎您来到<a href="index/toindex" title="" target="_blank">新政策网</a></span>		
		<c:choose>  
        <c:when test="${not empty sessionScope.get('session')}">
        <span class="fr"><a href="#" title="">${sessionScope.get('session').username}</a>&nbsp;&nbsp;<a href="index/logout" title="" target="_blank">[退出]</a></span>  
        </c:when>  
        <c:otherwise>  
            <span class="fr"><a href="jsp/login.jsp" title="">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>  
        </c:otherwise>  
        </c:choose>
	</div>
	</div>
	<!--top end-->

	<!--header begin-->
	<div class="header">
		<div class="wrap">
			<!-- <a href="#" title="" target="_blank"><img src="images/ad1.jpg" width="1004" height="40" /></a> -->
				<div class="search_box">
					<a href="#" title="" target="_blank"><img src="images/logo.jpg" width="389" height="53"  alt="" class="fl"/></a>  
				<div class="search">
				   <div id="lenu1">
						<ul>
							<li class="hover" onmousemove="setTab(1,0)">政策<span>|</span></li>
							<!-- (<li onmousemove="setTab(1,1)">用户<span>|</span></li>) -->
						</ul>
				    </div>				    
				    <div class="lain1_box" id="lain1">
						<ul class="block">
							<li><input type="text"  value="请输入政策名称" onFocus="if(this.value=='请输入政策名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入政策名称';}" class="sertxt" /><a href="search.html"><input type="button" value="搜索" name=""  class="serbtn"/></a></li>
						</ul>
						<ul>
						  <li><input type="text"  value="请输入用户名称" onFocus="if(this.value=='请输入用户名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入用户名称';}" class="sertxt" /><input type="button" value="搜索" name=""  class="serbtn"/></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
			 
	<div class="nav">
		<div class="wrap"> 
			<ul class="nav_left">
				<li><a href="index/toindex" title="">首页</a></li>
				<li><a href="#" title="">行业政策</a>
					<ul class="second_nav">
						<li>
						<a href="policy/toIndustryPolicy?pClassId=机械化工">机械化工</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=交通汽车">交通汽车</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=房产建材">房产建材</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=服装纺织">服装纺织</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=IT互联网">IT互联网</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=文化传媒">文化传媒</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=医药">医药</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=食品">食品</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId=农林渔牧">农林渔牧</a>
						</li>					
					</ul>
				</li>
				<li><a href="polInterpre/toAllPolInterpre" title="">政策解读</a></li>
				<li><a href="guide.html" title="">申报指南</a></li>
				<li><a href="#" title="">通知公告</a></li>
				<li><a href="consult/getListDiscuss" title="">咨询答疑</a></li>
			</ul>
		</div> 
	</div>
 </div>
	<!--header end-->



  <div class="content">
    <div class="list">
	  <div class="location">
		<li>位置 > 发布文件</li>
	  </div>

      <div class="file">
		<ul>
		<c:forEach items="${policys}" var="policys">
	  	   <li>
			 <img src="images/dian.png" width="5px" height="5px" alt="" />
			 <a href="policy/toPolicy?policyId=${policys.policyId}" title="">${policys.polTitle}</a>
			 <span id="time">[${policys.polTime}]</span>
		  </li>
	  	</c:forEach>
	  	   <li>
		    <img src="images/dian.png" width="5px" height="5px"alt="" />
		    <a href="" title="">发布文件1 办好热线事，搭起民心桥——国务院第四次大督查热线督查综述</a>
		    <span id="time">[2017-10-09]</span>
		  </li> 
		  
		</ul>
	 </div>
	
	
	<div class="pagin">
    	<div id="message">
    	共<i class="blue">${page.pageTotalCount}</i>页，当前显示第&nbsp; 
    	<i class="blue">${page.pageNow}&nbsp;</i>页，
    	共<i class="blue">${page.totalCount}</i>条记录&nbsp;   	
    	</div>
        <ul class="paginList">
        <c:choose>
	      <c:when test="${page.pageNow - 1 > 0}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageNow-1}"><span class="pagepre"></span></a></li>
	      </c:when>
	      <c:when test="${page.pageNow - 1 <= 0}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageNow}"></a></li>
	      </c:when>
	     </c:choose>
        
        <li class="paginItem current"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=1">1</a></li>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount < 2}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=1">2</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=2">2</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>
	      <c:when test="${page.pageTotalCount<3}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=1">3</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=3">3</a></li>
	      </c:otherwise>
	     </c:choose>
        <c:choose>
	      <c:when test="${page.pageTotalCount<4}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=1">4</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=4">4</a></li>
	      </c:otherwise>
	     </c:choose>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <c:choose>
	      <c:when test="${page.pageTotalCount<10}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=1">10</a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=10">10</a></li>
	      </c:otherwise>
	     </c:choose>
        
        <c:choose>           
	     <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageNow}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1<page.pageTotalCount}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageNow+1}"><span class="pagenxt"></span></a></li>
	     </c:when>
	     <c:when test="${page.pageNow+1>=page.pageTotalCount}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageTotalCount}"><span class="pagenxt"></span></a></li>
	     </c:when>
	    </c:choose>
        
        
        
        <c:choose>
	      <c:when test="${page.pageTotalCount==0}">
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageNow}"><span class="pagenxt">尾页</span></a></li>
	      </c:when>
	      <c:otherwise>
	      <li class="paginItem"><a href="policy/toIndustryPolicy?pClassName=${hint.pClassName}&pageNow=${page.pageTotalCount}">尾页</a></li>
	      </c:otherwise>
	     </c:choose>
        
        </ul>
    </div>
    
    </div>  
	
	
   
		<div class="footer">
				<!-- <hr> -->
				<ul>
					<li class="li_left">
						版权所有&nbsp;|&nbsp;
						<span><a href="" title="">北焦科创高科技孵化器（北京）有限公司&nbsp;&nbsp;京ICP备123456号</a></span>
					</li>
					<li class="li_right">
						地址&nbsp;|&nbsp;
						<span><a href="" title="">北京市朝阳区化工路59号院4号楼4-5层</a></span>
					<li class="li_left">
						技术支持&nbsp;|&nbsp;
						<span><a href="" title="">北焦科创</a></span>
						</li>
					<li class="li_right">
						邮政编码&nbsp;|&nbsp;
						<span><a href="" title="">100020</a></span>
					</li>
				</ul>
		</div>
		<!--footer end-->
	</div>	<!--content end-->
 </body>
</html>