<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String)session.getAttribute("id");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content ="";
	String author = "";
	String resdate = "";
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from faqa order by parno asc, gubun asc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			no = rs.getInt("no");
			title = rs.getString("title");
			content = rs.getString("content");
			author = rs.getString("author");
			resdate = rs.getString("resdate");
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			rs.close();
			pstmt.close();
			con.close();
		}
%>
<!DOCTYPE html>
<html lang="kor">
<head>
</head>
<body>
	<div class="page_wrap">
		<h2 class="page_title">상세내용</h2>
		<table class="faqa_table">
			<thead class="dtail">
     			<tr>
      				<th>번호</th>
      				<td><%=no%></td>
      				<th>제목</th>
      				<td><%=title%></td>
      				<th>내용</th>
      				<td><%=content%></td>
      				<th>작성자</th>
      				<td><%=author%></td>
      				<th>작성일</th>
      				<td><%=resdate%></td>
      			</tr>
       		</thead>
		</table>
		<div class="btn">
			<button type="button" class="in_btn1" onclick="location.href='faqaList.jsp'">자주하는질문목록</button>
			<%if(sid.equals("admin")){%>
			<a href='faqaModify.jsp?no=<%=no %>' class="in_btn">내용 수정</a>
			<a href='faqaDel.jsp?no=<%=no %>' class="in_btn">내용 삭제</a>
			<%}%>
		</div>
	</div>
    <footer class="ft">
    </footer>
</body>
</html>