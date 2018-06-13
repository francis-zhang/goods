<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/fileinput.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap-fileinput/js/fileinput.min.js"></script>
	
<title>商城后台管理系统</title>
<script type="text/javascript">
	function log1() {
      
      
		if (document.getElementById("name").value.length <= 0) {
			alert("请填写商品名称");
			document.getElementById("name").focus();
			return false;
		}
		if (document.getElementById("price").value.length <= 0) {
			alert("请填写商品价格");
			document.getElementById("price").focus();
			return false;
		}
		if (document.getElementById("count").value.length <= 0) {
			alert("请填写商品库存");
			document.getElementById("count").focus();
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
			<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/goods/add" method="post" OnSubmit=" return log1()">
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="name">商品名称</label>
					<div class="col-sm-6">
						<input name="name" class="form-control" id="name" type="text" />
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="typeid">商品类型</label>
					<div class="col-sm-6">
						<select name="typeid">     
						     <c:forEach items="${list }" var="type">
                                <option value="${type.id }" > ${type.name }</option>    
                         
                                </c:forEach>
                          </select>  
					</div>
				</div>
				
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="price">商品价格</label>
					<div class="col-sm-6">
						<input name="price" class="form-control" id="price" type="text" />
					</div>
				</div>
				
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="count">商品库存</label>
					<div class="col-sm-6">
						<input name="count" class="form-control" id="count" type="text" />
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-primary">添加</button>
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