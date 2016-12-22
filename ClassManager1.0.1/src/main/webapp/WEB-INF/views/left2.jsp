<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="<%=cp%>/resources/assets/bootstrap/css/bootstrap_join.min.css"
	rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default sidebar" role="navigation">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="grade_input">성적입력<span style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>
					<li><a href="view_grade">성적보기<span style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-stats"></span></a></li>
					<li><a href="analysis_grade">성적분석<span style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-list-alt"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>