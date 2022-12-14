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
        .home { color:#333; text-decoration: none;}
        .to_top { position:fixed; bottom:80px; right:80px; z-index:999; background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
        height: 60px; line-height: 60px; text-align: center; font-size:30px; border-radius:32px; visibility:hidden; transition-duration:0.8s;
        text-decoration: none;}
        .to_top:hover { background-color: rgb(129, 33, 185); }
        .to_top.on { visibility: visible; }

    </style>
    <link rel="stylesheet" href="footer.css">
    <!--????????? ????????????-->
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
            <img src="./img/banner3.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>???????????? ??? ????????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>???????????????</option>
                    <option value="tri.jsp#page2">????????????????????????</option>
                    <option value="tri.jsp#page3">??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">??????????????? ????????????</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>?????????</th>
                                <th>1??? ?????????(g)</th>
                                <th>??????(kcal)</th>
                                <th>?????????(mg)</th>
                                <th>??????(g)</th>
                                <th>????????????(g)</th>
                                <th>?????????(g)</th>
								<th>?????????(mg)</th>
                                <th>???????????? ??????</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >*??????????????????</a></td>
                                <td>??????????????? 6???(1??? ????????? : 115g)</td>
                                <td>??????????????? 6???</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >*??????</a></td>
                                <td>???1/6???(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >*?????????</a></td>
                                <td>???1/3???(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >*?????????</a></td>
                                <td>???1/10???(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >*????????????</a></td>
                                <td>???1/12???(100g)</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >*???????????????</a></td>
                                <td>????????? 4???(????????? : ???1/3???(100g))</td>
                                <td>141~306</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
								<td>-</td>
                                <td>??????????????? : ???????????? ?????????????????? ???????????? ?????? ????????? ??????????????????. ??????????????? ??? : ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >31?????????</a></td>
                                <td>115</td>
                                <td>198</td>
                                <td>67</td>
                                <td>26</td>
                                <td>4</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????????</a></td>
                                <td>115</td>
                                <td>245</td>
                                <td>73</td>
                                <td>20</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ???????????????</a></td>
                                <td>115</td>
                                <td>295</td>
                                <td>102</td>
                                <td>23</td>
                                <td>10</td>
                                <td>6</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ?????? ?????????</a></td>
                                <td>115</td>
                                <td>270</td>
                                <td>166</td>
                                <td>25</td>
                                <td>7</td>
                                <td>5</td>
								<td></td>
                                <td>??????, ???, ??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ?????????</a></td>
                                <td>115</td>
                                <td>162</td>
                                <td>18</td>
                                <td>29</td>
                                <td>1</td>
                                <td>3</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ?????????</a></td>
                                <td>115g</td>
                                <td>304</td>
                                <td>103</td>
                                <td>29</td>
                                <td>11</td>
                                <td>4</td>
								<td></td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???! ??? ?????????</a></td>
                                <td>115</td>
                                <td>217</td>
                                <td>84</td>
                                <td>27</td>
                                <td>7</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ????????? ???</a></td>
                                <td>115</td>
                                <td>259</td>
                                <td>81</td>
                                <td>23</td>
                                <td>9</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????????</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>74</td>
                                <td>21</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ????????????</a></td>
                                <td>115</td>
                                <td>269</td>
                                <td>95</td>
                                <td>25</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????, ??????, ???, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????????</a></td>
                                <td>115</td>
                                <td>228</td>
                                <td>69</td>
                                <td>24</td>
                                <td>7</td>
                                <td>3</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? 500 ?????????</a></td>
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
                                <td><a href="" >????????? ?????? ??????</a></td>
                                <td>115</td>
                                <td>292</td>
                                <td>103</td>
                                <td>26</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????, ??????, ???, ??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ??????</a></td>
                                <td>115</td>
                                <td>312</td>
                                <td>94</td>
                                <td>26</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner3.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>???????????? ??? ????????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>????????????????????????</option>
                    <option value="tri.jsp#page1">???????????????</option>
                    <option value="tri.jsp#page3">??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">???????????????????????? ????????????</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>?????????</th>
                                <th>1??? ?????????(g)</th>
                                <th>??????(kcal)</th>
                                <th>?????????(mg)</th>
                                <th>??????(g)</th>
                                <th>????????????(g)</th>
                                <th>?????????(g)</th>
								<th>?????????(mg)</th>
                                <th>???????????? ??????</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >????????? ?????????</a></td>
                                <td>115</td>
                                <td>296</td>
                                <td>114</td>
                                <td>23</td>
                                <td>11</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ??? ?????????</a></td>
                                <td>115g</td>
                                <td>290</td>
                                <td>121</td>
                                <td>26</td>
                                <td>9</td>
                                <td>3</td>
								<td></td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ??? ??????</a></td>
                                <td>115</td>
                                <td>228</td>
                                <td>127</td>
                                <td>18</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >??????</a></td>
                                <td>115</td>
                                <td>276</td>
                                <td>83</td>
                                <td>28</td>
                                <td>6</td>
                                <td>9</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ????????? ?????????</a></td>
                                <td>115</td>
                                <td>287</td>
                                <td>74</td>
                                <td>25</td>
                                <td>10</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ???????????? ???????????? ????????????</a></td>
                                <td>115</td>
                                <td>257</td>
                                <td>107</td>
                                <td>24</td>
                                <td>9</td>
                                <td>4</td>
								<td></td>
                                <td>??????, ??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????????</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>153</td>
                                <td>19</td>
                                <td>8</td>
                                <td>5</td>
								<td></td>
                                <td>??????, ??????, ???, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????????</a></td>
                                <td>115</td>
                                <td>239</td>
                                <td>48</td>
                                <td>28</td>
                                <td>7</td>
                                <td>3</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????????</a></td>
                                <td>115</td>
                                <td>274</td>
                                <td>85</td>
                                <td>24</td>
                                <td>8</td>
                                <td>5</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ??????</a></td>
                                <td>115</td>
                                <td>280</td>
                                <td>123</td>
                                <td>33</td>
                                <td>7</td>
                                <td>7</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ??? ??????</a></td>
                                <td>115</td>
                                <td>294</td>
                                <td>161</td>
                                <td>35</td>
                                <td>8</td>
                                <td>5</td>
								<td></td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ?????????</a></td>
                                <td>115g</td>
                                <td>199</td>
                                <td>26</td>
                                <td>28</td>
                                <td>2</td>
                                <td>1</td>
								<td></td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >??????????????? ?????????</a></td>
                                <td>115</td>
                                <td>302</td>
                                <td>72</td>
                                <td>27</td>
                                <td>8</td>
                                <td>7</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ?????????</a></td>
                                <td>115</td>
                                <td>269</td>
                                <td>70</td>
                                <td>28</td>
                                <td>9</td>
                                <td>3</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ?????? ??????</a></td>
                                <td>115</td>
                                <td>290</td>
                                <td>118</td>
                                <td>30</td>
                                <td>9</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????????</a></td>
                                <td>115</td>
                                <td>246</td>
                                <td>74</td>
                                <td>21</td>
                                <td>8</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner3.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>???????????? ??? ????????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>??????</option>
                    <option value="tri.jsp#page1">???????????????</option>
                    <option value="tri.jsp#page2">????????????????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">?????? ????????????</h2>
                <div class="tri_list">
                    <table>
                        <thead>
                            <tr>
                                <th>?????????</th>
                                <th>1??? ?????????(g)</th>
                                <th>??????(kcal)</th>
                                <th>?????????(mg)</th>
                                <th>??????(g)</th>
                                <th>????????????(g)</th>
                                <th>?????????(g)</th>
								<th>?????????(mg)</th>
                                <th>???????????? ??????</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="" >????????? ????????????</a></td>
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
                                <td><a href="" >?????? ?????? ??????</a></td>
                                <td>480</td>
                                <td>415</td>
                                <td>113</td>
                                <td>71</td>
                                <td>7</td>
                                <td>7</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ?????????</a></td>
                                <td>300</td>
                                <td>480</td>
                                <td>178</td>
                                <td>40</td>
                                <td>16</td>
                                <td>9</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ????????????</a></td>
                                <td>460</td>
                                <td>125</td>
                                <td>0</td>
                                <td>31</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>?????????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ?????? ????????????</a></td>
                                <td>465</td>
                                <td>250</td>
                                <td>16</td>
                                <td>58</td>
                                <td>0</td>
                                <td>1</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ????????????</a></td>
                                <td>371</td>
                                <td>590</td>
                                <td>375</td>
                                <td>61</td>
                                <td>11</td>
                                <td>11</td>
								<td>-</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ???????????? ???</a></td>
                                <td>453</td>
                                <td>145</td>
                                <td>1</td>
                                <td>36</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ????????? ????????????</a></td>
                                <td>373</td>
                                <td>655</td>
                                <td>344</td>
                                <td>52</td>
                                <td>25</td>
                                <td>11</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ?????????</a></td>
                                <td>297</td>
                                <td>595</td>
                                <td>312</td>
                                <td>54</td>
                                <td>18</td>
                                <td>8</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????????</a></td>
                                <td>297</td>
                                <td>620</td>
                                <td>320</td>
                                <td>50</td>
                                <td>19</td>
                                <td>10</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????? ?????????</a></td>
                                <td>297</td>
                                <td>660</td>
                                <td>335</td>
                                <td>54</td>
                                <td>19</td>
                                <td>11</td>
								<td>-</td>
                                <td>??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >????????? ?????????</a></td>
                                <td>300</td>
                                <td>340~655</td>
                                <td>85~321</td>
                                <td>53~56</td>
                                <td>4.4~19</td>
                                <td>8~11</td>
								<td>-</td>
                                <td>???????????? ?????????????????? ???????????? ?????? ????????? ????????? ?????????. ??????????????? ??? &#58; ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????? ????????????</a></td>
                                <td>376</td>
                                <td>450</td>
                                <td>217</td>
                                <td>47</td>
                                <td>13</td>
                                <td>8</td>
								<td></td>
                                <td>??????, ??????, ??????, ???</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ???????????? ???</a></td>
                                <td>325</td>
                                <td>145</td>
                                <td>1</td>
                                <td>36</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????? ?????????</a></td>
                                <td>480</td>
                                <td>375</td>
                                <td>135</td>
                                <td>52</td>
                                <td>4.6</td>
                                <td>7</td>
								<td>99</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????? ??????</a></td>
                                <td>352</td>
                                <td>380</td>
                                <td>105</td>
                                <td>53</td>
                                <td>8</td>
                                <td>5</td>
								<td>123</td>
                                <td>??????, ??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????? ????????????</a></td>
                                <td>330</td>
                                <td>315</td>
                                <td>80</td>
                                <td>41</td>
                                <td>8</td>
                                <td>5</td>
								<td>123</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >?????? ????????? ???????????? ????????????</a></td>
                                <td>395</td>
                                <td>360</td>
                                <td>205</td>
                                <td>41</td>
                                <td>7</td>
                                <td>4</td>
								<td>-</td>
                                <td>??????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ???????????????</a></td>
                                <td>453</td>
                                <td>130</td>
                                <td>6</td>
                                <td>31</td>
                                <td>0</td>
                                <td>0</td>
								<td>-</td>
                                <td>??????, ?????????</td>
                            </tr>
                            <tr>
                                <td><a href="" >???????????? ????????? ????????????</a></td>
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
<a href="" class="to_top">???</a><!-- .to_top.on -->
</body>
</html>