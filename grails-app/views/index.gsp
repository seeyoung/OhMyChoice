<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mobile">
		<g:set var="entityName" value="${message(code: 'politician.label', default: 'Politician')}" />
		<title> oh my choice </title>  
	</head>
<body style="margin:0 auto; max-width:760px; width:100%;">

    <div class="main_bg">
      <div class="main01_out">
      <g:form controller="politician" action="nameSearch"> 
      <input name="name" type="text" value="" class="input01" />
      <input type="submit" class="btn01" name="검색"></input>
      </g:form>
      </div>
    </div>
</body>
</html>