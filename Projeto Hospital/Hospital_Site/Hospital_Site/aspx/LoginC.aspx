<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginC.aspx.cs" Inherits="Hospital_Site.aspx.LoginC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8" />
	<title>CodePen - LogIn Form</title>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Hind:300' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css' />
	<style>
		html {
			background-image: url(../img/background/UsersLogin.png);
			background-repeat: no-repeat, repeat;
			background-position: center;
			background-attachment: fixed;
			/* no-repeat center center fixed;*/
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			overflow: hidden;
		}

		img {
			display: block;
			margin: auto;
			width: 100%;
			height: auto;
		}

		#login-button {
			cursor: pointer;
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			padding: 30px;
			margin: auto;
			width: 100px;
			height: 100px;
			border-radius: 50%;
			background: rgba(3, 3, 3, .8);
			overflow: hidden;
			opacity: 0.4;
			box-shadow: 10px 10px 30px #000;
		}
		/* Login container */

		#container {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			margin: auto;
			width: 460px;
			height: 480px;
			border-radius: 5px;
			background: rgba(3, 3, 3, 0.25);
			box-shadow: 1px 1px 50px #000;
			display: none;
		}

		.close-btn {
			position: absolute;
			cursor: pointer;
			font-family: 'Open Sans Condensed', sans-serif;
			line-height: 18px;
			top: 3px;
			right: 3px;
			width: 20px;
			height: 20px;
			text-align: center;
			border-radius: 10px;
			opacity: .2;
			-webkit-transition: all 2s ease-in-out;
			-moz-transition: all 2s ease-in-out;
			-o-transition: all 2s ease-in-out;
			transition: all 0.2s ease-in-out;
		}

			.close-btn:hover {
				opacity: .5;
			}
		/* Heading */

		h1 {
			font-family: 'Open Sans Condensed', sans-serif;
			position: relative;
			margin-top: 0px;
			text-align: center;
			font-size: 40px;
			color: #ddd;
			text-shadow: 3px 3px 10px #000;
		}
		/* Inputs */

		a {
			font-family: 'Open Sans Condensed', sans-serif;
			text-align: center;
			text-decoration: none;
			font-size: 18px;
		}

			a:visited {
				color: #fff;
			}

			a:hover {
				opacity: 0.7;
			}

			a:link {
				color: #fff;
			}
			/* visited link */
			/* mouse over link */

			a:hover {
				color: #ccc;
			}

		input {
			font-family: Montserrat-Bold;
			font-size: 15px;
			line-height: 1.2;
			color: #333333;
			display: block;
			width: 75%;
			background: rgba(3, 3, 3, .18);
			height: 50px;
			margin-left: 3%;
			margin-bottom: 15px;
			border-color: #ededed;
			border-radius: 25px;
			padding: 0 30px 0 53px;
		}

			input:focus {
				outline: none;
				box-shadow: 3px 3px 10px #333;
				background: rgb(255, 255, 255, .18);
			}
		/* Placeholders */

		::-webkit-input-placeholder {
			color: #333;
		}

		:-moz-placeholder {
			/* Firefox 18- */
			color: red;
		}

		::-moz-placeholder {
			/* Firefox 19+ */
			color: red;
		}

		:-ms-input-placeholder {
			color: #333;
		}
		/* Link */

		#remember-container {
			position: relative;
			margin: -5px 20px;
		}

		.checkbox {
			position: relative;
			cursor: pointer;
			-webkit-appearance: none;
			padding: 5px;
			border-radius: 4px;
			background: rgba(3, 3, 3, .2);
			display: inline-block;
			width: 16px;
			height: 15px;
		}

			.checkbox:checked:active {
				box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px rgba(0, 0, 0, 0.1);
			}

			.checkbox:checked {
				background: rgba(3, 3, 3, .4);
				box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.5);
				color: #fff;
			}

				.checkbox:checked:after {
					content: '\2714';
					font-size: 10px;
					position: absolute;
					top: 0px;
					left: 4px;
					color: #fff;
				}

		#remember {
			position: absolute;
			font-size: 13px;
			font-family: 'Hind', sans-serif;
			color: rgba(255, 255, 255, 0.849);
			left: 30px;
		}

		#forgotten {
			position: absolute;
			font-size: 13px;
			font-family: 'Hind', sans-serif;
			color: rgba(255, 255, 255, 0.849);
			right: 0px;
			top: 5px;
			cursor: pointer;
			-webkit-transition: all 2s ease-in-out;
			-moz-transition: all 2s ease-in-out;
			-o-transition: all 2s ease-in-out;
			transition: all 0.2s ease-in-out;
		}

			#forgotten:hover {
				color: rgba(255, 255, 255, .6);
			}

		#forgotten-container {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			margin: auto;
			width: 460px;
			height: 480px;
			border-radius: 10px;
			background: rgba(3, 3, 3, 0.25);
			box-shadow: 1px 1px 50px #000;
			display: none;
		}

		.orange-btn {
			background: rgba(55, 54, 58, 0.308);
			position: relative;
			margin-left: 15%;
			margin-right: 15%;
			margin-bottom: 5%;
			display: block;
			padding-bottom: 7px;
			padding-top: 7px;
		}

		.button {
			font-family: Montserrat-Bold;
			font-size: 15px;
			line-height: 1.5;
			color: black;
			width: 80%;
			height: 50px;
			left: 10%;
			border-radius: 25px;
			background: rgba(59, 59, 59, 0.26);
			display: -webkit-box;
			display: -webkit-flex;
			display: -moz-box;
			display: -ms-flexbox;
			display: flex;
			justify-content: center;
			align-items: center;
			padding: 0 25px;
			transition: all 0.4s;
			position: relative;
			z-index: 1;
			margin-bottom: 5%;
		}

			.button:hover {
				background-color: rgba(255, 255, 255, .6);
			}

		.back {
			position: absolute;
			right: 2%;
			margin-top: 22%;
			cursor: pointer;
		}
	</style>
