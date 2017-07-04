<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/bootstrap-theme.min.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
<script>
   function link1()
   {
	   $("#content").load("getPasswordList.action");
   }
   function link2()
   {
	   $("#content").load("link2.action"); 
   }
   function link3()
   {
	   $("#content").load("link3.action"); 
   }
</script>
</head>
<body>
	<%-- 
<div class="container-fluid">
        <h1>Twitter bootstrap tutorial</h1>
        <nav class="navbar navbar-inverse">
            <div class="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Page One</a></li>
                    <li><a href="#">Page Two</a></li>
                    <li><a href="#">Page Three</a></li>
                    <li><a href="#">Page Four</a></li>
                </ul>
            </div>
        </nav>
    </div>
  --%>
	<div class="container-fluid">
		<div style="text-align: center;">
			<h1>Twitter bootstrap tutorial</h1>
		</div>
		<div class="col-md-1">
			<ul class="nav nav-tabs nav-stacked">
				<li><a href='javascript:void(0);' onclick="link1();">Another Link 1</a></li>
				<li><a href='javascript:void(0);' onclick="link2();">Another Link 2</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
				<li><a href='javascript:void(0);' onclick="link3();">Another Link 3</a></li>
			</ul>
		</div>
		<div class="col-md-11" style="border: 1px solid red;" id="content"></div>
	</div>
</body>
</html>