<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<%-- 全画面 共通のstylesheets --%>
	<link rel="stylesheet" href="${f:url('/css/bootstrap.css')}">
	<link rel="stylesheet/less" type="text/css" href="${f:url('/less/base.less')}">
	
	<%-- 画面ごとのstylesheets --%>
	<tiles:importAttribute name="stylesheets" ignore="true" scope="page" />
	<c:forEach var="css" items="${stylesheets}">
		<link rel="stylesheet/less" type="text/css" href="${f:url('/less/')}${f:h(css)}">
	</c:forEach>
	
	<%-- 全画面 共通のjavascripts --%>
	<script src="${f:url('/js/jquery.js')}"></script>
	<script src="${f:url('/js/bootstrap.js')}"></script>
	<script src="${f:url('/js/less.js')}"></script>
	
	<%-- 画面ごとのjavascripts --%>
	<tiles:importAttribute name="javascripts" ignore="true" scope="page" />
	<c:forEach var="js" items="${javascripts}">
		<script src="${f:url('/js/')}${f:h(js)}"></script>
	</c:forEach>
	
	<title>
		<tiles:getAsString name="title" ignore="false" /> | struts-dev-web
	</title>
</head>

<body>
	<header class="navbar navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1>header</h1>
				</div>
			</div>
		</div>
	</header>
	
	<%-- main content --%>
	<div id="main-content" class="container">
		<div class="row">
			<aside class="col-lg-2">
				sidebar
			</aside>
			<article  class="col-lg-10">
				<tiles:insert attribute="content" />
			</article>
		</div>
	</div>
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="pull-right">product by Yoshitaka Honda.</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
