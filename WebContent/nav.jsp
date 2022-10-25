<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String) session.getAttribute("name");
	String id = (String) session.getAttribute("id");
%>
<div class="hd_wrap">
<a href="index.jsp" class="logo"><img src="./img/baskin.png" alt="상단로고"></a>
<nav class="tnb">
	<%
		if(name!=null && id.equals("admin")){
	%>
		<div>
			<a href="memList.jsp">회원 관리</a>
	    	<a href="brd.jsp#page2">게시판 관리</a>
	    	<a href="logout.jsp">로그아웃</a>
	    </div>
	<%
		}else if(id!=null){
	%>
		<div>
			<span class="id_print"><%=name %>님</span>
			<a href="logout.jsp">로그아웃</a>
			<a href="memInfo.jsp">회원정보</a>
    	</div>
	<%
		}else {
	%>
		<div>
	   	 	<a href="login.jsp">로그인</a>
	    	<a href="join.jsp">회원가입</a>
    	</div>		
	<%
		}
	%>     
</nav>
<nav class="gnb">
    <ul>
        <li class="item1">
            <a href="" class="dp1">Menu</a>
            <ul class="sub">
                <li><a href="baskin.jsp#page1">아이스크림</a></li>
                <li><a href="baskin.jsp#page2">아이스크림케이크</a></li>
                <li><a href="baskin.jsp#page3">음료</a></li>
            </ul>
        </li>
        <li class="item2">
            <a href="" class="dp1">영양성분 및 알레르기</a>
            <ul class="sub">
                <li><a href="tri.jsp#page1">아이스크림</a></li>
                <li><a href="tri.jsp#page2">아이스크림케이크</a></li>
                <li><a href="tri.jsp#page3">음료</a></li>
            </ul>
        </li>
        <li class="item3">
            <a href="" class="dp1">이벤트</a>
            <ul class="sub">
                <li><a href="event.jsp#page1">진행중인 이벤트</a></li>
                <li><a href="event.jsp#page2">당첨자 발표</a></li>
                <li><a href="event.jsp#page3">지난 이벤트</a></li>
            </ul>
        </li>
        <li class="item4">
            <a href="" class="dp1">가게정보</a>
            <ul class="sub">
                <li><a href="imp.jsp#page1">보도자료</a></li>
                <li><a href="imp.jsp#page2">채용정보</a></li>
                <li><a href="imp.jsp#page3">CONTACT US</a></li>
            </ul>
        </li>
        <li class="item5">
            <a href="" class="dp1">게시판</a>
            <ul class="sub">
                <li><a href="brd.jsp#page1">공지사항</a></li>
                <li><a href="brd.jsp#page2">고객센터</a></li>
                <li><a href="brd.jsp#page3">개설문의</a></li>
            </ul>
        </li>
    </ul>
</nav>
</div>