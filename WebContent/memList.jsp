<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

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
		sql = "select*from member";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
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

        .mem_list table {width: 100%; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98; border-collapse: collapse; margin-top: 80px;}
        .mem_list th { border-bottom: 1px solid #d8d1cc; color:#ff7c98; font-size: 13px; line-height: 40px; font-family: 'Noto Sans KR', sans-serif; }
        .mem_list td {border-bottom: 1px solid #d8d1cc; color: #333; font-size: 13px; text-align: center; line-height: 28px; border-collapse: collapse; font-family: 'Noto Sans KR', sans-serif; }
        .mem_list td a {text-decoration-line:none; color: #3c3c8c;}
        .mem_list td:nth-child(even){background: #f7f7f7;}

        .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
        .in_btn { display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0;}
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
                <span class="sel">회원목록</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">로그인</h2>
                <div class="mem_list">
                	<table>
                		<thead>
                			<tr>
                				<th>번호</th>
                				<th>아이디</th>
                				<th>이름</th>
                				<th>가입일</th>
                			</tr>
                		</thead>
                		<tbody>
<%		
		int cnt = 0;
		while(rs.next()){
			cnt+=1;
%>
							<tr>
								<td><%=cnt %></td>
								<td><a href='memberInfo.jsp?id=<%=rs.getString("id")%>'><%=rs.getString("id")%></a></td>
								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("regdate")%></td>
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
						