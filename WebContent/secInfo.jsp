<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String wid = (String)session.getAttribute("id");
	
	int no = Integer.parseInt(request.getParameter("no"));	
%>
<%@ include file = "connectionPool.conf"%>
<!DOCTYPE html>
<html lang="kor">
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
        .board_list th { border-bottom: 1px solid #d8d1cc; color:#ff7c98; font-size: 13px; line-height: 40px; font-family: 'Noto Sans KR', sans-serif; vertical-align: middle;}
        .board_list td {width:1000px; border-bottom: 1px solid #d8d1cc; color: #333; font-size: 13px; text-align: left; line-height: 28px; border-collapse: collapse; font-family: 'Noto Sans KR', sans-serif;
        				vertical-align: middle; padding-left: 2em; padding-right: 2em; }
        .board_list td a {text-decoration-line:none; color: #3c3c8c;}
        .board_list td:nth-child(even){background: #f7f7f7;}

        .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
        .in_btn { display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:left; margin-right:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0; margin-top:20px; text-align: center; font-family: 'Noto Sans KR', sans-serif; text-decoration-line:none;}
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
<%
		sql = "select * from qnaa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		String author = "";
				
		if(rs.next()){
%>
<tbody>
                			<tr>
								<th>유형</th>
								<td>
								<%
								if(rs.getInt("lev")==0){
									out.println("<span>질문</span>");
								}else{
									out.println("<span>답변</span>");
								}
								%>
								</td>
							</tr>
                			<tr>
                				<th>제목</th>
                				<td><%=rs.getString("title")%></td>
                			</tr>
                			<tr>
                				<th>내용</th>
                				<td><%=rs.getString("content")%></td>
                			</tr>
                			<tr>
                				<th>작성자</th>
                				<td><%=rs.getString("author")%></td>
                			</tr>
                			<tr>
                				<th>작성일</th>
                				<td><%=rs.getString("resdate")%></td>
                			</tr>
                		</tbody>
                	</table>
                	<div class="btn">
             		<button type="button" class="in_btn1" onclick="location.href='secList.jsp'">글목록으로 돌아가기</button>
             			<%
             				if(wid.equals("admin")){
             					if(rs.getInt("lev")==0){
             			%>
             				<a href='replyWrite.jsp?parno=<%=no %>' class="in_btn">답변 하기</a>
							<a href='secModify.jsp?no=<%=no %>' class="in_btn">글 수정</a>
							<a href='secDel.jsp?no=<%=no%>' class="in_btn">글 삭제</a>
						<%
							}else{ 
						%>
							<a href='replyModify.jsp?no=<%=no %>' class="in_btn">답변 수정</a>
							<a href='replyDel.jsp?no=<%=no %>' class="in_btn">답변 삭제</a>
						<%
							}
             				}else if(wid.equals(rs.getString("author"))){             					
						%>
							<a href='secModify.jsp?no=<%=no %>' class="in_btn">글 수정</a>
							<a href='secDel.jsp?no=<%=no%>' class="in_btn">글 삭제</a>
						<%
             				}else{
						%>
							<p style="clear:both">권한이 없습니다.</p>
						<%
             				}
						%>
					</div>   	
                </div>
            </div>
       	</section>
    </div>
   	<footer class="ft">
	<%@ include file="footer.jsp" %>
	</footer>
</div>
<%} %>
<%@ include file = "connectionClose.conf"%>
</body>
</html>