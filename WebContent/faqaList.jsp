<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");

String sid = (String) session.getAttribute("id");

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String dbid = "system";
String dbpw = "1234";
String sql = "";

try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, dbid, dbpw);
	sql = "select * from faqa order by parno asc, gubun asc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html lang="kor">
<head>
</head>
<body>
	<div class="page_wrap">
		<h2 class="page_title">자주하는질문</h2>
		<table class="faqa_table">
			<thead class="dtail">
     			<tr>
      				<th class ="dtail_title1">번호</th>
      				<th class ="dtail_title2">제목</th>
      				<th class ="dtail_title3">작성자</th>
      				<th class ="dtail_title4">작성일</th>
      			</tr>
       		</thead>
			<tbody>
<%
while(rs.next()){
%>
				<tr>
					<td><%=rs.getInt("no")%></td>
					<td><a href='faqInfo.jsp?id=<%=rs.getString("title")%>&no=<%=rs.getInt("no")%>'><%=rs.getString("title")%></a></td>
					<td><%=rs.getString("author")%></td>
					<td><%=rs.getString("resdate")%></td>
				</tr>
<%		
	}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		rs.close();
		pstmt.close();
		con.close();
	}
%>
       		</tbody>		
		</table>
		
		<button type="button" class="in_btn1" onclick="location.href='faqaWrite.jsp'">글작성</button>
	</div>
    <footer class="ft">
    </footer>
<a href="" class="to_top">▲</a><!-- .to_top.on -->
</body>
</html>