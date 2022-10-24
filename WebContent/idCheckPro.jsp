<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	
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
		sql = "select*from member where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			out.println("<p>"+id+"</p>");
			out.println("<p>해당 아이디는 사용불가 입니다.</p>");
			response.sendRedirect("idCheck.jsp");
		}else{
			out.println("<p>"+id+"</p>");
			out.println("<p>사용 가능한 아이디 입니다.</p>");
			out.println("<a href='javascript:apply(\""+id+"\")'>"+id+" [지금 바로 사용하기]</a>");
			out.println("<p>아이디 바로 사용</p>");
		}
%>
	<script >
	function apply(fid){
		opener.document.frm1.id.value = fid;
		opener.document.frm1.idck.value = "yes";
		window.close();
	}
	</script>
<%		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		rs.close();
		pstmt.close();
		con.close();
	}
%>