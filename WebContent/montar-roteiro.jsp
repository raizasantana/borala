<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bora l&aacute;!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
	background-image: url("assets/img/background/13.jpg");
	background-attachment: fixed;
	max-width: 900px;
	margin: 0 auto;
}

.form-signin {
	padding: 20px;
	text-align: center;
	/*margin: 0 auto 20px;*/
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

/* MARKETING CONTENT
    -------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .span4 p {
	margin-left: 0px;
	margin-right: 0px;
}
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
</head>

<body>

	<!--BARRA DE NAVEGAÇÃƒO-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="index.html">Bora l&aacute;!</a>
			</div>
		</div>
	</div>
	<!--navbar-->

	<div class="container-narrow">

		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="hero-unit">

			<form class="form-horizontal" action="viagem">
				<fieldset>

					<!-- Form Name -->
					<legend style="color: #fff">
						<h3>Dados da viagem</h3>
					</legend>

					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="valorViagem">Quanto quer
							gastar?</label>
						<div class="controls">
							<input id="valorViagem" name="valorViagem" type="text"
								placeholder="Valor em reais." class="input-medium">

						</div>
					</div>

					<!-- Text input-->
					<div class="control-group">
						<label class="control-label" for="textinput">Quanto tempo
							vai ficar?</label>
						<div class="controls">
							<input id="textinput" name="tempoViagem" type="text"
								placeholder="placeholder" class="input-medium"> <select
								id="selectbasic" name="periodo" class="input-medium">
								<option value="dia">Dia</option>
								<option value="semana">Semana</option>
								<option value="mes">M&ecirc;s</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="checkboxes">Qual tipo de
							viagem pretende fazer?</label>
					</div>
					<table style="color: #fff; text-align: center">
						<tr>
							<!-- Imagens -->
							<td width="50px"></td>
							<td width="190px"><img src="assets/img/aventura.jpg"
								class="img-circle" /></td>
							<td width="190px"><img src="assets/img/cultural.jpg"
								class="img-circle" /></td>
							<td width="190px"><img src="assets/img/esporte.jpg"
								class="img-circle" /></td>
							<td width="190px"><img src="assets/img/pesca.jpg"
								class="img-circle" /></td>
						</tr>
						<tr>
							<!-- Checkboxes -->
							<td width="50px"></td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Aventura"> Aventura</td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Cultura"> Cultural</td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Esporte"> Esporte</td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Pesca"> Pesca</td>
						</tr>
						<tr>
							<td><p>&nbsp;</p></td>
						</tr>
					</table>
					<table style="color: #fff; text-align: center">
						<tr>
							<!-- Imagens -->
							<td width="140px"></td>
							<td width="190px"><img src="assets/img/nautico.jpg"
								class="img-circle" /></td>
							<td width="190px"><img src="assets/img/solepraia.jpg"
								class="img-circle" /></td>
							<td width="190px"><img src="assets/img/rural.jpg"
								class="img-circle" /></td>

						</tr>
						<tr>
							<!-- Checkboxes -->
							<td width="140px"></td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Nautico"> N&aacute;utico</td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Sol e Praia"> Sol e Praia</td>
							<td><input type="checkbox" name="checkboxes"
								id="checkboxes-0" value="Rural"> Rural</td>

						</tr>
					</table>
					
					<!-- Button -->
					<div class="control-group">
						<label class="control-label" for="montarRoreiro"></label>
						<div class="controls">
							<p>&nbsp;</p>
							<input type="submit" id="montarRoreiro" name="montarRoreiro"
								class="btn btn-large " value="Montar Roteiro!" />
						</div>
					</div>

				</fieldset>
			</form>
			<p>&nbsp;</p>

			<!--FOOTER-->
			<footer>
				<h6>&copy; Z Software 2011 - 2013</h6>
			</footer>
		</div>




		<!-- Le javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap-transition.js"></script>
		<script src="assets/js/bootstrap-alert.js"></script>
		<script src="assets/js/bootstrap-modal.js"></script>
		<script src="assets/js/bootstrap-dropdown.js"></script>
		<script src="assets/js/bootstrap-scrollspy.js"></script>
		<script src="assets/js/bootstrap-tab.js"></script>
		<script src="assets/js/bootstrap-tooltip.js"></script>
		<script src="assets/js/bootstrap-popover.js"></script>
		<script src="assets/js/bootstrap-button.js"></script>
		<script src="assets/js/bootstrap-collapse.js"></script>
		<script src="assets/js/bootstrap-carousel.js"></script>
		<script src="assets/js/bootstrap-typeahead.js"></script>
</body>
</html>
