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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	function addArticle() {
		if (document.getElementById("name").value.length <= 0) {
			alert("请填写商品类型名称");
			document.getElementById("name").focus();
			return false;
		}
		
		return true;
	}
</script>
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
                <a href="<c:url value='/admin/close'/>">退出</a></li>
            <li class="divider"></li>
           
        </ul>
    </li> 
            </ul>  
             
             
        </div>  
    </nav>  
</div>
  <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/goodstype/update" method="post" OnSubmit=" return addArticle()">
				  <input type="hidden" name="id" value="${goodstype.id}"/> 
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="name">商品类型名称</label>
					<div class="col-sm-6">
						<input name="name" class="form-control" id="name" value="${goodstype.name}"  type="text" />
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-primary">修改</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


    	<c:if test="${not empty message }">
    	<font color="red">${message }</font>
    	
    	</c:if>

  </body>
</html>
