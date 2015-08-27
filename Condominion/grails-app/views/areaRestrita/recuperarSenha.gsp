<!DOCTYPE html>
<html>
	<head>
		<title>Recuperar conta</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="/NovoSGC/static/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="/NovoSGC/static/images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/NovoSGC/static/images/apple-touch-icon-retina.png">
		<link rel="stylesheet" href="/NovoSGC/static/css/main.css" type="text/css">
		<link rel="stylesheet" href="/NovoSGC/static/css/mobile.css" type="text/css">
		
	<meta name="layout" content="main"/>
	
	<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				
				width: 15em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
				
				margin: 15px 300px;
				padding: 20px;
				text-align: center;
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
			#fheader {
				padding: 18px 26px 14px 26px;
				background-color: #f7f7ff;
				margin: 0px 0 14px 0;
				color: #2e3741;
				font-size: 18px;
				font-weight: bold;
			}
		</style>
	</head>
	<body>
	<div id='Login'>
		<div class='inner'>
		<div class='fheader' id = 'fheader'>Recuparar conta</div>
			<div id="status" role="complementary">
				<form method='POST' id='formLogar' name='formLogar' class='cssform'>
				<p>
					<label>Email:</label>
					<input type='email' class='text' name='email' id='email' required/>
				</p>
	
				<p>	
					<input type="submit" value="Recuperar" id="submit" />
				</p>
				</form>
			</div>
		</div>
	</div>
	</body>
</html>
