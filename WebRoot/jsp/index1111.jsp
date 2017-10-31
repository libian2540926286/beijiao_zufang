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
    
    <title>新政策网首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link href="css/style.css" type="text/css" rel="stylesheet" /> 
   <script type="text/javascript" src="js/banner1.js"></script>
   <script type="text/javascript" src="js/index.js"></script>
   <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="js/jquery.cityselect.js"></script>
   <script>
   function requestAreaByJson() {

         var area={polArea:$(".city option:selected").val()}
         console.log("sdfssd");
         console.log(area); 
         $.ajax({
                   type : 'post',                
                   url : 'policy/getArea',
                   /* //设置contentType类型为json
                   contentType : 'application/json;charset=utf-8', */
                   //json数据
                   data : area,
                   //请求成功后的回调函数
                   success : function(data) {
                         for(var i in data){
                              /* alert(data[i].policyId);
                              var option=$("<li class="liArea"></li>");
                              var img=$("<img src="images/dian.png" width="5px" height="5px" alt="" />");
                              var a=$("<a href="" class="pTitle"></a>");
                              var span=$("<span class="time"></span>");
                              if(data[i].polTitle.length()>15){                             
                              a.text(data[i].polTitle.substring(0, 15));
                              } 
                              a.attr("href","policy/toPolicy?policyId="+data[i].policyId);
                              span.text(data[i].polTime);
                              $(".ulArea").append(option);
                              $(".liArea").append(img);
                              $(".liArea").append(a);
                              $(".liArea").append(span);     
                             /*  $(".pTitle").html(data[i].polTitle);   
                              $(".time").html(data[i].polTime);   */  */                 
                          }  

                   }

           });

     }
   </script>

