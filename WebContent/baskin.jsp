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
        .vs {clear: both; width: 100%;  height:300px; overflow: hidden;}
        .vs img {display: block; width:100%; height:auto; margin: auto;}
        .bread {clear: both; width: 100%; line-height: 60px; border-bottom:3px solid #eee;}
        .bread_fr {width: 1200px; margin: 0 auto;}
        .page { clear:both; width: 100%; min-height:100vh;}
        .page:after { content:""; display:block; clear:both; }
        .page_wrap { width: 1200px; margin: 0 auto; }
        .content {display:none; }
        .content:target {display: block;}

        .page_title { padding-top: 1em; font-weight:bolder; font-size: 30px; padding-bottom: 1em; text-align: center;}
        .home { color:#333; text-decoration: none;}

        /*subcontent*/
        .pic_lst {display:block; clear:both; width: 100%; padding-bottom: 80px;}
        .pic_lst:after {content: ""; display: block; clear: both;}
        .pic_fr {display:block; border: 1px solid #ebebeb; width:299px; height: 299px; border-collapse: collapse;}
        .pic_lst li {float: left; position: relative; width: 300px;}
        .pic_lst li a {display: block; width: 150px; height: 300px; text-decoration: none; color: #483834; font-family: 'Noto Sans KR', sans-serif;
        line-height: 1.5; letter-spacing: -.05em;}
        .pic_lst li a img {display: block; width: 250px; height:auto; margin-left: 25.5px;}
        .pic_lst li a img.ic {display: block; width: 250px; height:auto; margin-left: 25.5px; background:url("./img/pr_img/bg_icecream_corn_3.png") 50% 100% no-repeat; background-size: 50px auto;}
        .pic_tit {text-align: center; font-size: 18px; margin-top: 15px;}
        .pic_com {text-align: center; font-size: 13px; margin-top:5px; margin-bottom: -17px;}

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
            <img src="./img/banner0.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                    <option >MENU</option>
                    <option value="tri.jsp#page1">???????????? ??? ????????????</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel2" id="sel2" class="sel">
                    <option value="" selected>???????????????</option>
                    <option value="baskin.jsp#page2">????????????????????????</option>
                    <option value="baskin.jsp#page3">??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">???????????????</span></h2>
                <ul class="pic_lst">
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ???????????? ???????????? ????????????</h3>
                        <p class="pic_com">#???????????? #?????????</p>
                        <img src="./img/pr_img/ic1.png" alt="ic1" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ?????? ?????????</h3>
                        <p class="pic_com">#??????????????? #???????????????</p>
                        <img src="./img/pr_img/ic2.png" alt="ic2" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???! ??? ?????????</h3>
                        <p class="pic_com">#?????? #????????????</p>
                        <img src="./img/pr_img/ic3.png" alt="ic3" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ?????????!</h3>
                        <p class="pic_com">#????????? #??????????????????</p>
                        <img src="./img/pr_img/ic4.png" alt="ic4" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">?????? 500 ?????????</h3>
                        <p class="pic_com">#??????500 #?????????</p>
                        <img src="./img/pr_img/ic5.png" alt="ic5" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????????</h3>
                        <p class="pic_com">#???????????? #?????????</p>
                        <img src="./img/pr_img/ic6.png" alt="ic6" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">?????? ?????????</h3>
                        <p class="pic_com">#???????????? #?????????</p>
                        <img src="./img/pr_img/ic7.png" alt="ic7" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ????????? ??????</h3>
                        <p class="pic_com">#????????????????????????</p>
                        <img src="./img/pr_img/ic8.png" alt="ic8" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">??????</h3>
                        <p class="pic_com">#??????</p>
                        <img src="./img/pr_img/ic9.png" alt="ic9" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ?????? ??? ?????????</h3>
                        <p class="pic_com">#???????????? #??????????????????????????????</p>
                        <img src="./img/pr_img/ic10.png" alt="ic10" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ??? ??????</h3>
                        <p class="pic_com">#????????? #?????????</p>
                        <img src="./img/pr_img/ic11.png" alt="ic11" class="ic">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ??????</h3>
                        <p class="pic_com">#??????</p>
                        <img src="./img/pr_img/ic12.png" alt="ic12" class="ic">
                        </div>
                    </a>
                </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="content" id="page2">
        <figure class="vs">
            <img src="./img/banner0.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="./index.jsp" class="home">HOME</a> &gt;
                <select name="sel3" id="sel3" class="sel">
                    <option>MENU</option>
                    <option value="tri.jsp#page1">???????????? ??? ????????????</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel4" id="sel4" class="sel">
                    <option value="" selected>????????????????????????</option>
                    <option value="baskin.jsp#page1">???????????????</option>
                    <option value="baskin.jsp#page3">??????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">????????????????????????</h2>
                <ul class="pic_lst">
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ???????????? ???????????? ???????????? ?????????</h3>
                        <p class="pic_com">#???????????? #?????????</p>
                        <img src="./img/pr_img/ck1.png" alt="ck1" class="ck1">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ?????? ????????? ?????????</h3>
                        <p class="pic_com">#??????????????? #?????????</p>
                        <img src="./img/pr_img/ck2.png" alt="ck2" class="ck2">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">????????? ?????? ?????? ?????????</h3>
                        <p class="pic_com">#????????? #?????????????????????</p>
                        <img src="./img/pr_img/ck3.png" alt="ck3" class="ck3">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ?????????</h3>
                        <p class="pic_com">#????????? #??????</p>
                        <img src="./img/pr_img/ck4.png" alt="ck4" class="ck4">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ????????????</h3>
                        <p class="pic_com">#????????? #????????????</p>
                        <img src="./img/pr_img/ck5.png" alt="ck5" class="ck5">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">?????? ?????? ???????????? ?????????</h3>
                        <p class="pic_com">#?????????????????? #??????</p>
                        <img src="./img/pr_img/ck6.png" alt="ck6" class="ck6">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">?????? ???????????? ?????????</h3>
                        <p class="pic_com">#?????? #?????????</p>
                        <img src="./img/pr_img/ck7.png" alt="ck7" class="ck7">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????????????????????</h3>
                        <p class="pic_com">#?????????????????? #???????????????????????????</p>
                        <img src="./img/pr_img/ck8.png" alt="ck8" class="ck8">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">???????????? ??? ????????? ?????????</h3>
                        <p class="pic_com">#?????????????????? #??????????????????</p>
                        <img src="./img/pr_img/ck9.png" alt="ck9" class="ck9">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">??????! ?????????</h3>
                        <p class="pic_com">#????????? #?????????</p>
                        <img src="./img/pr_img/ck10.png" alt="ck10" class="ck10">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">??? ?????? ?????????</h3>
                        <p class="pic_com">#????????? #?????????</p>
                        <img src="./img/pr_img/ck11.png" alt="ck11" class="ck11">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="pic_fr">
                        <h3 class="pic_tit">??? ?????? ??????</h3>
                        <p class="pic_com">#????????????????????? #????????????????????????</p>
                        <img src="./img/pr_img/ck12.png" alt="ck12" class="ck12">
                        </div>
                    </a>
                </li>
                </ul>   
            </div>
        </section>
    </div>
    <div class="content" id="page3">
        <figure class="vs">
            <img src="./img/banner0.png" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="./index.jsp" class="home">HOME</a> &gt;
                <select name="sel5" id="sel5" class="sel">
                    <option>MENU</option>
                    <option value="tri.jsp#page1">???????????? ??? ????????????</option>
                    <option value="event.jsp#page1">?????????</option>
                    <option value="imp.jsp#page1">????????????</option>
                    <option value="brd.jsp#page1">?????????</option>
                </select> &gt;
                <select name="sel6" id="sel6" class="sel">
                    <option value="" selected>??????</option>
                    <option value="baskin.jsp#page1">???????????????</option>
                    <option value="baskin.jsp#page2">????????????????????????</option>
                </select>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">??????</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">???????????? ???????????? ????????????</h3>
                            <p class="pic_com">#???????????? #?????????</p>
                            <img src="./img/pr_img/dr1.png" alt="dr1" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">???????????? ????????????</h3>
                            <p class="pic_com">#???????????? #????????????</p>
                            <img src="./img/pr_img/dr2.png" alt="dr2" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">????????? ?????? ??????</h3>
                            <p class="pic_com">#????????? #????????????</p>
                            <img src="./img/pr_img/dr3.png" alt="dr3" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">????????? ?????? ??????</h3>
                            <p class="pic_com">#????????? #????????????</p>
                            <img src="./img/pr_img/dr4.png" alt="dr4" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">??????????????? ??????????????? ????????????</h3>
                            <p class="pic_com">#??????????????? #???????????????</p>
                            <img src="./img/pr_img/dr5.png" alt="dr5" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">??????????????? ??????????????? ??????</h3>
                            <p class="pic_com">#??????????????? #???????????????</p>
                            <img src="./img/pr_img/dr6.png" alt="dr6" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">??????????????? ??????????????? ??????</h3>
                            <p class="pic_com">#??????????????? #???????????????</p>
                            <img src="./img/pr_img/dr7.png" alt="dr7" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">?????? ?????? ????????????</h3>
                            <p class="pic_com">#?????? #????????????</p>
                            <img src="./img/pr_img/dr8.png" alt="dr8" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">??????500????????????</h3>
                            <p class="pic_com">#??????500 #????????????</p>
                            <img src="./img/pr_img/dr9.png" alt="dr9" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">????????? ??????????????? ????????????</h3>
                            <p class="pic_com">#????????? #???????????????</p>
                            <img src="./img/pr_img/dr10.png" alt="dr10" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">?????? ????????? ???????????? ????????????</h3>
                            <p class="pic_com">#????????? #????????????</p>
                            <img src="./img/pr_img/dr11.png" alt="dr11" class="dr">
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="pic_fr">
                            <h3 class="pic_tit">????????? ????????? ????????????</h3>
                            <p class="pic_com">#?????????????????? #????????????</p>
                            <img src="./img/pr_img/dr12.png" alt="dr12" class="dr">
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