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

        .tri_list table {width: 100%; border-top: 2px solid #ff7c98; border-bottom: 2px solid #ff7c98; border-collapse: collapse; margin-top: 80px;}
        .tri_list th { border-bottom: 1px solid #d8d1cc; color:#ff7c98; font-size: 13px; line-height: 40px; font-family: 'Noto Sans KR', sans-serif; }
        .tri_list td {border-bottom: 1px solid #d8d1cc; color: #333; font-size: 13px; text-align: center; line-height: 28px; border-collapse: collapse; font-family: 'Noto Sans KR', sans-serif; }
        .tri_list td a {text-decoration-line:none; color: #3c3c8c;}
        .tri_list td:nth-child(even){background: #f7f7f7;}

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
         <%@ include file="nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="./img/banner3.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>영양성분 및 알레르기</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                    <option value="brd.jsp#page1">게시판</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>아이스크림</option>
                    <option value="tri.jsp#page2">아이스크림케이크</option>
                    <option value="tri.jsp#page3">음료</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">아이스크림 영양성분</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>제품명</th>
                                <th>1회 제공량(g)</th>
                                <th>열량(kcal)</th>
                                <th>나트륨(mg)</th>
                                <th>당류(g)</th>
                                <th>포화지방(g)</th>
                                <th>단백질(g)</th>
								<th>카페인(mg)</th>
                                <th>알레르기 성분</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >*버라이어티팩</a></td>
                                <td>싱글레귤러 6개(1회 제공량 : 115g)</td>
                                <td>싱글레귤러 6개</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >*쿼터</a></td>
                                <td>약1/6회(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >*파인트</a></td>
                                <td>약1/3회(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >*패밀리</a></td>
                                <td>약1/10회(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >*하프갤런</a></td>
                                <td>약1/12회(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >*핸드팩세트</a></td>
                                <td>파인트 4개(파인트 : 약1/3회(100g))</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>아이스크림 : 선택하신 아이스크림의 알레르기 유발 성분을 확인해주세요. 아이스크림 외 : 없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >31요거트</a></td>
                                <td>115</td>
                                <td>198</td>
                                <td>67</td>
                                <td>26</td>
                                <td>4</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >그린티</a></td>
                                <td>115</td>
                                <td>245</td>
                                <td>73</td>
                                <td>20</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >뉴욕 치즈케이크</a></td>
                                <td>115</td>
                                <td>295</td>
                                <td>102</td>
                                <td>23</td>
                                <td>10</td>
                                <td>6</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >다크 초코 나이트</a></td>
                                <td>115</td>
                                <td>270</td>
                                <td>166</td>
                                <td>25</td>
                                <td>7</td>
                                <td>5</td>
								<td></td>
                                <td>우유, 밀, 대두, 땅콩</td>
                            </tr>
                            <tr>
                                <td><a href="" >레인보우 샤베트</a></td>
                                <td>115</td>
                                <td>162</td>
                                <td>18</td>
                                <td>29</td>
                                <td>1</td>
                                <td>3</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >마법사의 할로윈</a></td>
                                <td>115g</td>
                                <td>304</td>
                                <td>103</td>
                                <td>29</td>
                                <td>11</td>
                                <td>4</td>
								<td></td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >뮤! 넌 내거야</a></td>
                                <td>115</td>
                                <td>217</td>
                                <td>84</td>
                                <td>27</td>
                                <td>7</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >민트 초콜릿 칩</a></td>
                                <td>115</td>
                                <td>259</td>
                                <td>81</td>
                                <td>23</td>
                                <td>9</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >바닐라</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>74</td>
                                <td>21</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >바람과 함께 사라지다</a></td>
                                <td>115</td>
                                <td>269</td>
                                <td>95</td>
                                <td>25</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유, 대두, 밀, 계란</td>
                            </tr>
                            <tr>
                                <td><a href="" >베리베리 스트로베리</a></td>
                                <td>115</td>
                                <td>228</td>
                                <td>69</td>
                                <td>24</td>
                                <td>7</td>
                                <td>3</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >비타 500 소르베</a></td>
                                <td>115</td>
                                <td>136</td>
                                <td>2</td>
                                <td>25</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td><a href="" >사랑에 빠진 딸기</a></td>
                                <td>115</td>
                                <td>292</td>
                                <td>103</td>
                                <td>26</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유, 대두, 밀, 계란, 땅콩</td>
                            </tr>
                            <tr>
                                <td><a href="" >아몬드 봉봉</a></td>
                                <td>115</td>
                                <td>312</td>
                                <td>94</td>
                                <td>26</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner3.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>영양성분 및 알레르기</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                    <option value="brd.jsp#page1">게시판</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>아이스크림케이크</option>
                    <option value="tri.jsp#page1">아이스크림</option>
                    <option value="tri.jsp#page3">음료</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">아이스크림케이크 영양성분</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>제품명</th>
                                <th>1회 제공량(g)</th>
                                <th>열량(kcal)</th>
                                <th>나트륨(mg)</th>
                                <th>당류(g)</th>
                                <th>포화지방(g)</th>
                                <th>단백질(g)</th>
								<th>카페인(mg)</th>
                                <th>알레르기 성분</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >엄마는 외계인</a></td>
                                <td>115</td>
                                <td>296</td>
                                <td>114</td>
                                <td>23</td>
                                <td>11</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >오레오 쿠키 앤 카라멜</a></td>
                                <td>115g</td>
                                <td>290</td>
                                <td>121</td>
                                <td>26</td>
                                <td>9</td>
                                <td>3</td>
								<td></td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >오레오 쿠키 앤 크림</a></td>
                                <td>115</td>
                                <td>228</td>
                                <td>127</td>
                                <td>18</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >월넛</a></td>
                                <td>115</td>
                                <td>276</td>
                                <td>83</td>
                                <td>28</td>
                                <td>6</td>
                                <td>9</td>
								<td>-</td>
                                <td>우유, 호두</td>
                            </tr>
                            <tr>
                                <td><a href="" >이상한 나라의 솜사탕</a></td>
                                <td>115</td>
                                <td>287</td>
                                <td>74</td>
                                <td>25</td>
                                <td>10</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >짱구가 좋아하는 외계인의 바나나킥</a></td>
                                <td>115</td>
                                <td>257</td>
                                <td>107</td>
                                <td>24</td>
                                <td>9</td>
                                <td>4</td>
								<td></td>
                                <td>우유, 계란, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >찰떡콩떡</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>153</td>
                                <td>19</td>
                                <td>8</td>
                                <td>5</td>
								<td></td>
                                <td>우유, 대두, 밀, 땅콩</td>
                            </tr>
                            <tr>
                                <td><a href="" >체리쥬빌레</a></td>
                                <td>115</td>
                                <td>239</td>
                                <td>48</td>
                                <td>28</td>
                                <td>7</td>
                                <td>3</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >초콜릿</a></td>
                                <td>115</td>
                                <td>274</td>
                                <td>85</td>
                                <td>24</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >초콜릿 무스</a></td>
                                <td>115</td>
                                <td>280</td>
                                <td>123</td>
                                <td>33</td>
                                <td>7</td>
                                <td>7</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >프랄린 앤 크림</a></td>
                                <td>115</td>
                                <td>294</td>
                                <td>161</td>
                                <td>35</td>
                                <td>8</td>
                                <td>5</td>
								<td></td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >피나 콜라다</a></td>
                                <td>115g</td>
                                <td>199</td>
                                <td>26</td>
                                <td>28</td>
                                <td>2</td>
                                <td>1</td>
								<td></td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >피스타치오 아몬드</a></td>
                                <td>115</td>
                                <td>302</td>
                                <td>72</td>
                                <td>27</td>
                                <td>8</td>
                                <td>7</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >피카피카 피카츄</a></td>
                                <td>115</td>
                                <td>269</td>
                                <td>70</td>
                                <td>28</td>
                                <td>9</td>
                                <td>3</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >허니 치즈 트랩</a></td>
                                <td>115</td>
                                <td>290</td>
                                <td>118</td>
                                <td>30</td>
                                <td>9</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >바닐라</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>74</td>
                                <td>21</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner3.png" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>영양성분 및 알레르기</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">이벤트</option>
                    <option value="imp.jsp#page1">가게정보</option>
                    <option value="brd.jsp#page1">게시판</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>음료</option>
                    <option value="tri.jsp#page1">아이스크림</option>
                    <option value="tri.jsp#page2">아이스크림케이크</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">음료 영양성분</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>제품명</th>
                                <th>1회 제공량(g)</th>
                                <th>열량(kcal)</th>
                                <th>나트륨(mg)</th>
                                <th>당류(g)</th>
                                <th>포화지방(g)</th>
                                <th>단백질(g)</th>
								<th>카페인(mg)</th>
                                <th>알레르기 성분</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >나주배 블라스트</a></td>
                                <td>465</td>
                                <td>240</td>
                                <td>1</td>
                                <td>55</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td><a href="" >딸기 연유 라떼</a></td>
                                <td>480</td>
                                <td>415</td>
                                <td>113</td>
                                <td>71</td>
                                <td>7</td>
                                <td>7</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >밀크 쉐이크</a></td>
                                <td>300</td>
                                <td>480</td>
                                <td>178</td>
                                <td>40</td>
                                <td>16</td>
                                <td>9</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >복숭아 아이스티</a></td>
                                <td>460</td>
                                <td>125</td>
                                <td>0</td>
                                <td>31</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>복숭아</td>
                            </tr>
                            <tr>
                                <td><a href="" >설향 딸기 블라스트</a></td>
                                <td>465</td>
                                <td>250</td>
                                <td>16</td>
                                <td>58</td>
                                <td>0</td>
                                <td>1</td>
								<td>-</td>
                                <td>없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >아몬드 봉봉 블라스트</a></td>
                                <td>371</td>
                                <td>590</td>
                                <td>375</td>
                                <td>61</td>
                                <td>11</td>
                                <td>11</td>
								<td>-</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >아이스 유자 캐모마일 티</a></td>
                                <td>453</td>
                                <td>145</td>
                                <td>1</td>
                                <td>36</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >엄마는 외계인 블라스트</a></td>
                                <td>373</td>
                                <td>655</td>
                                <td>344</td>
                                <td>52</td>
                                <td>25</td>
                                <td>11</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >오레오 딸기 쉐이크</a></td>
                                <td>297</td>
                                <td>595</td>
                                <td>312</td>
                                <td>54</td>
                                <td>18</td>
                                <td>8</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >오레오 쉐이크</a></td>
                                <td>297</td>
                                <td>620</td>
                                <td>320</td>
                                <td>50</td>
                                <td>19</td>
                                <td>10</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >오레오 초코 쉐이크</a></td>
                                <td>297</td>
                                <td>660</td>
                                <td>335</td>
                                <td>54</td>
                                <td>19</td>
                                <td>11</td>
								<td>-</td>
                                <td>우유, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >와츄원 쉐이크</a></td>
                                <td>300</td>
                                <td>340~655</td>
                                <td>85~321</td>
                                <td>53~56</td>
                                <td>4.4~19</td>
                                <td>8~11</td>
								<td>-</td>
                                <td>선택하신 아이스크림의 알레르기 유발 성분을 확인해 주세요. 아이스크림 외 &#58; 우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >외계인의 바나나킥 블라스트</a></td>
                                <td>376</td>
                                <td>450</td>
                                <td>217</td>
                                <td>47</td>
                                <td>13</td>
                                <td>8</td>
								<td></td>
                                <td>우유, 계란, 대두, 밀</td>
                            </tr>
                            <tr>
                                <td><a href="" >유자 캐모마일 티</a></td>
                                <td>325</td>
                                <td>145</td>
                                <td>1</td>
                                <td>36</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>없음</td>
                            </tr>
                            <tr>
                                <td><a href="" >카푸치노 블라스트 리얼샷</a></td>
                                <td>480</td>
                                <td>375</td>
                                <td>135</td>
                                <td>52</td>
                                <td>4.6</td>
                                <td>7</td>
								<td>99</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >카푸치노 블라스트 모카</a></td>
                                <td>352</td>
                                <td>380</td>
                                <td>105</td>
                                <td>53</td>
                                <td>8</td>
                                <td>5</td>
								<td>123</td>
                                <td>우유, 대두</td>
                            </tr>
                            <tr>
                                <td><a href="" >카푸치노 블라스트 오리지널</a></td>
                                <td>330</td>
                                <td>315</td>
                                <td>80</td>
                                <td>41</td>
                                <td>8</td>
                                <td>5</td>
								<td>123</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >쿨쿨 잠만보 밀키소다 블라스트</a></td>
                                <td>395</td>
                                <td>360</td>
                                <td>205</td>
                                <td>41</td>
                                <td>7</td>
                                <td>4</td>
								<td>-</td>
                                <td>우유</td>
                            </tr>
                            <tr>
                                <td><a href="" >팝핑보바 리치베리티</a></td>
                                <td>453</td>
                                <td>130</td>
                                <td>6</td>
                                <td>31</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>대두, 복숭아</td>
                            </tr>
                            <tr>
                                <td><a href="" >팝핑보바 청포도 블라스트</a></td>
                                <td>460</td>
                                <td>295</td>
                                <td>22</td>
                                <td>69</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>-</td>
                            </tr>
                                                </tbody>
                    </table>
                </div>
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