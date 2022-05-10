<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.productRepository"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	productRepository dao = productRepository.getInstance();
	// 상품 목록 접근
	
	Product product = dao.getProductById(id);
	//상품 id값을 이용하여 접근 
	if(product == null){
		response.sendRedirect("exceptionNOProductId.jsp");
	}
	
	ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
	Product goodsQnt = new Product();
	for(int i = 0; i < cartlist.size(); i++){
		goodsQnt = cartlist.get(i);
		if(goodsQnt.getProductId().equals(id)){ //장바구니 목록에서 삭제하고자 하는 상품 id와 일치하는것을 검색
			cartlist.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");

%>