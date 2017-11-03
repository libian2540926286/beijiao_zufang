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
 </head>
 
 <body>
<!--top begin-->
<div class="top">
	<div class="wrap">
		<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
		<span class="fr"><a href="login.html" title="">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>
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
				<li><a href="polInterpre/toAllPolInterpre" title="">政策解读</a></li>
				<li><a href="affair/toAllAffair" title="">申报指南</a></li>
				<li><a href="" title="">通知公告</a></li>
				<li><a href="consult/getListDiscuss" title="">咨询答疑</a>
				  <ul class="second_nav">
				  <li>
					<a href="consult/getListDiscuss">咨询答疑</a>
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

<div class="content">
	<div class="content_left">
		<div class="left_top">
			<div class="left_top_zuo">
				<div id="fader">
					<ul>
					  <%-- <c:forEach items="${picPols}" var="picPols">
					  <li>
						<a href="picPol/topicPol?picPolId=${picPols.picPolId}" title="">
						<img src="images/${picPols.picPolFile}"width="640px" height="320px" alt="${picPols.picPolTitle}">
						</a>
						</li>
					  </c:forEach> --%>
						<li>
						<a href="content-img.html" title="">
						<img src="images/01.jpg"width="640px" height="320px" alt="全国工商和市场监管工作座谈会举行">
						</a>
						</li>
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
					<ul id="options">
						<li class="on">国家政策</li>
						<li class="off">市级政策</li>
						<li class="off">地方政策</li>
					</ul>
					<div id="firstPage" class="show">
						<ul>
						<c:forEach items="${policy1}" var="policy1">
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="policy/toPolicy?policyId=${policy1.policyId}" title="">${policy1.polTitle}</a>
							<span class="time">[${policy1.polTime}]</span>
						</li>
						</c:forEach>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content2.html" title="">李克强主持召开国务院常务会议 部署推进央企深化改革降低杠杆工作等</a>
							<span class="time">[10-09]</span>
						</li>													
					
					</ul>                                                            
						<a class="more" href="policy/toPolicyType?polDrade='国家'">更多>></a>
					</div>
					<div id="thirdPage" class="hide">
						<ul>
						<c:forEach items="${policy2}" var="policy2">
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="policy/toPolicy?policyId=${policy2.policyId}" title="">${policy2.polTitle}</a>
							<span class="time">[${policy2.polTime}]</span>
						</li>
						</c:forEach>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">北京市工商局多措并举，扎实推进控烟工作</a>
						</li>			
						</ul>
						<a class="more" href="policy/toPolicyType?polDrade='市'">更多>></a>
					</div>
					<div id="forthPage" class="hide">
						<ul>
						<c:forEach items="${policy3}" var="policy3">
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="policy/toPolicy?policyId=${policy3.policyId}" title="">${policy3.polTitle}</a>
							<span class="time">[${policy3.polTime}]</span>
						</li>
						</c:forEach>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">朝阳区19个项目纳入2017年市第一批绿色审批通道</a>
						</li>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" /><a href="#" title="">北京市朝阳区烟草专卖局关于印发暂停烟草专卖业务进行整顿的通知</a>
						</li>													
						</ul>
						<a class="more" href="policy/toPolicyType?polDrade='区'">更多>></a>
					</div>
				</div>

				<div id="tab2">
					<ul id="options">
						<li class="on">媒体聚焦</li>
						<li class="off">政策解读</li>
						<!-- <li class="off">文件发布</li> -->
					</ul>
					<div id="firstPage" class="show">
						<ul>
						<c:forEach items="${hots}" var="hots">
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="news/toNews?newsId=${hots.newsId}" title="">${hots.newsTitle}</a>
							<span class="time">[${hots.newsTime}]</span>
						</li>
						</c:forEach>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="#" title="">中国经济网：第三批自贸区争当改革“试验田”</a>
							<span class="time">[10-09]</span>
						</li>
					</ul>
						<a class="more" href="news/tolistNews">更多>></a>
					</div>
					<div id="secondPage" class="hide">
						<ul>
						<c:forEach items="${polInterpres}" var="polInterpres">
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="polInterpre/toPolInterpre?polInterpreId=${polInterpres.polInterpreId}" title="">${polInterpres.polInterpreTitle}</a>
							<span class="time">[${polInterpres.polInterpreTime}]</span>
						</li>
						</c:forEach>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="#" title="">商标评审委员会就实施《商标评审案件口头审理办法》答记者问</a>
						</li>
						<li>
							<img src="images/dian.png" width="5px" height="5px" alt="" />
							<a href="#" title="">国家工商总局企业注册局有关负责人就“多证合一”改革中的有关问题回答记者提问</a>
						</li>
						
					</ul>
						<a class="more" href="polInterpre/toAllPolInterpre">更多>></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content_right">
		<div class="rdgz">
			<h1>热点关注</h1>
			<div class="scroll1">
				<ul>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz.html" title="">中共中央政治局会议建议党的十九大10月18日召开</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz2.html" title="">工商总局明确国家法人库建设三年阶段性目标</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz3.html" title="">李克强主持召开国务院常务会议</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz.html" title="">中共中央政治局会议建议党的十九大10月18日召开</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz2.html" title="">工商总局明确国家法人库建设三年阶段性目标</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz3.html" title="">李克强主持召开国务院常务会议</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz.html" title="">中共中央政治局会议建议党的十九大10月18日召开</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz2.html" title="">工商总局明确国家法人库建设三年阶段性目标</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz3.html" title="">李克强主持召开国务院常务会议</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz.html" title="">中共中央政治局会议建议党的十九大10月18日召开</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz2.html" title="">工商总局明确国家法人库建设三年阶段性目标</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz3.html" title="">李克强主持召开国务院常务会议</a></li>
					<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-rdgz2.html" title="">工商总局明确国家法人库建设三年阶段性目标</a></li>
				</ul>
			</div>
		</div>

		
		<div class="qyfc">
			<h1>政策检索</h1>

			<div id="city">
				<select class="prov"></select>   
				<select class="city" disabled="disabled"></select>  
				<select class="dist" disabled="disabled"></select>
				<button>确定</button>
			</div>

			<script type="text/javascript">
				$("#city").citySelect({   
					url:"js/city.min.js",   
					prov:"北京市", //省份  
					city:"朝阳区", //城市  
					dist:"", //区县  
					nodata:"none" //当子集无数据时，隐藏select  
				});
			</script>

			<ul>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="content-qy.html" title="">东北三省简政放权增强市场活力</a><span class="time">[10-09]</span></li>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="" title="">厦门新版商事主体网上审批系统正式上线</a><span class="time">[10-09]</span></li>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="" title="">上海商标审查协作中心正式挂牌运行</a><span class="time">[10-09]</span></li>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="" title="">陕西“多证合一、一照一码”改革启动</a><span class="time">[10-09]</span></li>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="" title="">青岛营造优质环境全力激发民企活力</a><span class="time">[10-09]</span></li>
				<li><img src="images/dian.png" width="5px" height="5px" alt="" /><a href="" title="">东北三省简政放权增强市场活力</a><span class="time">[10-09]</span></li>
				<!-- <a class="more" href="search2.html">更多>></a> -->
			</ul>
		</div>
		<!--qyfc end-->
		
		<div class="cptg">
       <h1>文件发布</h1>
         <ul>
            <c:forEach items="${files}" var="files">
			<li>
				<img src="images/dian.png" width="5px" height="5px" alt="" />
				<a href="policy/toFile?policyId=${files.policyId}">${files.polTitle}</a>
				<span class="time">[${files.polTime}]</span>
			</li>
		    </c:forEach>
			<li>
			<img src="images/dian.png" width="5px" height="5px" alt="" />
			<a href="" title="">《企业名称禁限用规则》</a>
			<span class="time">[10-09]</span>
			</li>		
			<li>
			<img src="images/dian.png" width="5px" height="5px" alt="" />
			<a href="" title="">《企业信用信息公示系统使用运行管理办法》</a>
			<span class="time">[10-09]</span>
			</li>
			<a class="more" href="policy/toAllFilet">更多>></a>
				</ul>
		</div>
		<!--cptg end-->
	</div>

		<div style="display: none">
			<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
				language='JavaScript' charset='gb2312'></script>
		</div>

		<div class="footer">
			<hr>
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
	</div>

</html>
