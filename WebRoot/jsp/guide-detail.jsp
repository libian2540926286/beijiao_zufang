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
    
    <title>申报指南三级页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

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
							<li><input type="text"  value="请输入政策名称" onFocus="if(this.value=='请输入政策名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入政策名称';}" class="sertxt" /><input type="button" value="搜索" name=""  class="serbtn"/></li>
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
						<a href="policy/toIndustryPolicy?pClassName=机械化工">机械化工</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=交通汽车">交通汽车</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=房产建材">房产建材</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=服装纺织">服装纺织</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=IT互联网">IT互联网</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=文化传媒">文化传媒</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=医药">医药</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=食品">食品</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=农林渔牧">农林渔牧</a>
						</li>					
					</ul>
				</li>                    
				<li><a href="polInterpre/tolistPolInterpre" title="">政策解读</a></li>
				<li><a href="affair/toAllAffair" title="">申报指南</a></li>
				<li><a href="" title="">通知公告</a></li>
				<li><a href="consult/getallconsult" title="">咨询答疑</a>
				  <ul class="second_nav">
				  <li>
					<a href="consult/getallconsult">咨询答疑</a>
					</li>
					<li>
					<a href="jsp/consult.jsp">我要咨询</a>
					</li>
				   </ul>
				</li>
			</ul>
		</div> 
	</div>
    </div>
  <div id="content">
  <c:if test="${not empty affair}">
    <div id="title">
      <span>${affair.workName}</span>
      <table border="1">
        <tr>
          <th>办理地点：</th>
          <td>${affair.place}</td>
          <th>办理时间：</th>
          <td>${affair.timeRange}</td>
        </tr>
        <tr>
          <th>承诺期限：</th>
          <td>${affair.timeRange}</td>
          <th>咨询电话：</th>
          <td>${affair.phone}</td>
        </tr>
      </table>
    </div>
    
    <div id="introduce">
      <span>事项介绍</span>
      <ul>
        <li><span class="title">事项名称：</span><span class="content">${affair.workName}</span></li>
        <li><span class="title">法定实施主体：</span><span class="content">${affair.depart}</span></li>        
        <li><span class="title">主体范围：</span><span class="content">${affair.departRange} </span></li>
        <li><span class="title">办事依据：</span><span class="content">${affair.legal}</span></li>
        <li><span class="title">办理地点：</span><span class="content">${affair.place}</span></li>
        <li><span class="title">办公时间：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">咨询电话：</span><span class="content">${affair.phone}</span></li>
        <li><span class="title">法定期限：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">承诺期限：</span><span class="content">${affair.timeRange}</span></li>
        <li><span class="title">收费依据和标准：</span><span class="content">${affair.reference}</span></li>
        <li><span class="title">有效期限：</span><span class="content">${affair.timeRange} </span></li>
      </ul>
      <br/>
    </div>

    <div id="condition">
      <span>办理条件</span>
      <ul>
        <li>1.无</li>
        <li>1.无</li>
        <li>1.无</li>
      </ul>
      <br/>
    </div>

    <div id="stuff">
        <span>申请材料</span>
        <ul>

        </ul>
        <br/>
      </div>
    </c:if>
	</div>
	
  </body>
</html>
