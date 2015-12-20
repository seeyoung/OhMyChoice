<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mobile">
		<title> oh my choice </title>  
	</head>
<body>

    <div class="main_bg">
      <div class="main01_out">
		  <p style=" text-align:center;"><img src="${assetPath(src: 'logo01.png')}" width="80%" /></p>
		  <p style="padding-bottom:30px; color:#999; font-size:15px; text-align:center;">한번의 선택이 4년을 좌우한다!<br />정치인의 모든것!</p>
	      <g:form controller="politician" action="nameSearch"> 
	      <input name="name" type="text" value="" class="input01" />
	      <input type="submit" class="btn01" name="검색"></input>
	      </g:form>
	      <p style="text-align:center; padding-top:30px;"><img src="${assetPath(src: 'main02.jpg')}" width="100%" /></p>
      </div>
    </div>    
</body>
</html>