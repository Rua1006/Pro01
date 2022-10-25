<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int uno = Integer.parseInt(request.getParameter("no"));
	String utitle = request.getParameter("title");
	String ucontent = "";
	String uauthor = "";
	String uresdate = "";
	
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
		sql = "select*from board where title=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,utitle);
		rs = pstmt.executeQuery();
		System.out.println(utitle+ucontent+uauthor+uresdate);
		
		
		if(rs.next()){
			utitle = rs.getString("title");
			ucontent = rs.getString("content");
			uauthor = rs.getString("author");
			uresdate = rs.getString("resdate");
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
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>

    <style>
        /*header.css*/
        .hd {position: fixed;}

        /*content*/
        .vs {clear: both; width: 100%;  height:300px; overflow: hidden;}
        .vs img {display: block; width:100%; height:auto;}
        .bread {clear: both; width: 100%; line-height: 60px; border-bottom:3px solid #eee;}
        .bread_fr {width: 1200px; margin: 0 auto;}
        .page { clear:both; width: 100%; min-height:100vh;}
        .page:after { content:""; display:block; clear:both; }
        .page_wrap { width: 1200px; margin: 0 auto; }
        
        

        .page_title { padding-top: 1em; font-weight:bolder; font-size: 50px;  text-align: center; margin-top: 30px; color:#3c3c8c;}
        .home { color:#333; text-decoration: none;}

        .board_list table {width: 100%; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98; border-collapse: collapse; margin-top: 80px;}
        .board_list th { border-bottom: 1px solid #d8d1cc; color:#ff7c98; font-size: 13px; line-height: 40px; font-family: 'Noto Sans KR', sans-serif; }
        .board_list td {width:600px; border-bottom: 1px solid #d8d1cc; color: #333; font-size: 13px; text-align: center; line-height: 28px; border-collapse: collapse; font-family: 'Noto Sans KR', sans-serif; }
        .board_list td a {text-decoration-line:none; color: #3c3c8c;}
        .board_list td:nth-child(even){background: #f7f7f7;}

        .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
        .in_btn1 { background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0; float: right; diplay:block; margin-top:20px;}

    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<div class="wrap">
    <header class="hd">
    	<%@ include file = "nav.jsp"%>
	</header>
	<div class="content">
        <figure class="vs">
            <img src="./img/banner.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">상세내용</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">상세내용</h2>
                <div class="board_list">
                	<table>
                		<thead>
                	<%-- 		<tr>
                				<th>번호</th>
                				<td><%=uno %></td>
                			</tr> --%>
                			<tr>
                				<th>제목</th>
                				<td><%=utitle %></td>
                			</tr>
                			<tr>
                				<th>내용</th>
                				<td><%=ucontent %></td>
                			</tr>
                			<tr>
                				<th>작성자</th>
                				<td><%=uauthor %></td>
                			</tr>
                			<tr>
                				<th>작성일</th>
                				<td><%=uresdate %></td>
                			</tr>
                		</thead>
                	</table>
             		<button type="button" class="in_btn1" onclick="location.href='boardList.jsp'">글목록</button>   	
                </div>
            </div>
       	</section>
    </div>
   	<footer class="ft">
	<%@ include file="footer.jsp" %>
	</footer>
</div>
</body>
</html>		
       	       	