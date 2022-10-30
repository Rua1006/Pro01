<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*, java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
	String sec = request.getParameter("sec");
	int lev = Integer.parseInt(request.getParameter("lev"));
	int parno = Integer.parseInt(request.getParameter("parno"));
	int cnt = 0;
%>
<%@ include file="connectionPool.conf"%>
<%
	sql = "insert into qnaa values (qaeq.nextval, ?, ?, ?, sysdate, 1, ?, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setInt(4, parno);
	pstmt.setString(5, sec);
	cnt = pstmt.executeUpdate();
	
	if(cnt>=1){
		response.sendRedirect("secList.jsp");
	}else{
		response.sendRedirect("replyWrite.jsp?parno="+parno);
	}
%>
<%@ include file="connectionClose1.conf"%>