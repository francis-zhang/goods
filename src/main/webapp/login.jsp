<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商城后台管理系统</title>
    
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	function login1() {
		if (document.getElementById("username").value.length <=0) {
			alert("请填写用户名");
			document.getElementById("username").focus();
			return false;
		}
		
		if (document.getElementById("password").value.length <=0) {
			alert("请填写密码");
			document.getElementById("password").focus();
			return false;
		}
		
		return true;
	}
</script>
    <style>  
    .col-center-block {  
        float: none;  
        display: block;  
        margin-left: auto;  
        margin-right: auto; 
    }  

 body{    
      background-image: url(${pageContext.request.contextPath }/image/login.jpg);    
      background-size:cover;   
 }    
    </style>   
   
 
     
 </style>  
  </head>
  
  <body>
  
 <%
   Object message = request.getAttribute("message");
   if(message!=null && !"".equals(message)){

 %>
    <script type="text/javascript">
         alert("<%=message%>");
    </script>
 <%} %>

  <div class="container-fluid">
	<div class="row-fluid">
	<br>
	<br>
	<br>
	<br>
	<br>
		<div class="span12 col-xs-6 col-md-5 col-center-block">
			<h1 class="text-center text-error">
				<strong><font color="red">商城后台管理系统</font></strong>
			</h1>
			<br>
			<form class="form-horizontal col-center-block" action="<c:url value='/admin/login'/>" method="post" OnSubmit=" return login1()">
				<div class="control-group">
					<label class="control-label" for="username"><font color="#F9441F">用户名</font></label>
					
					<div class="controls">
						<input name="username"  class="form-control" id="username" type="text" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="password"><font color="#F9441F">密码</font></label>
					
					<div class="controls">
						<input name="password" class="form-control" id="password" type="password" />
					</div>
				</div>
				<br/>
				<div class="control-group">
					<div class="controls">
						<button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
						
					</div>
				</div>
			
			</form>
			
		</div>
	</div>
</div>

  </body>
</html>
