<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = (String) session.getAttribute("id");
	if(uid==null){
		uid ="guest";
	}

%>
<%@ include file ="connectionPool.conf"%>
<%
	sql = "select * from qnaa order by parno desc, lev asc, no asc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
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
		/*.content {display:none;} */
        .content:target {display: block;}
		.home { color:#333; text-decoration-line: none;}
		
		
        .borad_table {width: 100%; margin-top: 20px; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98;}
        .borad_table td {border-bottom: 1px solid #dadada; text-align: center; font-size: 15px; }
        .borad_table th {border-bottom: 1px solid #dadada; text-align: center; font-size: 15px;}
        
        /*page2 ad*/
        .borad_table .dtail {height:55px; padding-left: 20px; font-family: 'Noto Sans KR', sans-serif;}
        .borad_table .dtail_title1 {text-align: center; vertical-align: middle;}
        .borad_table .dtail_title2 {text-align: center; vertical-align: middle;}
        .borad_table .dtail_title3 {text-align: center; vertical-align: middle;}
        .borad_table .dtail_title4 {text-align: center; vertical-align: middle;}
        
        .borad_table .sub_title {height:55px; text-align: center;}
        td.sub_title1 {width:100px; vertical-align: middle;}
        td.sub_title2 {height:55px; padding-left: 20px; text-align: left; vertical-align: middle;}
    	td.sub_title2 a{width:100px; text-decoration-line:none; vertical-align: middle;}
        td.sub_title3 {width: 150px; vertical-align: middle;}
        td.sub_title4 {width: 200px; vertical-align: middle;}
        
        .borad_table tbody {font-size: 15px; font-family: 'Noto Sans KR', sans-serif;}
		.borad_table .sub_title td:nth-child(even){background: #f7f7f7;}
        .dtail {vertical-align: middle;} 
        
        
        /*page3 ad*/
        .borad_table a.tit {color: rgb(129, 33, 185); font-size: 15px; text-decoration-line:none; font-family: 'Noto Sans KR', sans-serif;}
        .borad_table .num {color : #333; font-weight: 400; vertical-align: middle; font-family: 'Noto Sans KR', sans-serif;}
        .borad_table .title {height:55px; padding-left: 20px; text-align: left; vertical-align: middle; }
        .borad_table .period {font-size: 15px; vertical-align: middle; font-family: 'Noto Sans KR', sans-serif;}

        .page_title { padding-top: 1em; font-weight:bolder; font-size: 30px; padding-bottom: 1em; text-align: center;}
        .home { color:#333; }
        .to_top { position:fixed; bottom:80px; right:80px; z-index:999; background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
        height: 60px; line-height: 60px; text-align: center; font-size:30px; border-radius:32px; visibility:hidden; transition-duration:0.8s;
        text-decoration: none;}
        .to_top:hover { background-color: rgb(129, 33, 185); }
        .to_top.on { visibility: visible; }
        .in_btn1 { background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0; float: right; diplay:block; margin-top:20px; margin-bottom: 20px;}
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
        <section class="page">
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">게시판목록</span>
            </div>
        </div>
		<div class="page_wrap">
			<h2 class="page_title">비밀글 게시판</h2>
			<table class="borad_table">
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
	int cnt=0;
	while(rs.next()){
		SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
		String date = yymmdd.format(rs.getDate("resdate"));
%>
					<tr class="sub_title">
						<td class="sub_title1">
							<%
								if(rs.getInt("lev")==0){
									cnt++;
									out.println("<span>"+cnt+"</span>");
								}
							%>
						</td>
						<td>
					<% 
						if(rs.getInt("lev")==0) {
							if(rs.getString("sec").equals("Y")) {
								if(uid.equals(rs.getString("author")) || uid.equals("admin")){
					%>
									<a href='secInfo.jsp?no=<%=rs.getInt("no") %>' class="sec1"><%=rs.getString("title") %></a>
					<%
									} else {
					%>	
									<span class="sec1"><%=rs.getString("title") %></span>
					<%
									}
									} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>	
									<a href='secInfo.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<%
									} else {
					%>	
									<span><%=rs.getString("title") %></span>
					<%
									}
					%>	
					<% 
									} else {
									if(rs.getString("sec").equals("Y")) {
									if(uid.equals(rs.getString("author")) || uid.equals("admin")){
					%>
									<a href='secInfo.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></a>
					<%
								} else {
					%>
									<span style="padding-left:60px;" class="sec2"><%=rs.getString("title") %></span>				
					<%
								}		
								} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>
								<a href='secInfo.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;"><%=rs.getString("title") %></a>						
					<%
								} else {
					%>
						 		<span style="padding-left:60px;"><%=rs.getString("title") %></span>
					<%
							}
						} 
					%>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%		
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
/* 		rs.close(); */
		pstmt.close();
		con.close();
	}
%>
			</tbody>		
		</table>
		<div class= "btn">
		<% if(uid!="guest") { %>
		<button type="button" class="in_btn1" onclick="location.href='secWrite.jsp'">질문등록</button>
		<% } else { %>
		<p style="clear:both;">회원가입 후 로그인 하셔야 질문 및 답변을 보실 수 있습니다.</p>
		<% } %>
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
				