</head>
  
 <body>
	<!--top begin-->
	<div class="top">
		<div class="wrap">
			<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
			<c:if test="${empty user}">
			<span class="fr"><a href="LoginCon/login" title="">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>
		    </c:if>
		    <c:if test="${!empty user}">
		    <span class="fr"><a href="#" title="">${user.username}</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">注销</a></span>
		    </c:if>
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
							<li><a href="policy/toIndustryPolicy?pClassName=机械化工">机械化工行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=交通汽车">交通汽车行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=房产建材">房产建材行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=服装纺织">服装纺织行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=IT互联网">IT互联网行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=文化传媒">文化传媒行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=医药">医药行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=食品">食品行业</a></li>
							<li><a href="policy/toIndustryPolicy?pClassName=农林渔牧">农林渔牧行业</a></li>
						</ul>
					</li>
					<li><a href="polInterpre/toListPolInterpre">政策解读</a></li>
					<li><a href="#" title="">项目申报</a></li>
					<li><a href="#" title="">活动通知</a></li>
					<li><a href="#" title="">企业孵化</a></li>
				</ul>
			</div> 
		</div>
	</div>
	<!--header end-->

	<div class="content">
		<div class="content_left">
			<div class="left_top">
				<div class="left_top_zuo">
					<div id="fader">
						<ul>
						    
							<li><a href="content-img.html" title=""><img src="images/01.jpg"
									width="640px" height="320px" alt="全国工商和市场监管工作座谈会举行"></a></li>
							<li><a href="content-img2.html" title=""><img src="images/02.jpg"
									width="640px" height="320px" alt="张茅在世界地理标志大会上强调：推进地理标志工作助推“一带一路”建设"></a></li>
							<li><a href="content-img.html" title=""><img src="images/03.jpg"
									width="640px" height="320px" alt="全国工商和市场监管工作座谈会举行"></a></li>
							<li><a href="content-img2.html" title=""><img src="images/04.jpg"
									width="640px" height="320px" alt="张茅在世界地理标志大会上强调：推进地理标志工作助推“一带一路”建设"></a></li>
							<li><a href="content-img.html" title=""><img src="images/05.jpg"
									width="640px" height="320px" alt="全国工商和市场监管工作座谈会举行"></a></li>
						</ul>
					</div>
					<script type="text/javascript" src="js/banner2.js"></script>
					<!--fader(banner) end-->

					<div id="tab">
					   <!-- <div > -->
						<ul id="options">
							<li class="on">国家政策</li>
							<li class="off">省级政策</li>
							<li class="off">市级政策</li>
							<li class="off">地方政策</li>
						</ul>
					    <!-- </div> -->
						<div id="firstPage" class="show">
						 <ul>
						    <c:forEach items="${policy1}" var="policy1">
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" />
								<a href="policy/toPolicy?policyId=${policy1.policyId}">${policy1.polTitle}</a>
							</li>
							</c:forEach>
						 </ul>
						 <a class="more" href="">更多>></a>
                    	</div>
						<div id="secondPage" class="hide">
						 <ul>
						  <c:forEach items="${policy2}" var="policy2">
							<li>
								<img src="images/dian.png" width="5px" height="5px"  />
								<a href="policy/toPolicy?policyId=${policy2.policyId}" title="">${policy2.polTitle}</a>
							</li>						
						 </c:forEach>	
						 </ul>					
						</div>
						<div id="thirdPage" class="hide">
						 <ul> 
						 <c:forEach items="${policy3}" var="policy3">
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" />
								    <a href="policy/toPolicy?policyId=${policy3.policyId}" title="">${policy3.polTitle}</a>
							</li>
						</c:forEach>	
					 </ul>				
						</div>
						<div id="forthPage" class="hide">
						<ul>
						<c:forEach items="${policy4}" var="policy4">
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" />
								<a href="policy/toPolicy?policyId=${policy4.policyId}" title="">${policy4.polTitle}</a>
							</li>
						</c:forEach>
						 </ul>
						</div>
					</div>

					<div id="tab2">
						<ul id="options">
							<li class="on">媒体聚焦</li>
							<li class="off">政策解读</li>
							<li class="off">文件发布</li>
						</ul>
						<div id="firstPage" class="show">
						 <ul>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">中国经济网：第三批自贸区争当改革“试验田”。。。。。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">中国经济网：第三批自贸区争当改革“试验田”。。。。。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">中国经济网：第三批自贸区争当改革“试验田”。。。。。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">中国经济网：第三批自贸区争当改革“试验田”。。。。。。。。。。。。。。。。。</a>
							</li>
						 </ul>
						</div>
						<div id="secondPage" class="hide">
						  <ul>
							<c:forEach items="${polInterpres}" var="polInterpres"> 
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" />
								<a href="polInterpre/toPolInterpre?polInterpreId=${polInterpres.polInterpreId}" title="">${polInterpres.polInterpreTitle}</a>
							</li>
							</c:forEach>	
						</ul>	 			
						</div>
						<div id="thirdPage" class="hide">
						<ul>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">工商总局关于印发《企业名称相同相近比对规则》的通知。。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">工商总局关于印发《企业名称相同相近比对规则》的通知。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">工商总局关于印发《企业名称相同相近比对规则》的通知。。。。。。。。。。。。。</a>
							</li>
							<li>
								<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">工商总局关于印发《企业名称相同相近比对规则》的通知。。。。。。。。。。。。。</a>
							</li>
					  </ul>
						</div>
					</div>
				</div>
		</div>					
		<!-- </div> -->
		<div class="content_right">
			<div class="rdgz">
				<h1>热点关注</h1>
				<div class="scroll1">
					<ul>
					<c:forEach items="${hots}" var="hots">
						<li><img src="images/dian.png" width="5px" height="5px" alt="" />
						<a href="news/toNews?newsId=${hots.newsId}" title="">${hots.newsTitle}</a></li>
				    </c:forEach>
					</ul>
				</div>
		   </div>			
		  <div class="qyfc">
				<h1>政策检索</h1>
				<div id="city">
					<select class="prov"></select>   
					<select class="city" ></select>  
					<!-- <select class="dist" disabled="disabled"></select> -->
					<button id="b01" type="button" onclick="requestAreaByJson()">确定</button>
				</div>
				<script type="text/javascript">
					$("#city").citySelect({   
						url:"js/city.min.js",   
						prov:"北京市", //省份  
						city:"朝阳区", //城市  
						/* dist:"", //区县   */
						nodata:"none" //当子集无数据时，隐藏select  
					});
				</script>
				<ul class="ulArea">				
				<c:forEach items="${areas}" var="areas">
					<li calss="liArea">
					<img src="images/dian.png" width="5px" height="5px" alt="" />
					<a href="policy/toPolicy?policyId=${areas.policyId}" class="pTitle">${areas.polTitle}</a>
					<span class="time">[${areas.polTime}]</span>
					</li>
				</c:forEach>
				</ul>
					
	</div>
			<!--qyfc end-->
			
			<div class="cptg">
        <h1>政策讨论</h1>
          <ul>
          <c:forEach items="${discussion}" var="discussion">
			<li><img src="images/dian.png" width="5px" height="5px" alt="" />
			<a href="" title="">${discussion.disContent}</a>
			</li>
		  </c:forEach>
          </ul>
			</div>
			<!--cptg end-->
		</div>
		<!--footer end-->
		<div style="display: none">
			<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
				language='JavaScript' charset='gb2312'></script>
		</div>	
	<div class="footer">
			<ul>
				<li>
					版权所有&nbsp;|&nbsp;
					<span><a href="" title="">北焦科创高科技孵化器（北京）有限公司&nbsp;&nbsp;京ICP备123456号</a></span>
				</li>
				<li>
					地址&nbsp;|&nbsp;
					<span><a href="" title="">北京市朝阳区化工路59号院4号楼4-5层</a></span>
				<li>
					技术支持&nbsp;|&nbsp;
					<span><a href="" title="">北焦科创</a></span>
					</li>
				<li>
					邮政编码&nbsp;|&nbsp;
					<span><a href="" title="">100020</a></span>
				</li>
			</ul>
		</div>
	</div>
    <!-- </div> -->
</body>
</html>
