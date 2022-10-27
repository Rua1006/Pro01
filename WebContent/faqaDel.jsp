<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int parno = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;
%>
<%@ include file="connectionPool1.conf" %>
<%
	sql = "delete from faqa where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	cnt = pstmt.executeUpdate();
	
	if(cnt>=1){
		response.sendRedirect("brd.jsp#page3");
	} else {
		response.sendRedirect("faqInfo.jsp?no="+parno);
	}
%>
<%@ include file="connectionClose1.conf" %>