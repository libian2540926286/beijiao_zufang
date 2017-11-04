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
    
    <title>My JSP 'policy.jsp' starting page</title>
    
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
    <li><a href="#">系统设置</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <form method="post" action="policy/addPolicy">
    
    <div id="usual1" class="usual">    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">发布通知</a></li> 
    <li><a href="#tab2">自定义</a></li> 
  	</ul>
    </div>
    </div>
  	<div id="tab1" class="tabson">
    <div class="formtext">Hi，<b>admin</b>，欢迎您试用信息发布功能！</div>   
    <ul class="forminfo">
    <li><label>政策标题<b>*</b></label>
    <input name="polTitle" type="text" class="dfinput" value="" placeholder="请填写政策标题"  style="width:518px;"/>
    </li>
   
    <li><label>政策所属行业<b>*</b></label>  
    <div class="vocation" >
    <select class="select1" name="pClassName">
    <option value="机械化工">机械化工</option>
    <option value="交通汽车">交通汽车</option>
    <option value="房产建材">房产建材</option>
    <option value="服装纺织">服装纺织</option>
    <option value="IT互联网">IT互联网</option>
    <option value="文化传媒">文化传媒</option>
    <option value="医药">医药</option>
    <option value="食品">食品</option>
    <option value="农林渔牧">农林渔牧</option>
    </select>
    </div>    
    </li>

    <li><label>政策发布等级<b>*</b></label>
    <div class="vocation" >
    <select class="select1" name="polDrade">
    <option value="国家">国家</option>
    <option value="市">北京市</option>
    <option value="区">区</option>
    </select>
    </div> 
    </li>
    
    <li><label>政策发布等级<b>*</b></label>
    <div class="vocation" >
    <select class="select1" name="polArea">
    <option value="朝阳区">朝阳区</option>
    <option value="海淀区">海淀区</option>
    <option value="昌平区">昌平区</option>
    </select>
    </div> 
    </li>
    <li>
    <label>政策来源<b>*</b></label>    
    <input name="polSource" type="text" class="dfinput" value="" placeholder="请填写政策来源"  style="width:518px;"/> 
    </li>
    <li>
    <label>政策内容<b>*</b></label>
    <textarea id="content7" name="polContent" style="width:700px;height:250px;visibility:hidden;"></textarea>   
    </li>
    <li>
    <label>政策文件<b>*</b></label>    
    <input name="polSource" type="text" class="dfinput" value=""  style="width:518px;"/>
    <input class="btn"  type="file"  value="请上传政策文件" />  
    </li>
     <li>
    <label>发布时间<b>*</b></label>    
    <input name="polInterpreTime" type="date" class="dfinput" value=""  style="width:518px;"/>
    </li>
    <li>
    <label>&nbsp;</label>
    <input name="" type="submit" class="btn" value="马上发布"/>
    </li>
    </ul>   
    </div> 
    </form>
   
  	<div id="tab2" class="tabson">
    </div>
    
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
    
    <li><label>重点客户</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>客户状态</label>  
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
        <th>编号<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th>
        <th>政策标题</th>
        <th>政策来源</th>
        <th>政策所属行业</th>
        <th>政策等级</th>
        <th>政策所属区域</th>
        <th>发布时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
     <c:forEach items="${policys}" var="policys">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130908</td>
        <td>${policys.polTitle}</td>
        <td>${policys.polSource}</td>
        <td>${policys.pClassName}</td>
        <td>${policys.polDrade}</td>
        <td>${policys.polArea}</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 删除</a></td>
        </tr> 
      </c:forEach>  
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130907</td>
        <td>温州19名小学生中毒流鼻血续：周边部分企业关停</td>
        <td></td>
        <td>山东济南</td>
        <td>2013-09-08 14:02</td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130906</td>
        <td>社科院:电子商务促进了农村经济结构和社会转型</td>
        <td>user</td>
        <td>江苏无锡</td>
        <td>2013-09-07 13:16</td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130905</td>
        <td>江西&quot;局长违规建豪宅&quot;：局长检讨</td>
        <td>admin</td>
        <td>北京市</td>
        <td>2013-09-06 10:36</td>
        <td>已审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130907</td>
        <td>温州19名小学生中毒流鼻血续：周边部分企业关停</td>
        <td></td>
        <td>山东济南</td>
        <td>2013-09-08 14:02</td>
        <td>未审核</td>
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
    
        </tbody>
    </table>
    
    
    </div>  
       
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script> 
    

</body>
</html>
