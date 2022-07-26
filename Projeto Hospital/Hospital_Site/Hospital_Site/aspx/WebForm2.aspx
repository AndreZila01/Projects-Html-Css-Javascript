﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Hospital_Site.aspx.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">
		* {
			padding: 0;
			margin: 0;
		}

		html, body {
			height: 100%;
		}

		body {
			font-family: "lucida sans", verdana, arial, helvetica, sans-serif;
			font-size: 75%;
		}

		h1 {
			font-size: 1.4em;
			padding: 10px 10px 0;
		}

		p {
			padding: 0 10px 1em;
		}

		#container {
			min-height: 100%;
			min-width: 17%;
			width: 20%;
			float: left;
			background-color: greenyellow;
			margin: 0 auto;
		}

		* html #container {
			height: 100%;
		}

		#form1 {
			height: 94%;
		}

		.img {
			background-color: green;
			width: 45%;
			height: 45%;
			transition: width .2s ease-in;
		}

			.img:hover {
				width: 180px;
				height: 140px;
				-webkit-transition: -webkit-transform 0.4s;
				transition: width .3s ease-out;
			}

		.imgDoct {
			width: 150px;
			height: 150px;
			margin-left: 25px;
		}

		figcaption {
			margin-left: 25px;
			text-align: center;
		}

		a {
			line-height: 27px;
			font-size: 14px;
			font-family: "Open Sans", sans-serif;
			font-weight: normal;
			color: #797979;
		}
	</style>
</head>
<body>
	<script>
		function Click(Piso) {
			document.getElementById('b').innerHTML = 'Doctores Working in ' + Piso + ':';
		}
	</script>
	<header style="margin: 0px">
		<div style="float: left; background-color: red; min-width: 77%; height: 56px">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="50px" height="50px" style="shape-rendering: geometricPrecision; text-rendering: geometricPrecision; image-rendering: optimizeQuality; fill-rule: evenodd; clip-rule: evenodd; margin-left: 5px; margin-top: 2px;">
				<g xmlns="http://www.w3.org/2000/svg"
					transform="translate(0.000000,50.000000) scale(0.100000,-0.100000)" fill="#3d85c6" stroke="none"
					style="margin-top: 15px;">
					<path
						d="M144 476 c-41 -18 -103 -81 -120 -122 -23 -54 -16 -73 9 -25 28 58 71 100 130 130 26 13 47 26 47 28 0 7 -37 1 -66 -11z">
					</path>
					<path
						d="M335 464 c52 -27 105 -71 105 -86 0 -5 11 -26 25 -46 37 -55 33 -9 -4 51 -34 53 -91 94 -141 102 -34 6 -33 5 15 -21z">
					</path>
					<path
						d="M115 240 l0 -167 52 19 c65 22 103 22 170 -1 29 -10 55 -16 57 -14 2 2 0 21 -5 41 -11 46 -11 180 0 245 4 26 7 47 6 47 -2 0 -22 -9 -46 -20 -56 -25 -134 -26 -191 -1 l-43 18 0 -167z m46 122 c-17 -3 -21 -10 -21 -39 0 -48 -6 -39 -13 19 l-6 46 31 -11 c26 -10 28 -12 9 -15z m207 -55 c-9 -60 -9 -91 1 -143 6 -37 11 -68 9 -69 -2 -2 -20 2 -40 8 -34 11 -38 15 -46 62 l-8 50 -16 -35 -15 -35 -19 35 -18 35 -6 -47 c-3 -26 -8 -49 -10 -50 -10 -7 -74 -28 -76 -25 -2 1 0 23 4 47 l7 45 6 -40 c4 -24 7 8 8 83 l1 122 33 1 c17 1 66 2 107 2 41 0 64 2 50 4 l-25 5 30 13 c17 7 31 11 33 10 1 -1 -3 -36 -10 -78z m-86 -175 c9 -9 4 -12 -25 -12 -33 0 -46 8 -32 22 9 8 45 2 57 -10z">
					</path>
					<path
						d="M212 345 c9 -24 32 -65 37 -65 7 0 41 54 41 65 0 3 -7 -1 -16 -9 -20 -21 -40 -20 -54 2 -6 9 -10 13 -8 7z">
					</path>
					<path d="M493 250 c0 -25 2 -35 4 -22 2 12 2 32 0 45 -2 12 -4 2 -4 -23z"></path>
					<path d="M2 250 c0 -19 2 -27 5 -17 2 9 2 25 0 35 -3 9 -5 1 -5 -18z"></path>
					<path
						d="M10 189 c0 -61 115 -179 174 -179 15 0 5 10 -29 30 -62 36 -85 60 -119 125 -21 41 -26 45 -26 24z">
					</path>
					<path
						d="M450 139 c-20 -31 -58 -69 -89 -91 -56 -39 -55 -50 2 -22 45 23 86 63 109 107 31 61 16 65 -22 6z">
					</path>
					<path d="M228 3 c12 -2 32 -2 45 0 12 2 2 4 -23 4 -25 0 -35 -2 -22 -4z"></path>
				</g>
			</svg>
		</div>
		<div style="float: left; background-color: green; min-width: 23%; height: 56px">
			<span style="top: 0%; position: absolute; float: right; right: 60px; margin-top: 25px;">
				<a href="">Utente</a>
			</span><span style="top: 0%; position: absolute; float: right; right: 20px; margin-top: 25px;">
				<a href="">Sair</a>
			</span>
		</div>
	</header>
	<form id="form1" runat="server">
		<div id="container">

			<div style="width: 250px">
				<img class="img" onclick="Click('6º F - Upfloor')" src="../img/rooms/upfloor.png" />
			</div>
			<div style="width: 250px">
				<img class="img" onclick="Click('5º F - Dialysis')" id="tedste" id="teste" src="../img\rooms\dialysis.png" />
			</div>

			<div style="width: 250px">
				<img class="img" onclick="Click('4º F - Neurology')" src="../img\rooms\neurology.png" />
			</div>

			<div style="width: 250px">
				<img class="img" onclick="Click('3º F - Surgical')" src="../img\rooms\surgical.png" />
			</div>
			<div style="width: 250px">
				<img class="img" onclick="Click('2º F - Pediatrics')" tabindex="testar" src="../img\rooms\pediatrics.png" />
			</div>
			<div style="width: 250px">
				<img class="img" onclick="Click('1º F - Emergency')" src="../img\rooms\emergency.png" />
			</div>
			<div style="width: 250px">
				<img class="img" onclick="Click('Registration')" id="" src="../img\rooms\Registration.png" />

			</div>
		</div>
		<div style="min-height: 100%; background-color: aqua; min-width: 80%; float: right; margin: 0 auto;">
			<div class="" style="width: 95%; height: 100%;">
				<div class="" style="width: 95%; height: 100%;">
					<h3 style="font-family: 'Times New Roman'; font-size: 30px;" id="b">Doctores Working in 4ºF - Neurology: 
					</h3>
					<br />
					<div>
						<div style="float: left;">
							<img class="imgDoct " src="../img/team/D1.jpg ">
							<figcaption id="name ">Remember me</figcaption>
							<figcaption id="name ">Remember me</figcaption>
						</div>
						<div style="float: left;">
							<img class="imgDoct " src="../img/team/D2.jpg ">
							<figcaption id="name ">Remember me</figcaption>
							<figcaption id="name ">Remember me</figcaption>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 95%; height: 100%; float: left; margin-top: 2%;">
				<h3 id="b ">Nursers working in :</h3>
				<div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D1.jpg ">
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D2.jpg ">
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D3.jpg ">
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D4.jpg ">
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>

					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
