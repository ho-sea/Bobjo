<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/default.css" rel="stylesheet" type="text/css">
<link href="./css/subpage.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->

<!--[if IE 6]>
 <script src="./script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]-->

<script type="text/javascript">
	function isBasket(){	// 선택한 상품(옵션포함) 정보를 전달
		// alert('장바구니 담기');
		// 상품 구매 옵션 선택체크(수량, 크기, 색상)
		
		// 수량정보
		if(document.fr.amount.value <= 0){
			alert('최소 구매 수량은 1개입니다.');
			document.fr.amount.focus();
			return;
		}
		if(document.fr.amount.value > ${dto.amount}){
			alert('최대 구매 수량은 ${dto.amount}개입니다.');
			document.fr.amount.focus();
			return;
		}
		
		// 크기
		if(document.fr.size.value == ""){
			alert("크기 옵션을 선택하세요");
			document.fr.size.focus();
			return;
		}
		
		// 색상
		if(document.fr.color.value == ""){
			alert("색상 옵션을 선택하세요");
			document.fr.color.focus();
			return;
		}
		
		// 정상적으로 상품 옵션 선택
		var isResult = confirm("장바구니 페이지로 이동하시겠습니까?");
		if(isResult){	// true
			// 장바구니 이동 O -> 정보 저장 (submit)
			document.fr.action = "./BasketAdd.ba";
			document.fr.method = "post";
			document.fr.submit();
		}else{	// false
			// 장바구니 이동X -> 장바구니 저장X
			return;
			// 상용페이지
			// 장바구니 이동X -> 장바구니 저장 O (비동기방식 - ajax)
		}
	}	// isBasket() 끝
	
</script>

</head>
<body>
	<div id="wrap">
		<!-- 헤더가 들어가는 곳 -->
		<jsp:include page="../inc/top.jsp"/>
		<!-- 헤더가 들어가는 곳 -->

		<!-- 본문 들어가는 곳 -->
		<!-- 서브페이지 메인이미지 -->
		<div id="sub_img"></div>
		<!-- 서브페이지 메인이미지 -->
		<!-- 왼쪽메뉴 -->
		<!-- 왼쪽메뉴 -->
		<!-- 내용 -->
		<article id="goodsList">
			<h1>상품 상세페이지</h1>
			
			<form action="" name="fr">
				<input type="hidden" name="gno" value="${dto.gno }">
			<table id="noticeGoods">
				<tr>
					<td width="550px">
						<img src="./upload/${dto.image.split(',')[0] }"
						width="500px" height="300px">
					</td>
					<td width="350px">
						<h2>상품명 : ${dto.name }</h2>
						<h2>판매가격 : ${dto.price }원</h2>
						<h2>구매수량</h2> <input type="number" name="amount" value="i"><br>
						<h4>(남은수량 : ${dto.amount }개)</h4>
						
						구매 옵션<hr>
						
						크기 :
						<select name="size">
							<option value="">크기를 선택하세요</option>
							<c:forEach var="size" items="${dto.size.split(',') }">
								<option value="${size }">${size }</option>
							</c:forEach>
						</select>
						
						<br>
						
						색상 :
						<select name="color">
							<option value="">색상을 선택하세요</option>
							<c:forTokens var="color" items="${dto.color }" delims=",">
								<option value="${color }">${color }</option>
							</c:forTokens>
						</select>
						
						<hr><hr>
						<a href="javascript: isBasket();">[장바구니 담기]</a>
						<a href="javascript: isBuy();">[바로 구매하기]</a>
					</td>
				</tr>
				<tr>
					<td colspan="2"><hr></td>
				</tr>
				<tr>
					<td colspan="2" height="600px">
						${dto.content }<br>
						<c:forEach var="i" begin="1" end="3" step="1">
							<c:if test="${dto.image.split(',')[i] == 'null' }">
							<img src="./upload/default.jpg" width="100%"><br>
							</c:if>
							<img src="./upload/${dto.image.split(',')[i] }" width="100%"><br>
						</c:forEach>
					</td>
				</tr>
				<tr>
					<td colspan="2">리뷰 & QnA</td>
				</tr>
			</table>
			
			</form>
			
		</article>
		<!-- 내용 -->
		<!-- 본문 들어가는 곳 -->
		<div class="clear"></div>
		<!-- 푸터 들어가는 곳 -->
		<footer>
			<hr>
			<div id="copy">
				All contents Copyright 2011 FunWeb 2011 FunWeb Inc. all rights
				reserved<br> Contact mail:funweb@funwebbiz.com Tel +82 64 123
				4315 Fax +82 64 123 4321
			</div>
			<div id="social">
				<img src="./images/facebook.gif" width="33" height="33"
					alt="Facebook"> <img src="./images/twitter.gif" width="34"
					height="34" alt="Twitter">
			</div>
		</footer>
		<!-- 푸터 들어가는 곳 -->
	</div>
</body>
</html>



