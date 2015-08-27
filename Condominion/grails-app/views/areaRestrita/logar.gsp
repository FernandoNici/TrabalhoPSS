<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="/condominion/static/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="/condominion/static/images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/condominion/static/images/apple-touch-icon-retina.png">
		<link rel="stylesheet" href="/condominion/static/css/main.css" type="text/css">
		<link rel="stylesheet" href="/condominion/static/css/mobile.css" type="text/css">
		
	<meta name="layout" content="main"/>
	
	<style type='text/css' media='screen'>
	#login {
		margin: 15px 0px;
		padding: 0px;
		text-align: center;
	}

	#login .inner {
		width: 340px;
		padding-bottom: 6px;
		margin: 60px auto;
		text-align: left;
		border: 1px solid #aab;
		background-color: #f0f0fa;
		-moz-box-shadow: 2px 2px 2px #eee;
		-webkit-box-shadow: 2px 2px 2px #eee;
		-khtml-box-shadow: 2px 2px 2px #eee;
		box-shadow: 2px 2px 2px #eee;
	}

	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}

	#login .inner .cssform p {
		clear: left;
		margin: 0;
		padding: 4px 0 3px 0;
		padding-left: 105px;
		margin-bottom: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type='text'] {
		width: 120px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #submit {
		margin-left: 15px;
	}


	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text {
		width: 120px;
	}

	</style>
	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['formLogar'].elements['j_username'].focus();
		})();
	// -->
	</script>
	<script src="/condominion/static/js/application.js" type="text/javascript" ></script>
	
	</head>
	<body>
	<div id='login'>
		<div class='inner'>
		<div class='fheader'>Por favor faça login</div>
		<form action='${request.contextPath}/j_spring_security_check' method='POST' id='frmLogar' name='frmLogar' class='cssform'>
			<p>
				<label for='username'>Usuário:</label>
				<input type='text' class='text' name='j_username' id='username'/>
			</p>

			<p>
				<label for='password'>Senha:</label>
				<input type='password' class='text' name='j_password' id='password'/>
			</p>
			
			<p>
				<g:link controller="areaRestrita" action="recuperar" >Recuperar Senha?</g:link>
			</p>
			
			<p>	
				<input type="submit" value="Login" id="submit" />
			</p>
		</form>
		</div>
	</div>

	</body>
</html>