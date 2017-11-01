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
    
    <title>申报指南二级页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/guide.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="js/guide.js"></script>
	<script type="text/javascript" src="js/banner1.js"></script>

  </head>
  
  <body>
   	<div class="top">
		<div class="wrap">
			<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
			<span class="fr"><a href="#" title="" target="_blank">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>
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
            <li><a href="index.html" title="">首页</a></li>
            <li><a href="#" title="">行业政策</a>
              <ul class="second_nav">
                <li><a href="industry.html">农业</a></li>
                <li><a href="industry2.html">金融业</a></li>
                <li><a href="#">服务业</a></li>
                <li><a href="#">医疗业</a></li>
              </ul>
            </li>
            <li><a href="interpretation.html" title="">政策解读</a></li>
            <li><a href="guide.html" title="">申报指南</a></li>
            <li><a href="#" title="">活动通知</a></li>
            <li><a href="enquire.html" title="">咨询答疑</a></li>
          </ul>
        </div> 
      </div>
	</div>  
	<!--header end-->

  <div class="content">
    <div class="list">
			<div class="location">
				<li>位置 > 申报指南</li>
			</div>

      <div id="tab">
        <ul id="options">
          <li class="on">设立登记</li>
          <li class="off">经营许可</li>
          <li class="off">年检年审</li>
          <li class="off">项目申报</li>
        </ul>
        <hr>
        <div id="firstPage" class="show">
          <ul>
          <c:forEach items="${affairs1}" var="affairs1">
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="affair/toAffair?affWorkId=${affairs1.affWorkId}" title="">${affairs1.workName} </a>
          </li>
          </c:forEach>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="content2.html" title="">农民专业合作社设立登记</a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="content.html" title="">企业集团设立登记 </a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content2.html" title="">农民专业合作社分支机构设立登记</a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content.html" title="">农民专业合作社设立登记</a>
          </li>
          
        </ul>
        </div>
        <div id="secondPage" class="hide">
          <ul>
          <c:forEach items="${affairs2}"var="affairs2">
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="affair/toAffair?affWorkId=${affairs2.affWorkId}" title="">${affairs2.workName} </a>
          </li>
          </c:forEach>       
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">宣传、新闻和出版单位发表尚未公布的国民经济和社会发展统计资料核准</a>
          </li>
          </ul>
        </div>
        <div id="thirdPage" class="hide">
          <ul>
          <c:forEach items="${affairs3}"var="affairs3">
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="affair/toAffair?affWorkId=${affairs3.affWorkId}" title="">${affairs3.workName} </a>
          </li>
          </c:forEach> 
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">社会团体年度检查 </a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">年度投资计划初审</a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">社会团体年度检查</a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">民办非企业单位年度检查</a>
          </li>
          </ul>
        </div>
        <div id="forthPage" class="hide">
          <ul>
           <c:forEach items="${affairs4}"var="affairs4">
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" />
            <a href="affair/toAffair?affWorkId=${affairs4.affWorkId}" title="">${affairs4.workName} </a>
          </li>
          </c:forEach>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">行政许可有效期延续 </a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">办理权限内国有建设用地使用权划拨 </a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">《政府核准的投资项目目录》以外的企业投资项目备案 </a>
          </li>
          <li>
            <img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">《政府核准的投资项目目录》以外的企业投资项目备案</a>
          </li>
          </ul>
        </div>
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
