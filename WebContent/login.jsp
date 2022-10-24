<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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

        .frm { border:1px solid #ebaccb;; padding: 24px; width: 580px; margin:50px auto; height: 200px;}
        .frm_tb { display:table; margin:40px auto;  }
        .frm_tb tr { display:table-row; }
        .frm_tb td, .frm_tb th { display:table-cell; }
        .frm_tb th { width:200px; height: 48px; font-size: 20px; font-family: 'Noto Sans KR', sans-serif;}
        .frm_tb td { width:300px; height: 48px; }
        .frm_tb label:before { content:"*"; margin-right: 10px; color:#3c3c8c;}

        .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; color:#333; font-size:16px; text-indent:0.5em; }
        .in_btn { display:block; background-color:#ebaccb; min-width:120px; height: 32px;  line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; 
        color: #fff; font-size: 15px; border: 0; outline: 0;}
        .in_btn:hover { background-color: #3c3c8c; }

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
    <div class="content">
        <figure class="vs">
            <img src="./img/banner.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">로그인</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">로그인</h2>
                <div class="form_fr">
                    <form name="frm1" action="loginPro.jsp" method="post" id="loginForm" class="frm">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <th><label for="id">아이디</label></th>
                                    <td>
                                        <input type="text" name="id" id="id" class="in_dt" required autofocus>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="id">비밀번호</label></th>
                                    <td>
                                        <input type="password" name="pw" id="pw" class="in_dt" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit" class="in_btn">로그인</button>
                                        <button type="reset" class="in_btn">취소</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </section>       
    </div>
    <footer class="ft">
    <%@ include file="footer.jsp" %>
    </footer>
</div>
<a href="" class="to_top">▲</a><!-- .to_top.on -->
</body>
</html>