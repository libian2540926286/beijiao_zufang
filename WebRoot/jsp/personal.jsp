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
    
    <title>个人主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/personal.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="js/personal.js"></script>
	<script type="text/javascript" src="js/banner1.js"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

 </head>
  
  <body>
    	<div class="top">
		<div class="wrap">
		<span class="fl">欢迎您来到<a href="index/toindex" title="" target="_blank">新政策网</a></span>		
		<c:choose>  
        <c:when test="${not empty sessionScope.get('session')}">
        <span class="fr"><a href="jsp/personal.jsp" title="">${sessionScope.get('session').username}</a>&nbsp;&nbsp;<a href="index/logout" title="" target="_blank">[退出]</a></span>  
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
	<!--header end-->
   
   <div class="content" >
    <div class="list">
			<div class="location">			
				<span>位置 > 个人主页</span>
			</div>

      <div id="tab">
        <ul id="options">
          <li class="on">个人信息</li>
          <li class="off">您的消息</li>
          <li class="off">咨询回复</li>
        </ul>
       <!--  <hr> -->
        <div id="firstPage" class="show">
            <ul>
           <!--    <li>
                  <input id="changePassword" type="submit" value="修改密码" >           
              </li> -->
              <li>
                   <span>关注行业：</span><span>${sessionScope.get('session').pClassName}</span>
                   <input id="changePassword" type="submit" value="修改密码" >
              </li>
            </ul>
            <script type="text/javascript">
                    $("#changePassword").click(function() {
                      $('#usernameChange').hide();
                      $('#industryChange').hide();
                      $('#passwordChange').show();
                    });
                  </script>
            <script type="text/javascript">
                $("#changeUsername").click(function() {
                  $('#passwordChange').hide();
                  $('#industryChange').hide();
                  $('#usernameChange').show();
                });
              </script>
            <script type="text/javascript">
                    $("#changeIndustry").click(function() {
                      $('#usernameChange').hide();
                      $('#passwordChange').hide();
                      $('#industryChange').show();
                    });
            </script>
            <form id="passwordChange" method="post" action="index/changepswd">
            <ul>
            <li>
                <label class="psw">原始密码</label>
                <input class="pswTxt" type="text" size="50px" style="height:30px" placeholder="输入原始密码" name="oldPassword" minlength="6" maxlength="12" required>
                <input type="hidden"  name="userId1" value=${sessionScope.get('session').userId}>
              </li>
              <li>
                <label class="psw">新密码</label>
                <input class="pswTxt" type="text" size="50px" style="height:30px" placeholder="输入原始密码" name="checkpassword" minlength="6" maxlength="12" required>
              </li>
              <li>
                <label class="psw">确认新密码</label>
                <input class="pswTxt" type="text" size="50px" style="height:30px" name="password" minlength="6" maxlength="12" required>
              </li>    
              <li>
                <input class="ensure" type="submit" value="确认修改" >
              </li>
              </ul>
            </form>
            <script type="text/javascript">
              $("#confirm-newPassword").focusout(function(){
                if($("#confirm-newPassword").val() != $("#newPassword").val()){
                  $("#confirm-newPassword").val("两次输入的用户名不一致");
                  $("#confirm-newPassword").css("color", "red");
                  $("#confirm-newPassword").focus();
                  $("#confirm-newPassword").click(function(){
                    $("#confirm-newPassword").val("");
                  })
                }
              })
            </script>       

          </div>
        <div id="secondPage" class="hide">
        <c:forEach items="${policys}" var="policys">
          <ul>
            <li>
              <span class="time">${policys.polTime}</span>
            </li>
            <li class="message">
              <span>您关注的行业有最新信息----${policys.polTitle}</span>
              <a class="more" href="policy/toPolicy?policyId=${policys.policyId}">点击查看更多>></a>
            </li>
          </ul>
         </c:forEach>
          <ul>
            <li>
              <span class="time">[2017-11-02]</span>
            </li>
            <li class="message">
              <span>您关注的行业有以下最新信息。。。。。。</span>
              <a class="more" href="#"><cite>点击查看更多>></cite></a>
            </li>
          </ul>
        </div>
        
        <div id="thirdPage" class="hide">
        <c:forEach items="${consults}" var="consults">
          <ul>
            <li class="consult-title"><span>咨询标题：</span>${consults.disTitle}</li>
            <li class="consult-detail">${consults.disContent}</li>
            <li class="answer">
              <span class="time">${consults.disTime}</span><input class="switch_answer" type="button" value="查看回复">
              <br>
              <div style="border:1px dashed #ebebeb; border-style:dotted;"></div>
              <div class="answer_detail">&nbsp;&nbsp;&nbsp;&nbsp;${consults.reply}</div>
            </li>
          </ul>
          </c:forEach>
          <script type="text/javascript">
            $(".switch_answer").click(function(){
              if($(this).val() == "查看回复"){
                $(this).val("关闭回复");
                $(this).nextAll().slideDown("fast", function(){
  
                });
              }else{
                $(this).val("查看回复");
                $(this).nextAll().slideUp("fast", function(){
  
                });
              }
            })
          </script>
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
