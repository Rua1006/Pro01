<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
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
		sql = "select*from board";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html lang="kor">
	<%@ include file ="head.jsp" %>

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
        .content {display:none;}
        .content:target {display: block;}

        .borad_table {width: 100%; margin-top: 20px; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98; }
        .borad_table td {border-bottom: 1px solid #dadada; text-align: center; font-size: 15px;}
        .borad_table th {border-bottom: 1px solid #dadada; text-align: center; font-size: 15px;}
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

    </style>
    <link rel="stylesheet" href="footer.css">
    <!--스크롤 스크립트-->
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href);
            }
        });
    });    
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
    <%@ include file = "nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/banner1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>게시판</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">영양성분</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>공지사항</option>
                    <option value="brd.jsp#page2">고객센터</option>
                    <option value="brd.jsp#page3">개설문의</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">공지사항</h2>
                <table class="borad_table">
					<colgroup>
						<col width="8%">
						<col width="*">
						<col width="10%">
					</colgroup>
					<tbody>
						<tr>
							<td class="num">14</td>
							<td class="title">
								<a href="" class="tit">단체주문도 언제, 어디서나 배스킨라빈스!</a>
							</td>
							<td class="period">2022-07-01</td>
						</tr>
						<tr>
							<td class="num">13</td>
							<td class="title">
								<a href="" class="tit">배스킨라빈스의 1월 신규 MD를 만나보세요!</a>
							</td>
							<td class="period">2022-02-11</td>
						</tr>
                        <tr>
							<td class="num">12</td>
							<td class="title">
								<a href="" class="tit">배스킨라빈스의 스페셜 MD를 만나보세요!</a>
							</td>
							<td class="period">2021-06-15</td>
						</tr>
						<tr>
							<td class="num">11</td>
							<td class="title">
								<a href="" class="tit">Taste the Original 새로워진 그린티, 31요거트!</a>
							</td>
							<td class="period">2021-06-15</td>
						</tr>
						<tr>
							<td class="num">10</td>
							<td class="title">
								<a href="" class="tit">[신제품 출시] 밀탑의 시그니처 국내산 팥으로 더욱 맛있어진 팥빙수 블라스트 출시!</a>
                            </td>
							<td class="period">2021-05-20</td>
						</tr>
						<tr>
							<td class="num">9</td>
							<td class="title">
								<a href="" class="tit">[신제품 출시] 밀탑의 시그니처 국내산 팥으로 더욱 맛있는 배라 빙수를 즐겨보세요!</a>
						    </td>
							<td class="period">2021-05-13</td>
						</tr>
						<tr>
							<td class="num">8</td>
							<td class="title">
								<a href="" class="tit">[신제품 출시] 워터프로세스 방식으로 풍미는 보존, 카페인은 제거한 디카페인 커피 출시!</a>
							</td>
							<td class="period">2021-04-30</td>
						</tr>
						<tr>
							<td class="num">7</td>
							<td class="title">
								<a href="" class="tit">[신제품 출시] 달콤한 연유와 딸기 과육이 들어있는 딸기 연유 라떼 출시!</a>
						    </td>
							<td class="period">2021-03-17</td>
						</tr>
						<tr>
							<td class="num">6</td>
							<td class="title">
								<a href="" class="tit">월리를 찾아라 닮은꼴 콘테스트 당첨자 발표</a>
							</td>
							<td class="period">2020-12-22</td>
						</tr>
						<tr>
							<td class="num">5</td>
							<td class="title">
								<a href="" class="tit">개인정보처리방침 변경 안내</a>
							</td>
							<td class="period">2020-07-14</td>
						</tr>
						<tr>
							<td class="num">4</td>
							<td class="title">
								<a href="" class="tit">[신제품 출시] 아이스크림과 함께 즐기는 배스킨라빙수 출시</a>
							</td>
							<td class="period">2020-06-10</td>
						</tr>
						<tr>
							<td class="num">3</td>
							<td class="title">
								<a href="" class="tit">배라를 배달로 먹방 콘테스트 수상자 발표</a>
							</td>
							<td class="period">2020-05-15</td>
						</tr>
						<tr>
							<td class="num">2</td>
							<td class="title">
								<a href="" class="tit">6월 이달의 맛 선거 투표 결과 발표</a>
						    </td>
							<td class="period">2020-04-29</td>
						</tr>
						<tr>
							<td class="num">1</td>
							<td class="title">
								<a href="=" class="tit">[신제품 출시] 깔끔한 산미와 따사로운 햇살같은 커피원두 카페브리즈 써니 출시!</a>
							</td>
							<td class="period">2020-01-10</td>
						</tr>
					</tbody>
				</table> 
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>게시판</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">영양성분</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>고객센터</option>
                    <option value="brd.jsp#page1">공지사항</option>
                    <option value="brd.jsp#page3">개설문의</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">고객센터</h2>
                <table class="borad_table">
					<colgroup>
						<col width="8%">
						<col width="*">
						<col width="10%">
					</colgroup>
						<thead>
                			<tr>
                				<th>번호</th>
                				<th>제목</th>
                				<th>작성자</th>
                				<th>작성일</th>
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
								<td><a href='boardInfo.jsp?id=<%=rs.getString("title")%>'><%=rs.getString("title")%></a></td>
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
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>게시판</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">영양성분</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                </select> &gt;
                <select name="sel5" id="sel6" class="sel">
                    <option value="" selected>개설문의</option>
                    <option value="brd.jsp#page1">공지사항</option>
                    <option value="brd.jsp#page2">고객센터</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">개설문의</h2>
                <table class="borad_table">
					<colgroup>
						<col width="8%">
						<col width="*">
						<col width="10%">
					</colgroup>
					<tbody>
						<tr>
							<td class="num">1</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
                        <tr>
							<td class="num">2</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
                        <tr>
							<td class="num">3</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
                        <tr>
							<td class="num">4</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
                        <tr>
							<td class="num">5</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
                        <tr>
							<td class="num">6</td>
							<td class="title">
							    <a href="" class="tit">개설문의(비밀글입니다)</a>	
						    </td>
							<td class="period">2022-10-12</td>
						</tr>
					</tbody>
				</table> 
            </div>
        </section>
    </div>
    <script>
    var sel = document.getElementsByClassName("sel");
    for(var i=0;i<sel.length;i++){
        sel[i].addEventListener("change", function(){
            location.href = this.value;
        });
    }
    </script>
    <footer class="ft">
     <%@ include file = "footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">▲</a><!-- .to_top.on -->
</body>
</html>