<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	int no = Integer.parseInt(request.getParameter("no"));	
	int cnt = 0;
%>
<%@ include file="connectionPool1.conf" %>
<%
	//SQL 작성 및 실행
	sql = "delete from qnaa where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	cnt = pstmt.executeUpdate();
	
	//반환된 결과에 따라 분기
	if(cnt>=1){
		response.sendRedirect("secList.jsp");
	} else {
		response.sendRedirect("secInfo.jsp?no="+no);
	}
%>
<!-- DB 닫기 -->
<%@ include file="connectionClose1.conf" %>