<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*"%>
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
	
	int amount = 0;
	int stNum = 1;
	int edNum = 1;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select count(*) cnt from board";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		/*건수 표기*/
		if(rs.next()){
			amount =  rs.getInt("cnt");
		}
		rs.close();
		pstmt.close();
		
		pstmt = null;
		rs = null;
		
		/* select no, title, content, author, resdate from
		(select rownum rn, no, title, content, author, resdate from board
		order by no desc) t1 where t1.rn between 1 and 10; */
		
		/*테이블보기*/
		sql = "select no, title, content, author, resdate from ";
		sql = sql + " (select rownum rn, no, title, content, author, resdate from board order by no desc) ";
		sql = sql + " t1 where t1.rn between ? and ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, stNum);
		pstmt.setInt(2, edNum);
		rs = pstmt.executeQuery();
		rs.close();
		pstmt.close();
		
		
		
		out.println("<p>건수 : " + amount + "건</p>");
		
		
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
        .board_list td {border-bottom: 1px solid #d8d1cc; color: #333; font-size: 13px; text-align: center; line-height: 28px; border-collapse: collapse; font-family: 'Noto Sans KR', sans-serif; }
        .board_list td a {text-decoration-line:none; color: #3c3c8c;}
        .board_list td:nth-child(even){background: #f7f7f7;}

		.btn a {text-decoration-line:none; margin-top: 20px;}
        .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
        .in_btn { display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0;}
        .in_btn1 { display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:right; margin-left:80px; margin-right:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0; margin-top: 20px;}
        .in_btn:hover { background-color: #3c3c8c; }

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
                <span class="sel">게시판목록</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">게시판목록</h2>
                <div class="board_list">
                	<table>
                		<thead>
                			<tr>
                				<th>번호</th>
                				<th>제목</th>
                				<th>작성자</th>
                				<th>작성일</th>
                			</tr>
                		</thead>
                		<tbody>
<%			int cnt = 0;
			while(rs.next()){
			cnt+=1;
%>
							<tr>
								<td><%=cnt %></td>
								<td><a href='boardInfo.jsp?id=<%=rs.getString("title")%>&no=<%=rs.getInt("no")%>'><%=rs.getString("title")%></a></td>
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
					<div class="btn">
					<%
						int pageCount = (amount<=10) ? 1 : amount/10 + 1;
						for(int i=1; i<=pageCount; i++){
					%>
						<a href="boardList.jsp?curPage=<%=i %>">[<%=i %>]&nbsp;</a>
					<%}%>
					<%if(sid!=null) {%>
					<button type="button" class="in_btn1" onclick="location.href='boardWrite.jsp'">글작성</button>  
					<%}%>
					</div>
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