</head>
<body onload="onloa()">
	<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.16.1/TweenMax.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script>
		function onloa() {
			$('#login-button').click(function () {
				$('#login-button').fadeOut("slow", function () {
					$("#container").fadeIn();
					TweenMax.from("#container", .4, {
						scale: 0,
						ease: Sine.easeInOut
					});
					TweenMax.to("#container", .4, {
						scale: 1,
						ease: Sine.easeInOut
					});
					document.getElementById("login-button").setAttribute('style', 'visibility: hidden;');
				});
			});

			$(".close-btn").click(function () {
				TweenMax.from("#container", .4, {
					scale: 1,
					ease: Sine.easeInOut
				});
				TweenMax.to("#container", .4, {
					left: "0px",
					scale: 0,
					ease: Sine.easeInOut
				});
				$("#container, #forgotten-container").fadeOut(800, function () {
					$("#login-button").fadeIn(800);
					setTimeout(function () {
						document.getElementById("login-button").setAttribute('style', 'visibility: visible;');
					}, 200);


				});
			});

			/* Forgotten Password */
			$('#forgotten').click(function () {
				$("#container").fadeOut(function () {
					$("#forgotten-container").fadeIn();
				});
			});
		}
	</script>
	<form id="form1" runat="server">
		<div id="login-button">
			<img src="https://dqcgrsy5v35b9.cloudfront.net/cruiseplanner/assets/img/icons/login-w-icon.png" />
		</div>
		<div id="container">
			<h1>Lock out</h1>
			<span class="close-btn">
				<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png" />
			</span>

			<form>
				<input id="email" type="email" name="email" placeholder="E-mail" />
				<input id="pass" type="password" name="pass" placeholder="Password" />
				<button class="button" onclick="myfunction()">Log in</button>
				<script>
					function myfunction() {
						jQuery.ajax({
							method: "POST",
							url: "LoginC.aspx/checkUser",
							contentType: "application/json; charset=utf-8",
							dataType: "json",
							data: JSON.stringify({ username: 'testar', password: 'testas' }),
							error: function (XMLHttpRequest, textStatus, errorThrown) {
								console.log("Error", errorThrown);
							},
							success: function (result) {
								console.log("success", result);
							}
						});
					}
				</script>
				<div id="remember-container">
					<input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked" />
					<span id="remember">Remember me</span>
					<span id="forgotten">Forgotten password</span>
				</div>
			</form>

			<label class="back"><a href="index.aspx">Back Menu</a></label>
		</div>

		<div id="forgotten-container">
			<h1>Forgotten</h1>
			<span class="close-btn">
				<img src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
			</span>

			<form>
				<input type="email" name="email" placeholder="E-mail" />
				<a href="#" class="orange-btn">Get new password</a>
				<input id="name" type="code" name="code" style="cursor: not-allowed;" placeholder="Code" disabled />
				<input id="password" type="password" name="password" style="cursor: not-allowed;" placeholder="New Password" disabled />
				<button class="button" style="cursor: not-allowed;" href="#" disabled>Password Alterada</button>
			</form>
		</div>
		
	</form>
</body>
</html>
