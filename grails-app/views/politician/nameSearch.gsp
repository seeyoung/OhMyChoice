<%@ page import="ohmychoice.Politician"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="mobile">
<g:set var="entityName"
	value="${message(code: 'politician.label', default: 'Politician')}" />
<title>oh my choice</title>
</head>
<body>
	<!-- s:상단 -->
	<div style="position: fixed; top: 0; width: 100%; z-index: 10;">
		<div
			style="width: 100%; height: 47px; background-color: #666; position: relative; text-align: center;">
			<a href="main01.html"><p
					style="width: 30px; height: 30px; position: absolute; top: 8px; left: 10px; text-indent: -9999em; font-size: 0; background: url(http://ojsimg.ohmynews.com/images/ohmynews/special_site/seoul_apartment/btn_home.png) no-repeat; background-size: 30px;">메인</p></a>
			<span style="font-size: 20px; color: #fff; line-height: 47px;">
				${politicianInstance.name }
			</span>
			<p
				style="width: 30px; height: 30px; position: absolute; top: 8px; right: 50px; text-indent: -9999em; font-size: 0; background: url(images/btn_rp.png) no-repeat; background-size: 30px;">댓글</p>
			<p
				style="width: 30px; height: 30px; position: absolute; top: 8px; right: 10px; text-indent: -9999em; font-size: 0; background: url(http://ojsimg.ohmynews.com/images/ohmynews/special_site/seoul_apartment/btn_share.png) no-repeat; background-size: 30px;">공유</p>
		</div>
	</div>
	<!-- e:상단 -->

	<!-- s: 사진 -->
	<div class="g_box">
		<div class="g_p" style="display: block;">
			<a href="/" target="_blank">
				<p class="g_up_txt">
					<span class="lnk">출생: ${politicianInstance.birthDay}</span><span class="lnk">소속:
						${politicianInstance.party}(${politicianInstance.district}, ${politicianInstance.duty})</span>
				</p>
				<img
				src="${politicianInstance.photoUrl}"
				alt="${politicianInstance.name }이미지" class="rect">
			</a>
		</div>


		<div
			style=" background: url(${politicianInstance.photoUrl}) no-repeat; background-size: auto; background-position:center top; height:270px; display:none">
			<div class="flicking_story">
				<p class="actions">[음감회 현장] 15년 만에 정규 6집 발표...1990년대를 바탕에 둔 현재의
					음악</p>
			</div>
		</div>
	</div>



	<!-- 실시간 선호도 -->
	<div class="box01">
		<h2 class="boxtitl01" style="display: none;">실시간 선호도</h2>
		<iframe width="100%" height="300"
			src="${politicianInstance.getReputationChartUrl() }" frameborder="0"></iframe>
		<div style="margin: 0 auto; text-align: center;">
			<button class="btn02">좋아요</button>
			<button class="btn03">싫어요</button>
		</div>
	</div>
	<!-- 월별 지지율 -->
	<div class="box01">
		<h2 class="boxtitl01" style="display: none;">월별 지지율</h2>
		<iframe width="100%" height="300"
			src="${politicianInstance.getApprovalRateChartUrl() }"" frameborder="0"></iframe>
	</div>

	<!-- 최근 연관 검색어 -->
	<div class="box02">
		<h2 class="boxtitl02">김무성 관련 검색어</h2>
		<p>
			<img src="images/text01.jpg" width="100%" alt="" />
		</p>
	</div>

</body>
</html>