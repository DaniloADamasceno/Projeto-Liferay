<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>
		${html_title}
	</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"]
		page=top_head_include />
	<#-- ---------- Favicons --------------->
		<link rel="icon" type="image/png" sizes="32x32" href="${themeDisplay.getPathThemeImages()}/src/images/Sky-mini.png">
		<link rel="icon" type="iSky-mini.png" sizes="16x16" href="${themeDisplay.getPathThemeImages()}/sky-logo-0.png">
		<#----------------------- Inport de Font Google -->
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,500;0,700;1,900&display=swap" rel="stylesheet">
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,500;0,700;1,900&family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400&display=swap" rel="stylesheet">
			<#-- <#-- ---------- Search bar --------------->
				<#-- <div>
					<@liferay.search_bar />
					</div> -->
</head>

<body class="${css_class}">
	<@liferay_util["include"]
		page=body_top_include />
	<@liferay.control_menu />
	<div class="container-fluid position-relative" id="wrapper">
		<header id="banner" class="d-block" role="banner">
			<div class="row">
				<div class="col-md-12">
					<@liferay_util["include"]
						page=site_header_include />
					<#-- </div> -->
						<#-- -------- Logotipo do liferay ----------------->
							<#-- <div id="heading">
								<div aria-level="1" class="site-title" role="heading">
									<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
									<img alt="${logo_description}" height="68px" src="${site_logo}" width="76px" />
									</a>
									<#if show_site_name>
										<span class="site-name" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
										${site_name}
										</span>
									</#if>
								</div>
				</div> -->
				<#if !is_signed_in>
					<a
						data-redirect="${is_login_redirect_required?string}"
						href="/c/portal/login"
						id="sign-in"
						rel="nofollow">
						${languageUtil.get(locale, "sign-in")}
					</a>
				</#if>
				<#if has_navigation && is_setup_complete>
					<#include "${full_templates_path}/navigation.ftl" />
				</#if>
				<#-- -------------------Menu Superior--------------- -->
					<#--
						<nav class="menu">
						<ul class="">
							<li>
								<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
								<img src="${themeDisplay.getPathThemeImages()}/sky-logo-0.png" alt="logo Sky" width=60px height=60px />
							<li><a href="http://localhost:8080/conheca-nossos-pacotes">Conheça nossos Pacotes</a></li>
							<li><a href="http://localhost:8080/pacotes-super">Pacotes SUPER</a></li>
							<li><a href="http://localhost:8080/sobre">SOBRE</a></li>
							<li>
								<@liferay.search_bar />
							</li>
							<li class="slider"></li>
						</ul>
						</nav> -->
						<#-- ----------Barra de Pesquisa do Liferay--------- -->
		</header>
		<section id="content">
			<h2 class="hide-accessible sr-only" role="heading" aria-level="1">
				${the_title}
			</h2>
			<#if selectable>
				<@liferay_util["include"]
					page=content_include />
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}
					<@liferay_theme["wrap-portlet"]
						page="portlet.ftl">
						<@liferay_util["include"]
							page=content_include />
						</@>
			</#if>
		</section>
		<footer id="footer" role="contentinfo" class="footer">
			<#-- Footer Geral -->
				<div>
					<#-- <p class="powered-by"> -->
						<ul class="footer">
							<li>
								<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
								<img src="${themeDisplay.getPathThemeImages()}/sky-logo-0.png" alt="logo Sky" width=60px height=60px />
							</li>
							<li><a href="http://localhost:8080/nossos-pacotes">Conheça nossos Pacotes</a></li>
							<li><a href="http://localhost:8080/noticias">Notícias</a></li>
							<li><a href="http://localhost:8080/sobre">SOBRE</a></li>
							<li></li>
						</ul>
						<#-- <@liferay.language_format
							arguments='<a href="http://www.liferay.com" rel="external">Liferay</a>'
							key="powered-by-x" />
						</p> -->
				</div>
		</footer>
	</div>
	<@liferay_util["include"]
		page=body_bottom_include />
	<@liferay_util["include"]
		page=bottom_include />
	<!-- inject:js -->
	<!-- endinject -->
	<#-- Incersão do ViLibras (Widget lateral no portal ) -->
<div vw class="enabled">
        <div vw-access-button class="active"></div>
        <div vw-plugin-wrapper>
            <div class="vw-plugin-top-wrapper"></div>
        </div>
  </div>

		 <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
  <script>
    new window.VLibras.Widget('https://vlibras.gov.br/app');
  </script>
</body>

</html>