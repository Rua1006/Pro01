<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
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
        .content {display:none;}
        .content:target {display: block;}

        .pic_lst {clear:both; width: 100%; padding-bottom: 80px;}
        .pic_lst li {float: left; position: relative; margin-bottom: 30px;}
        .pic_lst li a {display: block; width: 200px; height: 300px; margin-right: 100px; text-decoration-line: none;}
        .pic_lst li a img {display: block; width: 250px; height:auto;  background-color: #ffe5c365;}
        .pic_fr {display:block; border: 1px solid #ebebeb; width:250px; height: auto; margin-top: 20px; background-color: #ffe5c365;}
        .pic_tit {display: inline-block; margin-top: 10px; width: 200px; white-space: nowrap; overflow: hidden; padding-left: 0.8em; text-overflow:ellipsis; font-family: 'Noto Sans KR', sans-serif;}
        .pic_com {font-family: 'Noto Sans KR', sans-serif; margin-top: 10px; margin-bottom: 10px; font-size: 12px; padding-right: 1em; text-align: right;}

        .page_title { padding-top: 1em; padding-bottom: 1em; font-weight:bolder; font-size: 30px; text-align: center; }
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
            <img src="./img/banner5.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option>?????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">????????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>???????????? ?????????</option>
                    <option value="event.jsp#page2">????????? ??????</option>
                    <option value="event.jsp#page3">?????? ?????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <ul class="pic_lst">
                <h2 class="page_title">???????????? ?????????</h2>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev1.jpg" alt="ev1" class="ev1">
                        <h3 class="pic_tit">10??? ????????? ???, ?????????????????? ????????? ???????????????!</h3>
                        <p class="pic_com">2022-10-01~2022-10-26</p>   
                    </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev2.jpg" alt="ev2" class="ev2">
                        <h3 class="pic_tit">???????????? ????????????, ?????? ????????? ?????????</h3>
                        <p class="pic_com">2022-10-14~2022-10-20</p>   
                        </div>
                </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev3.jpg" alt="ev3" class="ev3">
                        <h3 class="pic_tit">?????? & ????????? ???????????? ???????????? 9,900???</h3>
                        <p class="pic_com">2022-10-14~???????????????</p>   
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev4.jpg" alt="ev4" class="ev4">
                        <h3 class="pic_tit">?????? ???????????? ???????????? 5,900???</h3>
                        <p class="pic_com">2022-10-08~???????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev5.jpg" alt="ev5" class="ev5">
                        <h3 class="pic_tit">????????? ?????? ????????????, ???????????? ???????????? 1????????? ??????!</h3>
                        <p class="pic_com">2022-08-01~2022-12-31</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev6.png" alt="ev6" class="ev6">
                        <h3 class="pic_tit">?????? ????????? ?????? 50% ?????? ??????</h3>
                        <p class="pic_com">????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev7.png" alt="ev7" class="ev7">
                        <h3 class="pic_tit">2022 ?????????????????? ????????? ????????????</h3>
                        <p class="pic_com">????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev8.png" alt="ev8" class="ev8">
                        <h3 class="pic_tit">T ????????? ?????? ?????? ??????????????? ?????? 50% ?????? ?????? ??????</h3>
                        <p class="pic_com">????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev9.png" alt="ev9" class="ev9">
                        <h3 class="pic_tit">????????? ??????????????? ????????? ??????????????? ??????, ???????????? ???????????? ??????!</h3>
                        <p class="pic_com">????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev10.png" alt="ev10" class="ev10">
                        <h3 class="pic_tit">KT ????????? ??????????????? ????????? ????????? 30% ??????!</h3>
                        <p class="pic_com">????????????</p>
                        </div>   
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev11.png" alt="ev11" class="ev11">
                        <h3 class="pic_tit">???????????? M????????? 50% ??????</h3>
                        <p class="pic_com">????????????</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">   
                        <img src="./img/ev_img/ev12.png" alt="ev11\2" class="ev12">
                        <h3 class="pic_tit">????????? ?????? ?????????????????? ???????????????</h3>
                        <p class="pic_com">2021-08-20~?????? ?????????</p>
                        </div>
                    </a>
                </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner5.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>?????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">????????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>????????? ??????</option>
                    <option value="event.jsp#page1">???????????? ?????????</option>
                    <option value="event.jsp#page3">?????? ?????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????? ??????</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr">   
                            <img src="./img/ev_img/win1.jpg" alt="win1" class="win1">
                            <h3 class="pic_tit">7??? ????????? ???, ?????????????????? ????????? ???????????????!</h3>
                            <p class="pic_com">2022-07-01~2022-07-26</p>
                            </div>   
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner5.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>?????????</option>
                    <option value="baskin.jsp#page1">MENU</option>
                    <option value="tri.jsp#page1">????????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>?????? ?????????</option>
                    <option value="event.jsp#page1">????????? ??????</option>
                    <option value="event.jsp#page2">???????????? ?????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">?????? ?????????</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr">   
                            <img src="./img/ev_img/win1.jpg" alt="win1" class="win1">
                            <h3 class="pic_tit">7??? ????????? ???, ?????????????????? ????????? ???????????????!</h3>
                            <p class="pic_com">2022-07-01~2022-07-26</p>
                            </div>   
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">   
                            <img src="./img/ev_img/win2.png" alt="win2" class="win2">
                            <h3 class="pic_tit">2018 ????????? ?????? ?????? ?????? ??????! ?????????????????????</h3>
                            <p class="pic_com">2018-10-09~2020-10-09</p>
                            </div>   
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">   
                            <img src="./img/ev_img/win3.png" alt="win3" class="win3">
                            <h3 class="pic_tit">1?????? ??? ?????? ????????? ??????</h3>
                            <p class="pic_com">2016-05-01~2021-07-26</p>
                            </div>   
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">   
                            <img src="./img/ev_img/win4.png" alt="win4" class="win4">
                            <h3 class="pic_tit">???????????? ??????????????? ???????????? ???????????????!</h3>
                            <p class="pic_com">2020-03-01~2021-07-26</p>
                            </div>   
                        </a>
                    </li>
                </ul>
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