<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="Hospital_Site.aspx.Hospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style>
		#left,
		#right,
		html,
		body {
			margin: 0px;
			width: 100% !important;
			height: 97% !important;
		}

		a {
			text-decoration: none;
			transition: all 0.3s ease-in-out;
		}

		a {
			color: #33363e;
			text-decoration: none;
			background-color: transparent;
			-webkit-text-decoration-skip: objects
		}

			a:hover {
				color: #0056b3;
				text-decoration: underline
			}

			a:not([href]):not([tabindex]) {
				color: inherit;
				text-decoration: none
			}

				a:not([href]):not([tabindex]):focus,
				a:not([href]):not([tabindex]):hover {
					color: inherit;
					text-decoration: none
				}

				a:not([href]):not([tabindex]):focus {
					outline: 0
				}

			a:hover,
			a:focus {
				text-decoration: none;
				outline: none;
			}

		#a:hover ~ #b {
			margin-left: 1%;
		}

		.row,
		.container {
			width: 100% !important;
			height: 100% !important;
		}

		.img {
			background-color: green;
			width: 34%;
			height: 1%;
			transition: width .2s ease-in;
		}

			.img:hover {
				width: 180px;
				height: 140px;
				-webkit-transition: -webkit-transform 0.4s;
				transition: width .3s ease-out;
			}

		div {
			margin-left: 0px;
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

		.header {
			background-color: gold;
			width: 100%;
			height: 55px;
			margin-top: 0px;
		}

		.circule {
			height: 55px;
			width: 55px;
			background-color: rgb(255, 128, 128);
			position: fixed;
			border-radius: 50%;
			bottom: 15px;
			right: 15px;
		}

		form1 {
			height: 100%;
		}
	</style>
	<script>
		function move(Piso) {
			document.getElementById('b').innerHTML = '<h3> Doctores Working in ' +
				Piso + ': </h3>'
		}
	</script>

</head>

<body>
	<header>
		<div class="header">
			<div style="float: left; background-color: greenyellow; height: 100%; width: 33%; position: relative;">
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
			<div style="float: right; background-color: blue; height: 100%; width: 33%; position: relative;">
				<div style="float: right; background-color: #ffff; width: 50%; height: 100%; position: relative;">
					<span style="top: 25%; position: absolute; float: right; right: 25%;">
						<a href="">Utente</a>
					</span><span style="top: 25%; position: absolute; float: right; right: 25px;">
						<a href="">Sair</a>
					</span>
				</div>
			</div>
		</div>
	</header>
	<form id="form1" runat="server">
		<div class="left" style="min-height: 100%; background-color: red; float: left; width: 25%;">
			<div class="" style="width: 95%; height: 100% !important;">
				<div id="">
					<img class="img" onmouseover="move('Last Floor')" onclick="click('Upfloor')" src="../img/rooms/upfloor.png" />
				</div>
				<div id="">
					<img class="img" onmouseover="move('6ºF - Dialysis')" onclick="click('Dialysis')" id="tedste" id="teste" src="../img\rooms\dialysis.png" />
				</div>

				<div id="">
					<img class="img" onmouseover="move('5ºF - Neurology')" onclick="click('Neurology')" src="../img\rooms\neurology.png" />
				</div>

				<div id="">
					<img class="img" onmouseover="move('4ºF - Surgical')" onclick="click('Surgical')" src="../img\rooms\surgical.png" />
				</div>
				<div id="">
					<img class="img" onmouseover="move('3ºF - Pediatrics')" onclick="click('Pediatrics')" tabindex="testar" src="../img\rooms\pediatrics.png" />
				</div>
				<div id="">
					<img class="img" onmouseover="move('2ºF - Emergency')" onclick="clicks('Emergency')" src="../img\rooms\emergency.png" />
				</div>
				<div id="a">
					<img class="img" onmouseover="move('1ºF - Registration')" id="" src="../img\rooms\Registration.png" />

				</div>
			</div>
		</div>

		<div class="" style="background-color: green; float: left; width: 75%;">
			<div class="" style="width: 95%; height: 100%;">
				<div class="" style="width: 95%; height: 100%;">
					<h3 id="b">Doctores working in :</h3>
					<div>
						<div style="float: left;">
							<img class="imgDoct " src="../img/team/D1.jpg "></img>
							<figcaption id="name ">Remember me</figcaption>
							<figcaption id="name ">Remember me</figcaption>
						</div>
						<div style="float: left;">
							<img class="imgDoct " src="../img/team/D2.jpg "></img>
							<figcaption id="name ">Remember me</figcaption>
							<figcaption id="name ">Remember me</figcaption>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 95%; height: 100%; float: left;">
				<h3 id="b ">Nursers working in :</h3>
				<div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D1.jpg " />
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D2.jpg " />
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D3.jpg " />
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
					</div>
					<div style="float: left;">
						<img class="imgDoct " src="../img/team/D4.jpg " />
						<figcaption id="name ">Remember me</figcaption>
						<figcaption id="name ">Remember me</figcaption>
						<!----https://www.youtube.com/watch?v=_HRqU3oP7Y8-->

					</div>
				</div>
			</div>
		</div>
		<div class="circule"></div>
	</form>
</body>
</html>
