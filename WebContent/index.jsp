<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="head.jsp" %>
    <style>
        @import url("./css/font.css");
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

        /*content*/
        .page {
            clear: both;
            width: 100%;
        }

        .page_wrap {
            width: 1200px;
            margin: 0 auto;
        }

        #page2,
        #page4 {
            background-color: #FFE5C365;
        }

        .page_tit {
            text-align: center;
            font-size: 32px;
            padding-top: 1.2em;
            padding-bottom: 0.8em;
            font-family: 'baskinfont2';
        }

        .lst {
            clear: both;
            width: 1200px;
        }

        .lst a {
            text-decoration-line: none;
        }

        .lst:after {
            content: "";
            display: block;
            clear: both;
        }

        .lst li {
            margin-bottom: 40px;
        }

        .lst li.left {
            float: left;
            width: 800px;
            height: 460px;
        }

        .lst li.right {
            float: right;
            width: 350px;
            height: 460px;
        }

        .ico_lst {
            clear: both;
            width: 100%;
            overflow: hidden;
            margin-top: 50px;
        }

        .ico_lst li a {
            display: block;
            background-position: 0px center;
            background-repeat: no-repeat;
            background-size: auto 80%;
            padding-left: 85px;
        }

        .ico_lst li a.icon1 {
            background-image: url("./img/icecrem-icon.svg");
        }

        .ico_lst li a.icon2 {
            background-image: url("./img/free-icon-cake-3761510.svg");
            height: 85px;
        }

        .ico_lst li a.icon3 {
            background-image: url("./img/free-icon-ice-coffee-1102985.svg");
        }

        .cate_tit {
            color: #333;
            font-size: 30px;
            padding-bottom: 0.5em;
            font-family: 'baskinfont2';
            color: #d382a1;
        }

        .cate_com {
            color: #333;
            font-size: 20px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            font-family: 'Noto Sans KR', sans-serif;
        }

        /*page2*/
        .pic_lst {
            clear: both;
            width: 100%;
            padding-bottom: 80px;
        }

        .pic_lst:after {
            content: "";
            display: block;
            clear: both;
        }

        .pic_lst li {
            float: left;
            position: relative;
            margin-bottom: 30px;
        }

        .pic_lst li a {
            display: block;
            width: 150px;
            height: 300px;
            margin-right: 150px;
        }

        .pic_lst li a img {
            display: block;
            width: 250px;
            height: auto;
            background-color: #ffe5c365;
        }

        .pic_lst li a .hv_box {
            width: 300px;
            height: 300px;
            color: #fff;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 10;
            transition-duration: 0.8s;
            background-color: transparent;
        }

        .pic_lst li a:hover .hv_box {
            opacity: 1;
        }

        .pic_tit {
            position: absolute;
            top: 20px;
            left: 20px;
            color: #3c3c8c;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 20px;
        }

        .pic_com {
            position: absolute;
            right: 80px;
            bottom: 60px;
            color: rgb(212, 95, 16);
            font-family: 'Noto Sans KR', sans-serif;
        }

        /*page3*/
        #page3 {
            background-repeat: no-repeat;
            background-size: cover;
            background-color: #fff;
            background-position: center center;
            height: 85vh;
            overflow: hidden;
        }

        #page3 .page_wrap {
            width: 100%;
        }

        .circle_lst {
            clear: both;
            width: 3200px;
        }

        .circle_lst li {
            width: 240px;
            height: 240px;
            border-radius: 120px;
            overflow: hidden;
            background-color: #fff;
            position: relative;
            float: left;
            margin: 40px;
        }

        .circle_lst.lst2 li {
            float: right;
        }

        .circle_lst li a {
            display: block;
            width: 100%;
            height: 100%;
        }

        .circle_lst li a img {
            display: block;
            width: 300px;
            height: auto;
            position: absolute;
            top: 50%;
            left: -30px;
            z-index: 11;
            margin-top: -150px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if (tp >= 600) {
                    $(".hd").css("position", "fixed");
                } else {
                    $(".hd").css("position", "absolute");
                }
            });
            $
            $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
            $lst1_obj = $(".circle_lst li").clone();
            $(".circle_lst.lst2").append($lst1_obj);
        });    
    </script>
</head>

