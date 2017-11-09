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
    
    <title>我要咨询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="css/enquire.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/banner1.js"></script>
  </head>
  
  <body>
	<div class="top">
		<div class="wrap">
			<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
			<c:choose>  
	        <c:when test="${not empty sessionScope.get('session')}">
	           <span class="fr"><a href="#" title="">${sessionScope.get('session').username}${sessionScope.get('session').userId}</a>&nbsp;&nbsp;<a href="index/logout" title="" target="_blank">[退出]</a></span>  
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
						<a href="policy/toIndustryPolicy?pClassId='机械化工'">机械化工</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='交通汽车'">交通汽车</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='房产建材'">房产建材</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='服装纺织'">服装纺织</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='IT互联网'">IT互联网</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='文化传媒'">文化传媒</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='医药'">医药</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='食品'">食品</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassId='农林渔牧'">农林渔牧</a>
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
      <ul>
        <li>位置 > 咨询答疑</li>
      </ul>
      </div>

      <div id="remind">
      <ul>
        <li>【温馨提示】</li>
        <li>您在咨询问题时，请一事一问，以便我们把您的问题分类转给相关部门解答。</li>
        <li>为便于与您沟通，请您留下联系方式，我们会为您的个人信息保密。</li>
      </ul>
      </div>
      
      <div id="enquire">
      <form method="post" action="consult/addConsult">
        <ul id="enquire_information">
          <li class="enquire_information_1">
           <p>
              <span>咨询标题</span>
              <c:if test="${not empty sessionScope.get('session')}">
              <input type="hidden" value="${sessionScope.get('session').userId}" name="userId">
              </c:if>
              <input type="text" size="50px" style="height:20px" name="disTitle"
                value="请输入问题标题" onFocus="if(this.value=='请输入问题标题'){this.value='';}"
                onBlur="if(this.value==''){this.value='请输入问题标题';}">
            </p>
          </li>
          <li class="enquire_information_1">
            <p>
              <span>电子邮箱</span>
              <input type="email" size="50px" style="height:20px" name="email"
                value="请输入电子邮箱地址" onFocus="if(this.value=='请输入电子邮箱地址'){this.value='';}"
                onBlur="if(this.value==''){this.value='请输入电子邮箱地址';}">
            </p>
          </li>
          <li id="enquire_information_2">
            <p>
              <span>请输入您的详细咨询内容</span>
              <br/>
              <textarea rows="17" cols="131"  name="disContent" ></textarea>
            </p>
          </li>
          <li>
           <input id="submit" type="submit" value="提交问题">
           </li>
        </ul>
       
      </form>
      </div>

    </div>

    <div class="footer">
        <ul>
          <li class="li_left"> 版权所有&nbsp;|&nbsp;
           <span><a href="" title="">北焦科创高科技孵化器（北京）有限公司&nbsp;&nbsp;京ICP备123456号</a></span>
          </li>
          <li class="li_right">地址&nbsp;|&nbsp;
            <span><a href="" title="">北京市朝阳区化工路59号院4号楼4-5层</a></span>
          <li class="li_left">技术支持&nbsp;|&nbsp;
            <span><a href="" title="">北焦科创</a></span>
            </li>
          <li class="li_right">邮政编码&nbsp;|&nbsp;
            <span><a href="" title="">100020</a></span>
          </li>
        </ul>
    </div>
    <!--footer end-->
  </div>
</body>
</html>
