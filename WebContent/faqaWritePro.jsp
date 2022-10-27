<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%@ include file ="connectionPool1.conf"%>
<%
	String title = request.getParameter("title");
	String content = "";
	String author = "";
	int gubun = Integer.parseInt("");
	int cnt = 0;

	sql = "insert into faqa values (fseq.nextval, ?, ?, ?, sysdate,?,fseq.currval)";
	pstmt = con.prepareStatement(sql);	
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setInt(4, gubun);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("faqaList.jsp");
	}else{
		response.sendRedirect("faqaWrite.jsp");
	}
%>
<%@ include file="connectionClose1.conf"%>