<body>
    <div class="wrap">
        <header class="hd">
            <%@ include file="nav.jsp" %>
        </header>
        <div class="content">
            <figure class="vs">
                <video src="./video/baskin.mp4" autoplay muted class="vdo"></video>
            </figure>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">FLAVOR OF THE MONTH</h2>
                    <ul class="lst">
                        <li class="left">
                            <video width="800" height="460" controls autoplay muted>
                                <source src="./video/monthly hot menu.mp4" type="video/mp4">
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="ice.jsp" class="icon1">
                                        <h3 class="cate_tit">ICECREAM</h3>
                                        <p class="cate_com">?????????????????? ??????<br>?????????????????? </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="cake.jsp" class="icon2">
                                        <h3 class="cate_tit">ICECREAMCAKE</h3>
                                        <p class="cate_com">????????? ????????? ????????????<br>?????????????????? ????????? ??????????????? ?????? ????????????!</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="drink.jsp" class="icon3">
                                        <h3 class="cate_tit">BEVERAGE</h3>
                                        <p class="cate_com">????????????????????? ?????????<br>???????????????????????? ??????!</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h2 class="page_tit">BR MENU</h2>
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <img src="./img/1720429622.png" alt="?????????????????????" class="??????1">
                                <div class="hv_box">
                                    <h3 class="pic_tit">?????? ????????????????!</h3>
                                    <p class="pic_com">#??????????????? #??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1720430747.png" alt="????????????" class="??????2">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????????</h3>
                                    <p class="pic_com">#?????? #???????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1528197022.png" alt="??????????????????" class="??????3">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????? ?????????</h3>
                                    <p class="pic_com">#????????? #?????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1452062933.png" alt="????????? ??????" class="??????4">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????? ??????</h3>
                                    <p class="pic_com">#????????? #?????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1641693550.png" alt="??????????????????????! ?????????" class="??????5">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????????????????????!?????????</h3>
                                    <p class="pic_com">#??????????????? #?????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1675925202.png" alt="?????????????????????" class="??????6">
                                <div class="hv_box">
                                    <h3 class="pic_tit">?????????????????????</h3>
                                    <p class="pic_com">#????????? #??????????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1641651316.png" alt="??????!?????????" class="??????7">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????! ?????????</h3>
                                    <p class="pic_com">#????????? #?????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1714977808.png" alt="????????? ?????? ??????" class="??????8">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????? ?????? ??????</h3>
                                    <p class="pic_com">#????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1714823808.png" alt="???????????????????????????????????????" class="??????9">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????????????? ???????????? ????????????</h3>
                                    <p class="pic_com">#????????? #????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1714824610.png" alt="????????? ????????? ????????????" class="??????10">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????? ????????? ????????????</h3>
                                    <p class="pic_com">#?????????????????? #????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1652173872.png" alt="??????500????????????" class="??????11">
                                <div class="hv_box">
                                    <h3 class="pic_tit">??????500????????????</h3>
                                    <p class="pic_com">#??????500 #????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/1651908035.png" alt="?????????????????????" class="??????12">
                                <div class="hv_box">
                                    <h3 class="pic_tit">????????? ????????????</h3>
                                    <p class="pic_com">#????????? #????????????</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page3">
                <div class="page_wrap">
                    <h2 class="page_tit">BR EVENT</h2>
                    <ul class="circle_lst">
                        <li><a href=""><img src="./img/calender-gda06ed763_1280.png" alt="???????????????1"></a></li>
                        <li><a href=""><img src="./img/birthday-cake-gbbcb47212_1280.png" alt="???????????????2"></a></li>
                        <li><a href=""><img src="./img/balloon-g7e819c272_1280.png" alt="???????????????3"></a></li>
                        <li><a href=""><img src="./img/trophy-g65648db0d_1280.png" alt="???????????????4"></a></li>
                        <li><a href=""><img src="./img/london-gb335cf5d5_1920.png" alt="???????????????5"></a></li>
                        <li><a href=""><img src="./img/new-york-gdaab04361_1920.png" alt="???????????????6"></a></li>
                        <li><a href=""><img src="./img/paris-gb31570a2a_1280.png" alt="???????????????7"></a></li>
                        <li><a href=""><img src="./img/coffee-g4aefba634_1280.png" alt="???????????????8"></a></li>
                        <li><a href=""><img src="./img/attach-gf8c890f23_1920.jpg" alt="???????????????9"></a></li>
                        <li><a href=""><img src="./img/message-g93daab7d0_1920.jpg" alt="???????????????10"></a></li>
                    </ul>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>

</html>