<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
<div class="ft_logo"><img src="./img/baskin.png" alt="하단로고" width=150px; height=auto;></div>
<div class="mid_box">
    <nav class="fnb">
        <a href="">개인정보 처리 방침</a>
        <a href="">이용약관</a>
        <a href="">이메일무단수집거부</a>
    </nav>
    <p class="addr">
        사업자 등록번호 : 303-81-09535 비알코리아(주) 대표이사 도세호 서울특별시 서초구 남부순환로 2620(양재동 11-149번지)
    </p>
    <p class="copyright">Copyright ⓒ 2016 BRKOREA Company. All Rights Reserved.</p>
</div>
<div class="sel_box">
    <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
        <option value="">패밀리 사이트</option>
        <option value="">SPC그룹사이트</option>
        <option value="">BR코리아</option>
        <option value="">해피포인트카드</option>
    </select>
</div>
<script>
    function sel_link(sel) {
        location.href = sel.value;
    }
</script>
</div>