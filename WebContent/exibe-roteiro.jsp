<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Mapa -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?keyAIzaSyB9lai0nd-I29Iy1kBBXr_m_rIFkIwUs98=&sensor=true"></script>
	<script src="assets/js/mapa/mapa.js"></script>
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
        background-attachment:fixed;
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
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
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

	

		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="hero-unit">
		<div class="container-narrow">
		<h3>Tipo de viagem: ${tipoViagem}</h3>
		
		<div id="mapa" style="height: 300px; width: 700px">aaaaa</div>
		
		<table class="table" style="color: #fff;text-align:center">
			<c:if test="${cidades!=null }">
				<thead>
				<tr>
					<td><h3>Cidade</h3></td>
					<td width="150px" style="padding:10px"><h3>Custo M&eacute;dio</h3></td>
					<td><h3>Sugest&atilde;o de Atividade</h3></td>
				</tr>
				</thead>
				
					<c:forEach var="c" items="${cidades}">
					<tbody>
						<tr >
							<td rowspan="30"><p>${c.nome}</p></td>
							<td rowspan="30"><p>R$ ${c.mediaViagem}</p></td>
							<td rowspan="30"><p>${c.atividades}</p></td>
						</tr>
						</tbody>
					</c:forEach>
				
			</c:if>
			<c:if test="${cidades==null }">
			<p>Nenhuma cidade encontrada, refine a pesquisa.</p>
			</c:if>
		</table>
		</div>
	</div>

</body>
</html>