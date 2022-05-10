<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 아이디 오류</title>
</head>
<body>
		<jsp:include page = "menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURI()%>?
		<%=request.getQueryString() %>
		<p>
			<a href="products.jsp" class="btn btn-secondary"> 상품 목록&raquo; <%-- raquo = 오른쪽 화살표 --%>
			</a>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
