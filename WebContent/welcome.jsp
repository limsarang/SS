<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
		<jsp:include page = "menu.jsp" />
		<%! 
			String greeting = "Welcome to Web Shopping Mall!";
			String tagline = "Welcome to Web Market!"; 
		%> 
		<div class="jumbotron"> <%-- jumbotron = 전광판 --%>
			<div class="container">
				<h1> <%= greeting%> </h1>		<!-- 큰 인사 -->
			</div>
		</div>
		<main>
			<div class="container">
				<div class="text-center">
					<h3> <%= tagline%> </h3>		<%-- 좀 작은 인사 --%>
				</div>
				<hr>
			</div>
		</main>
		<%@ include file = "footer.jsp" %>
</body>
</html>
