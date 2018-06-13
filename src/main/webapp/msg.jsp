<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
    <title>商城后台管理系统</title> 
  </head>
  
  <body>
  
  <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1 class="text-center">
				<font color="red">商城后台管理系统</font>
			</h1>
		</div>
	</div>
	<br>
	<br>
	 <nav class = "navbar navbar-default  navbar-inverse" role = "navigation">  
        <div class="navbar-header">             
            <a class="navbar-brand">功能列表</a>  
        </div>  
        <div>  
            <ul class="nav navbar-nav">  
                <li class="active"><a href="${pageContext.request.contextPath }/main.jsp">网站首页</a></li>  
                 <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">商品管理
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li>
                <a href="<c:url value='/goodstype/addV'/>">增加商品</a></li> 
            <li>
                <a href="<c:url value='/goods/findAll'/>">查询商品</a></li>
              
           
            <li class="divider"></li>
           
        </ul>
    </li>
    
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">商品类型管理
            <span class="caret"></span></a>
         <ul class="dropdown-menu">
            <li>
                <a href="<c:url value='/type/add.jsp'/>">添加商品类型</a></li> 
            <li>
                <a href="<c:url value='/goodstype/findAll'/>">查询商品类型</a></li>
              
           
            <li class="divider"></li>
           
        </ul>
    </li>

                 
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        admin
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
    	  <li>
                <a href="<c:url value='/manager/close'/>">退出</a></li>
            <li class="divider"></li>
           
        </ul>
    </li> 
            </ul>  
             
             
        </div>  
    </nav>  
</div>
  <div class="jumbotron">
	<div class="container">
		<h1>消息提示：</h1>
		<p> ${message }</p>
		
	</div>
</div>

   
  </body>
</html>
