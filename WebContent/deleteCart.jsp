<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.productRepository"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String id = request.getParameter("cartId");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	session.invalidate();

	response.sendRedirect("cart.jsp");

%>