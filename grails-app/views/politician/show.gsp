
<%@ page import="ohmychoice.Politician" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'politician.label', default: 'Politician')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-politician" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-politician" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list politician">
			
				<g:if test="${politicianInstance?.deptCd}">
				<li class="fieldcontain">
					<span id="deptCd-label" class="property-label"><g:message code="politician.deptCd.label" default="Dept Cd" /></span>
					
						<span class="property-value" aria-labelledby="deptCd-label"><g:fieldValue bean="${politicianInstance}" field="deptCd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicianInstance?.pokrId}">
				<li class="fieldcontain">
					<span id="pokrId-label" class="property-label"><g:message code="politician.dpokrId.label" default="Pokr Id " /></span>
					
						<span class="property-value" aria-labelledby="pokrId-label"><g:fieldValue bean="${politicianInstance}" field="pokrId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicianInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="politician.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${politicianInstance?.district?.id}">${politicianInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicianInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="politician.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${politicianInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${politicianInstance?.party}">
				<li class="fieldcontain">
					<span id="party-label" class="property-label"><g:message code="politician.party.label" default="Party" /></span>
					
						<span class="property-value" aria-labelledby="party-label"><g:link controller="party" action="show" id="${politicianInstance?.party?.id}">${politicianInstance?.party?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				<li class="fieldcontain"><span class="property-value" aria-labelledby="party-label">
					<a href="${politicianInstance.infoUrl}">국회사이트 의원정보</a></span></li>
				<li class="fieldcontain"><span class="property-value" aria-labelledby="party-label">
					<a href="${politicianInstance.pokrUrl}">pokr.kr 의원정보</a></span></li>
			</ol>
			<g:form url="[resource:politicianInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${politicianInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
