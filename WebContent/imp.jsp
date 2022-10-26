<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <%@ include file="head.jsp" %>
    <style>
         @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        /*header.css*/
        .hd {position: fixed;}

        /*content*/
        .vs {clear: both; width: 100%; height: 300px; overflow: hidden; }
        .vs img {display: block; width: 100%; height: auto;}
        .bread {clear: both; width: 100%; line-height: 60px; border-bottom:3px solid #eee;}
        .bread_fr {width: 1200px; margin: 0 auto;}
        .page { clear:both; width: 100%; min-height:100vh;}
        .page:after { content:""; display:block; clear:both; }
        .page_wrap { width: 1200px; margin: 0 auto; }
        .content {display:none;}
        .content:target {display: block;}

        .borad_table {width: 100%; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98; }
        .borad_table td {border-bottom: 1px solid #dadada; text-align: center; font-size: 15px;}
        .borad_table a.tit {color: rgb(129, 33, 185); font-size: 15px; font-family: 'Noto Sans KR', sans-serif; text-decoration: none;}
        .borad_table .num {color : #333; font-weight: 400; vertical-align: middle;}
        .borad_table .title {height:55px; padding-left: 20px; text-align: left; vertical-align: middle;}
        .borad_table .period {font-size: 15px; vertical-align: middle;}

        .img_box1 {width: 400px; border: 4px solid #ffe5c365; float: left; margin-top: 10%; margin-left: 10%;}
        .img_box2 {width: 400px; border: 4px solid #ffe5c365; float: right; margin-top: 10%; margin-right: 10%;}
        .img_box_fr {display: block; clear: both; width: 400px; height:500px;}
        .img_box_fr h2 {text-align: center; font-family: 'Noto Sans KR', sans-serif; font-size: 45px; margin-top: 30px;}
        .img_box_fr .hu {width: 250px; height: 226.56px; margin-left:75px; }
        .img_box_fr span {clear: both; display: block; text-align: center; font-family: 'Noto Sans KR', sans-serif; margin-bottom: 30px;}
        .in_btn {display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:left; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0; margin-left: 140px; font-size: 17px; }
        .in_btn a {color:#fff; text-decoration: none;}
        .in_btn:hover { background-color: #3c3c8c; }

        .map {display: block; clear: both; margin: 0 auto; margin-bottom: 50px;}
        .map_fr {clear:both; display: block; margin: 15px 0px 20px 200px ; font-family: 'Noto Sans KR', sans-serif;}
        .map_fr .sub_title1 {font-size: 20px; margin-bottom: 5px;}
        .map_fr .sub_title2 {font-size: 20px; margin-top: 16px; margin-bottom: 5px;}
        .map_fr .subway {float: left;}
        .map_fr:after { content:""; display:block; clear:both; }
        

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
    <link href="http://apis.map.daum.net/favicon.ico" rel="shortcut icon"> 
    <meta name="viewport" content="width=720">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Daum 지도 API">
    <link rel="stylesheet" type="text/css" href="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.css">
    <style>
    body { background:white; }
    </style>
    
</head>

<div class="wrap">
    <header class="hd">
        <%@ include file="nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/banner6.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>가게정보</option>
                    <option value="baskin.html#page1">MENU</option>
                    <option value="tri.html#page1">영양성분</option>
                    <option value="event.html#page1">이벤트</option>
                    <option value="brd.html#page1">게시판</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>보도자료</option>
                    <option value="imp.html#page2">채용정보</option>
                    <option value="imp.html#page3">CONTACT US</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">보도자료</h2>
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
								<a href="" class="tit">SPC 배스킨라빈스, ‘짱구&흰둥이 컨테이너’ 사전예약 실시</a>
							</td>
							<td class="period">2022-10-07</td>
						</tr>
						<tr>
							<td class="num">13</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 네이버 지식iN과 ‘미스터리 그린 쿠앤크’ 출시</a>
							</td>
							<td class="period">2022-10-06</td>
						</tr>
                        <tr>
							<td class="num">12</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 10월 ‘SKT T Day’ 프로모션 실시</a>
							</td>
							<td class="period">2022-10-04</td>
						</tr>
						<tr>
							<td class="num">11</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 플래그십 스토어 ‘부산서면중앙점’ 오픈</a>
							</td>
							<td class="period">2022-09-30</td>
						</tr>
						<tr>
							<td class="num">10</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 10월 ‘배라데이’ 프로모션 실시</a>
                            </td>
							<td class="period">2022-09-29</td>
						</tr>
						<tr>
							<td class="num">9</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘짱구가 좋아하는 외계인의 바나나킥’ 출시</a>
						    </td>
							<td class="period">2022-09-28</td>
						</tr>
						<tr>
							<td class="num">8</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘3D 기술’로 아이스크림 테크 시대 열었다!</a>
							</td>
							<td class="period">2022-09-21</td>
						</tr>
						<tr>
							<td class="num">7</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘배라왕’ 시즌2 프로모션 실시</a>
						    </td>
							<td class="period">2022-09-19</td>
						</tr>
						<tr>
							<td class="num">6</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘야쿠르트 샤베트&블라스트’ 출시</a>
							</td>
							<td class="period">2022-09-16</td>
						</tr>
						<tr>
							<td class="num">5</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 9월 출시한 ‘아이스크림 콘테스트’ 당선작 스토리 공개</a>
							</td>
							<td class="period">2022-09-15</td>
						</tr>
						<tr>
							<td class="num">4</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, 9월 ‘H-DAY’ 프로모션 실시</a>
							</td>
							<td class="period">2022-09-13</td>
						</tr>
						<tr>
							<td class="num">3</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘포켓몬 블록팩 & 피규어 세트’ 시즌2 출시</a>
							</td>
							<td class="period">2022-09-08</td>
						</tr>
						<tr>
							<td class="num">2</td>
							<td class="title">
								<a href="" class="tit">SPC 배스킨라빈스, ‘그래이맛 어워드 페스타’ 실시</a>
						    </td>
							<td class="period">2022-09-05</td>
						</tr>
						<tr>
							<td class="num">1</td>
							<td class="title">
								<a href="=" class="tit">SPC 배스킨라빈스, ‘아이스 곶감&강정’ 선물세트 출시</a>
							</td>
							<td class="period">2022-09-02</td>
						</tr>
					</tbody>
				</table> 
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner6.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>가게정보</option>
                    <option value="baskin.html#page1">MENU</option>
                    <option value="tri.html#page1">영양성분</option>
                    <option value="event.html#page1">이벤트</option>
                    <option value="brd.html#page1">게시판</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>채용정보</option>
                    <option value="imp.html#page1">보도자료</option>
                    <option value="imp.html#page3">CONTACT US</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">채용정보</h2>
                <div class="img_box1">
                    <div class="img_box_fr">
                        <h2>아르바이트</h2>
                        <img src="./img/imp_img/hu2.png" alt="아르바이트" class="hu">
                        <span>
                        즐거운 일터에서 함께 일하며 경험을 쌓고,<br>
                        다양한 혜택이 함께하는 최고의 기회를 누려보세요!<br>
                        가맹점 아르바이트는<br>
                        아르바이트 포털 사이트에서 모집하고 있습니다.
                        </span>
                        <button type="button" class="in_btn"><a href="http://www.albamon.com/" target="_blank">자세히보기</a>
                    </div>
                </div>
                <div class="img_box2">
                    <div class="img_box_fr">
                        <h2>사무직</h2>
                        <img src="./img/imp_img/hu1.png" alt="사무직" class="hu">
                        <span>
                        끊임없는 혁신으로 성공을 창조해온 배스킨라빈스!<br>
                        이곳에서 당신의 소중한 꿈을 펼쳐보세요!<br>
                        배스킨라빈스 사무직은<br>
                        비알코리아 사이트를 통해 모집하고 있습니다.
                        </span>
                        <button type="button" class="in_btn"><a href="https://spc.recruiter.co.kr/appsite/company/index" target="_blank">자세히보기</a></button>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner6.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>가게정보</option>
                    <option value="baskin.html#page1">MENU</option>
                    <option value="tri.html#page1">영양성분</option>
                    <option value="event.html#page1">이벤트</option>
                    <option value="brd.html#page1">게시판</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>CONTACT US</option>
                    <option value="imp.html#page1">보도자료</option>
                    <option value="imp.html#page2">채용정보</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">CONTACT US</h2>
                <img src="./img/imp_img/contact_img.jpg" alt="map" class="map">
                <div class="map_fr">
                    <h2 class="sub_title1">비알코리아㈜</h2>
                    <p>서울시 서초구 남부순환로 2620 (양재동 11-149번지)<br> TEL : 080-555-3131</p>

                    <h2 class="sub_title2">비알코리아 ㈜ 오시는 방법</h2>
                    <span class="subway">
                    지하철 이용 <br> 3호선 양재역 5번출구, 도보로 3분 소요 (약 200M) <br><br>
                    차량 이용<br> 남부순환로 대로변 위치 (양재역 -> 도곡역 방향)
                    </span>
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
        <%@ include file="footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">▲</a><!-- .to_top.on -->
</body>
</html>