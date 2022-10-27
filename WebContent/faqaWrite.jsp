<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String kid = (String)session.getAttribute("id");
	
%>
<!DOCTYPE>
<html>
<head>
</head>
<body>
<div class="page_wrap">
                <h2 class="page_title">자주하는질문 글쓰기</h2>                
                <div class="board_edit">
                <form name="frm" action="faqaWritePro.jsp" method="post" class="board_list">
                	<table>
                		<tbody>
                			<tr>
                				<th>제목</th>
                				<td><input type="text" name="title" id="title" class="in_data" placeholder="*제목입력" required /></td>
                			</tr>
                			<tr>
                				<th>내용</th>
                				<td><textarea cols="100" rows="8" name="content" id="content" placeholder="*내용입력"></textarea></td>
                			</tr>
                			<tr>
                				<th>작성자</th>
								<td><%=kid %>
								<input type="hidden" name="author" id="author" value="<%=kid %>"> 
								</td>
                			</tr>
                			<tr>
                				<th>질문유형</th>
                				<td><input type="text" name="title" id="title" class="in_data" placeholder="질문유형" required /></td>
                			</tr>
                		</tbody>
                	</table>
                	<div class="btn">
                	<button type="button" class="in_btn" onclick="location.href='faqaList.jsp'">자주하는 질문으로 돌아가기</button>
             		<button type="submit" class="in_btn1">글작성</button>
					</div> 
				</form>	  	
                </div>
            </div>
</body>
</html>