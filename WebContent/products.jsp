<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<jsp:useBean id="productDAO" class="dao.productRepository"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" >
<title>상품 목록</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class="jumbotron">
      <div class="container">
         <h1 class ="display-3">상품 목록</h1> <!--출력문-->
      </div>
   </div>
   <div class="container">
      <div class="row" align="center">
      <%@ include file="dbconn.jsp" %>
      
      <%
      		PreparedStatement pstmt = null;
      	//준비된 커리문
      		ResultSet rs = null;
		//쿼리 결과를 저장
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
      %>   
      
      <div class="col-md-4">
      	 <img src = "c:/upload/<%=rs.getString("p_fileName") %>" style="width:100%">
         <h3><%=rs.getString("p_name") %></h3>
         <p><%=rs.getString("p_description") %></p>
         <p><%=rs.getString("p_UnitPrice") %>원</p>
         <!-- 상세정보를 보고자하는 제품의 아이디값을 넘겨준다 -->
         <p> <a href="./product.jsp?id=<%=rs.getString("p_id")%>" 
         class="btn btn-secondary" role="button">상세 정보&raquo;</a>
      </div>
      <%
          }
			
			
		  if(rs != null)
	    	rs.close();
		  if(pstmt != null)
		    pstmt.close();
		  if(conn != null)
		    conn.close();
      %>

      </div>
   </div>
   
   <jsp:include page="footer.jsp" />
</body>
</html>