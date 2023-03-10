<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        .star_icon {
            /* 리뷰 별 url 삽입 */
        }

        select {
            writing-mode: horizontal-tb !important;
            text-rendering: auto;
            color: fieldtext;
            letter-spacing: normal;
            word-spacing: normal;
            line-height: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            text-align: start;
            white-space: pre;
            -webkit-rtl-ordering: logical;
            cursor: default;
        }

        option {
            font-weight: normal;
            display: block;
            white-space: nowrap;
            min-height: 1.2em;
            padding: 0px 2px 1px;
        }

        button {
            appearance: auto;
            writing-mode: horizontal-tb !important;
            text-rendering: auto;
            letter-spacing: normal;
            word-spacing: normal;
            line-height: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            display: inline-block;
            text-align: center;
            align-items: flex-start;
            cursor: default;
            box-sizing: border-box;
            margin: 0em;
            padding: 1px 6px;
            border-width: 2px;
            border-style: outset;
            border-color: buttonborder;
            border-image: initial;
        }

        h2 {
            color: #2d333f;
            margin: 0;
        }

        h3 {
            display: block;
            font-size: 1.17em;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
        }

        .h3_sort {
            margin: 32px 0 8px;
            font-size: 1rem;
            font-weight: 500;
            line-height: 1.5rem;
            text-align: end;
        }

        .title {
            border-bottom: 0.0625rem solid #d8d9db;
            display: flex;
            justify-content: space-between;
            margin: 0 0 16px;
            padding-bottom: 16px;
        }

        .div_title {
            align-self: center;
            width: 100%;
        }

        .div_star {
            align-items: center;
            display: flex;
            flex-shrink: 0;
            margin-right: 8px;
        }

        .div_score {
            background: #da3743;
            height: 1rem;
            width: 80%;
        }

        .div_sort1 {
            width: 18rem;
            float: right;
        }

        .div_sort2 {
            align-items: center;
            display: flex;
            position: relative;
        }

        .div_img {
            align-items: center;
            border-radius: 50%;
            display: flex;
            flex-shrink: 0;
            font-weight: 500;
            height: 3rem;
            justify-content: center;
            margin: 0 8px 8px;
            width: 3rem;
        }
		.reg{
			float: right;
		}
        .desc {
            margin: 0 0 4px;
            width: 100%;
            overflow-wrap: break-word;
        }

        .topmargin {
            margin-top: 16px;
        }

        .sub_sector {
            background-color: #fff;
            border-radius: 4px;
            box-sizing: border-box;
            margin: auto;
            padding: 0 16px calc(128px - 0.25rem);
            width: 40rem;
        }

        .sect {
            margin-top: 48px;
        }

        .section_profile {
            align-items: center;
            display: flex;
            flex: none;
            flex-direction: column;
            flex-wrap: wrap;
            margin: 0 16px;
            position: relative;
            text-align: center;
            width: 6rem;
        }

        .section_review {
            flex-grow: 1;
        }

        .section_review_head {
            align-items: center;
            justify-content: space-between;
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 8px;
        }

        .star {
            width: 30%;
            
        }

        .star>i {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            color: #da3743;
            display: block;
            height: 100%;
            width: 100%;
        }

        .select_sort {
            background-color: #fff;
            border: 0.0625rem solid #d8d9db;
            border-radius: 4px;
            box-sizing: border-box;
            color: #2d333f;
            display: block;
            font-size: 16px;
            height: 100%;
            min-height: 48px;
            padding: 0.875rem 32px 0.875rem 8px;
            resize: vertical;
            width: 100%;
        }

        .left {
            display: flex;
        }

        label {
            cursor: default;
        }

        .label_score {
            margin-right: 4px;
            text-align: center;
            width: 0.875rem;
        }

        meter {
            appearance: auto;
            box-sizing: border-box;
            display: inline-block;
            block-size: 1em;
            inline-size: 5em;
            vertical-align: -0.2em;
            -webkit-user-modify: read-only !important;
            writing-mode: horizontal-tb !important;
        }

        .meter_score {
            -webkit-appearance: none;
            appearance: none;
            background: #fff;
            border: 0.0625rem solid #d8d9db;
            height: 1.125rem;
            width: 100%;
        }

        ul {
            display: block;
            list-style-type: disc;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 40px;
        }

        ol {
            display: block;
            list-style-type: decimal;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 40px;
        }

        .ol_graph {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        li {
            display: list-item;
        }

        .li_graph {
            display: flex;
            margin-bottom: 8px;
        }

        .pagel {
            margin: 0 8px;
            padding: 0;
        }

        .pagelist {
            display: flex;
            flex: 1;
            justify-content: center;
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .page_div_l {
            margin: 0;
        }

        a {
            text-decoration: none;
            background-color: initial;
        }

        .rightsort {
            display: flex;
            flex-direction: row;
            justify-content: flex-end;
            margin-top: 8px;
        }

        .review_section {
            margin: 0 8px 0 0;
            width: calc(60% - 8px);
        }

        .review_day {
            float: right;
            padding-left: 80px;
        }

        .review_content {
            line-height: 24px;
            max-height: 72px;
            overflow: hidden;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            display: -webkit-box;
            margin: 0;
            max-width: 100%;
            overflow-wrap: anywhere;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5rem;
        }

        .reviewslist {
            list-style: none;
            margin-top: 32px;
            padding: 0;
        }

        .reviewlist {
            padding-top: 0;
            flex-direction: row;
            border-bottom: 0.0625rem solid #d8d9db;
            display: flex;
            padding: 16px 0;
            position: relative;
        }

        .review_desc {
            margin-top: 16px;
        }

        .review_desc2 {
            bottom: 0px;
            right: 10px;
            margin-bottom: 0;
            font-size: small;
        }

        .score_section {
            padding-top: 0.125rem;
            width: 40%;
        }

        .score {
            align-items: center;
            display: flex;
            padding-right: 16px;
        }

        .article_font {
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5rem;
        }

        .font_arr {
            font-size: .875rem;
            font-weight: 500;
            line-height: 1.25rem;
        }

        .font_head {
            font-size: 1.5rem;
            font-weight: 700;
            line-height: 1.75rem;
        }
        
        .font_norm{
        	font-size: 1rem;
        	font-weight: 600;
        	line-height: 1.5rem;
        }

        .font_title {
            margin: 0 0 8px;
            width: 100%;
        }

        .btn {
            align-items: center;
            border: 0.0625rem solid #d8d9db;
            border-radius: 50%;
            box-sizing: border-box;
            color: #2d333f;
            display: inline-flex;
            height: 2.5rem;
            justify-content: center;
            margin: 0;
            width: 2.5rem;
        }

        .btn_report {
            align-items: center;
            background-color: #fff;
            border: 0;
            color: #6f737b;
            display: flex;
            margin: 0;
            padding: 0;
        }
        
        .btn_reg {
    		align-items: center;
    		background-color: #fff;
    		border: 0;
    		color: #6f737b;
    		display: flex;
    		margin: 0;
		}

        .page {
            padding: 4px 0 0;
        }

        .page_div {
            align-self: auto;
            display: flex;
            padding: 16px 0;
        }

        body {
            align-items: center;
            height: 100%;
        }

        footer {
            display: block;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.3.js" 
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		function sortReview(){
			var sort = $("#selectbox option:selected").val();
			if(sort == high) location.href='review.jsp?sort=high';
			else if(sort == low) location.href='review.jsp?sort=low';
			else if(sort == recent) location.href='review.jsp?sort=recent';
			return;
		}
	</script>
</head>
<body>
<div class="sub_sector">
        <section class="sect">
            <header class="title">
                <div class="div_title">
                    <h2 class="font_head">리뷰 페이지</h2>
                </div>
            </header>
            <section class="sect left">
                <article class="review_section article_font">
                    <h3 class="font_head font_title">전체 평점 및 리뷰</h3>

                    <!-- 평균 평점 -->
                    <section class="score font_arr">
                    <!-- <img class="star" src="./img/star.png"> -->
                        <!-- <div class="div_star">
                            <div class="star">
                                <i class="star_icon">별</i>
                            </div>
                            <div class="star">
                                <i class="star_icon">별</i>
                            </div>
                            <div class="star">
                                <i class="star_icon">별</i>
                            </div>
                            <div class="star">
                                <i class="star_icon">별</i>
                            </div>
                            <div class="star">
                                <i class="star_icon">없</i>
                            </div>
                        </div> -->
                        <div class="score">평균 4.7점</div>
                        총 N명 참여
                    </section>
                    <p class="review_desc">설명</p>
                    <p class="review_desc2">허위 리뷰 처벌 조항</p>
                </article>
                <article class="score_section article_font">
                    <ol class="ol_graph">
                        <li class="li_graph">
                            <label class="label_score">5</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[5]*100}%"></div>
                            </meter>
                        </li>
                        <li class="li_graph">
                            <label class="label_score">4</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[4]*100}%"></div>
                            </meter>
                        </li>
                        <li class="li_graph">
                            <label class="label_score">3</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[3]*100}%"></div>
                            </meter>
                        </li>
                        <li class="li_graph">
                            <label class="label_score">2</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[2]*100}%"></div>
                            </meter>
                        </li>
                        <li class="li_graph">
                            <label class="label_score">1</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[1]*100}%"></div>
                            </meter>
                        </li>
                        <li class="li_graph">
                            <label class="label_score">0</label>
                            <meter class="meter_score">
                                <div class="div_score" style="width:${scoreList[0]*100}%"></div>
                            </meter>
                        </li>
                    </ol>
                </article>
            </section>
            <h3 class="h3_sort"></h3>
            <div class="div_sort1">
                <div class="div_sort2">
                    <select class="select_sort" id="selectbox" 
                    onchange="location.href='./ReviewList.rv?sort='+this.value">
                    
                    	<option value="none" selected disabled style="display:none">
                    	정렬 기준
                    	</option>
                        <option value="high">별점 높은 순</option>
                        <option value="low">별점 낮은 순</option>
                        <option value="recent">최신순</option>
                    </select>
                </div>
            </div><br>
            <!-- 리뷰내용 -->
            <c:forEach var="list" items="${ReviewList }">
            <ol class="reviewslist">
                <li class="reviewlist">
                    <!-- 사진, 이름 섹션 -->
                    <section class="section_profile">
                        <div class="div_img">
                            ${list.review_img }
                        </div>
                        <p class="desc font_arr">${list.m_id }</p>
                    </section>
                    <!-- 평점, 작성일자, 내용 섹션 -->
                    <section class="section_review">
                        <section class="section_review_head font_arr">
                        	<c:if test="${list.score eq 5.0 }">
                        		<img class="star" src="./img/star.png">
                        	</c:if>
                            <!-- <div class="div_star">
                                <div class="star">
                                    <i class="star_icon">별</i>
                                </div>
                                <div class="star">
                                    <i class="star_icon">별</i>
                                </div>
                                <div class="star">
                                    <i class="star_icon">별</i>
                                </div>
                                <div class="star">
                                    <i class="star_icon">반</i>
                                </div>
                                <div class="star">
                                    <i class="star_icon">없</i>
                                </div>
                            </div> -->
                            <p class="review_day">${list.reg_date }</p>
                        </section>
                        <div class="topmargin">
                            <span class="review_content">${list.content }</span>
                        </div>
                        <div class="rightsort">
                            <button class="btn_report font_arr">신고하기</button>
                        </div>
                    </section>
                </li>
                
            </ol>
            </c:forEach>
            <br>
            <section class="reg">
            	<button class="btn_reg font_norm">리뷰 등록</button>
            </section>
            <br><br>
            <c:if test="${pageCount > 10 }">
            
            
            <!-- 페이지 -->
            <footer class="page">
                <div class="page_div">
                    <!-- 필요하면 맨 앞으로 버튼 or 1 ... (현재 페이지) -->
                    <!-- Prev 버튼 -->
                    <div class="page_div_l">
                        <a href="#" class="btn font_arr">
                            <div>Prev</div>
                        </a>
                    </div>
                    <!-- 1~10 페이지 -->
                    <ul class="pagelist">
                        <li class="pagel">
                            <span class="btn font_arr">
                                <a href="#">1</a>
                            </span>
                        </li>
                        <li class="pagel">
                            <span class="btn font_arr">
                                <a href="#">2</a>
                            </span>
                        </li>
                        <li class="pagel">
                            <span class="btn font_arr">
                                <a href="#">3</a>
                            </span>
                        </li>
                        <li class="pagel">
                            <span class="btn font_arr">
                                <a href="#">4</a>
                            </span>
                        </li>
                    </ul>
                    <div class="page_div_l">
                        <a href="#" class="btn font_arr">
                            <div>Next</div>
                        </a>
                    </div>
                    <!-- 필요하면 맨 뒤로 버튼 or (현재 페이지) ... (마지막 페이지) -->
                </div>
            </footer>
            </c:if>
            
            
        </section>
    </div>
</body>
</html>