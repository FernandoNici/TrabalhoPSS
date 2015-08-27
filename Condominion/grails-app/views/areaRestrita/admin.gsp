<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Área restrita</title>
	</head>
	<body>
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		</ul>
		<sec:ifLoggedIn>
		Olá, ${usuario}!
		<a href="/Condominion/j_spring_security_logout">Sair</a>
		</sec:ifLoggedIn>
		
	</body>
</html>
