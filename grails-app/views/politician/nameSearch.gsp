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
	<div style="position: relative;">
		<!-- s:상단 -->
		<div
			style="width: 100%; height: 47px; background-color: #666; position: relative; text-align: center;">
			<a href="http://ohmychoice.kr"><p
					style="width: 30px; height: 30px; position: absolute; top: 8px; left: 10px; text-indent: -9999em; font-size: 0; background: url(http://ojsimg.ohmynews.com/images/ohmynews/special_site/seoul_apartment/btn_home.png) no-repeat; background-size: 30px;">메인</p></a>
			<span style="font-size: 20px; color: #fff; line-height: 47px;">
				${politicianInstance.name }
			</span>
			<p
				style="width: 30px; height: 30px; position: absolute; top: 8px; right: 50px; text-indent: -9999em; font-size: 0; background: url(images/btn_rp.png) no-repeat; background-size: 30px;">댓글</p>
			<a href="main03.html"><p
					style="width: 30px; height: 30px; position: absolute; top: 8px; right: 10px; text-indent: -9999em; font-size: 0; background: url(http://ojsimg.ohmynews.com/images/ohmynews/special_site/seoul_apartment/btn_share.png) no-repeat; background-size: 30px;">공유</p></a>
		</div>

		<!-- e:상단 -->

		<!-- s: 사진 -->
		<div class="g_box">
			<div class="g_p" style="display: block;">
				<p class="g_up_txt">
					<span class="lnk">출생: ${politicianInstance.birthDay}</span><span
						class="lnk">소속: ${politicianInstance.party}(${politicianInstance.district},
						${politicianInstance.duty})
					</span>
				</p>
				<img src="${politicianInstance.photoUrl}"
					alt="${politicianInstance.name }이미지" class="rect">
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
		<div class="box02">
			<h2 class="boxtitl02" style="display: none;">실시간 선호도</h2>
			<iframe width="100%" height="300"
				src="${politicianInstance.getReputationChartUrl() }" frameborder="0"></iframe>
			<div style="margin: 0 auto; text-align: center;">
				<button class="btn02">좋아요</button>
				<button class="btn03">싫어요</button>
			</div>
		</div>
		<!-- 월별 지지율 -->
		<div class="box02">
			<h2 class="boxtitl02" style="display: none;">월별 지지율</h2>
			<iframe width="100%" height="300"
				src="${politicianInstance.getApprovalRateChartUrl() }"
				frameborder="0"></iframe>
		</div>

		<!-- 최근 관련 검색어 -->
		<div class="box02">
			<h2 class="boxtitl02">
				${politicianInstance.name }
				관련 검색어
			</h2>
			<p>
				<img src="images/text01.jpg" width="100%" alt="" />
			</p>
		</div>

		<!-- 관련 영상 -->
		<div class="box02">
			<h2 class="boxtitl02">
				${politicianInstance.name }
				관련 영상
			</h2>
			<ul class="uio_thumbnail">
				<g:each in="${politicianInstance.searchVideos()}" status="i"
					var="videoLink">
					<li class="ut_item"><a
						href="https://www.youtube.com/watch?v=${videoLink.youtubeId }" class="ut_a">
							<span class="ut_mw"><img
								src="http://img.youtube.com/vi/${videoLink.youtubeId }/0.jpg"
								width="100%" alt="" class="ut_m" data-width="270"
								data-height="166"><em class="ico_play ico_tv">영상</em></span> <span
							class="ut_d"><strong class="ut_t">${videoLink.title }
							</strong></span>
					</a></li>
				</g:each>
			</ul>
		</div>
							<g:each in="${politicianInstance.searchArticles()}" status="i" var="articleLink">
								<g:link controller="articleLink" action="show" id="${articleLink.id }">${articleLink.title }</g:link><br/>
							</g:each> 

		<g:set var="articles" value="${politicianInstance.searchArticles()}" />
		<!-- 관련기사 -->
		<div class="box02">
			<h2 class="boxtitl02">
				${politicianInstance.name }
				관련 기사
			</h2>
			<ul class="uio_text">
				<g:each in="${articles}" status="i" var="articleLink">
				<li class="ut_item"
					style="border-bottom: solid 1px #ccc; border-top: solid 1px #ddd;">
					<a href="${articleLink.link }" class="ut_a">${articleLink.title }</a>
				</li>
				</g:each> 
			</ul>

		</div>
		<!--// 관련기사 -->

		<!-- 공유많은기사 -->
		<div class="box02">
			<h2 class="boxtitl02">공유 많은 기사</h2>
			<ol class="rank_list_re">
				<g:each in="${articles.sort{-it.persons.size()} }" status="i" var="articleLink">
				<li class="ut_item"
					style="border-bottom: solid 1px #ccc; border-top: solid 1px #ddd;">
					<a href="${articleLink.link }" class="ut_a"><span
						class="num">${i+1}.</span>${articleLink.title }<span
						class="comment s_gy">${articleLink.persons.size() }</span></a>
				</li>
				</g:each> 
			</ol>
		</div>
		<!--// 공유많은기사 -->

		<div style="padding: 20px;"></div>
	</div>

</body>
</html>