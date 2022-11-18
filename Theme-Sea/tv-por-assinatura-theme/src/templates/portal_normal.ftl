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
		<link rel="icon" type="image/png" sizes="32x32" href="${themeDisplay.getPathThemeImages()}/sky-logo-0.png">
		<link rel="icon" type="image/png" sizes="16x16" href="${themeDisplay.getPathThemeImages()}/sky-logo-0.png">

	<#-- ---------- Search bar  --------------->
		 <div>
        <@liferay.search_bar />
      </div>
</head>

<body class="${css_class}">
	<#-- -->
		<ul class="menu">
			<li><img src="${themeDisplay.getPathThemeImages()}/sky-logo-0.png" alt="logo Sky" width=60px height=60px/> </li>
			<#-- <li><a href="#" class="active">Logo SKY</a></li> -->
				<li><a href="#">Conheça nossos Pacotes</a></li>
				<li><a href="#">Pacotes SUPER</a></li>
				<li><a href="#">SOBRE</a></li>
				<li> <@liferay.search_bar /></li>
				<li class="slider"></li>
		</ul>
		<#-- -->
			<#-- <@liferay_ui["quick-access"]
				contentId="#main-content" /> Navegação -->
			<@liferay_util["include"]
				page=body_top_include />
			<@liferay.control_menu />
			<div class="container-fluid position-relative" id="wrapper">
				<header id="banner" class="d-block" role="banner">
					<#-- -->
						<div class="row">
							<div class="col-md-12">
								<@liferay_util["include"]
									page=site_header_include />
							</div>
							<#-- -->
								<div id="heading">
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
								</div>
								<#if !is_signed_in>
									<a
										data-redirect="${is_login_redirect_required?string}"
										href="${themeDisplay.getURLSignIn()}"
										id="sign-in"
										rel="nofollow">
										${languageUtil.get(locale, "sign-in")}
									</a>
								</#if>
								<#if has_navigation && is_setup_complete>
									<#include "${full_templates_path}/navigation.ftl" />
								</#if>
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
					<div>
						<#-- <p class="powered-by"> -->
							<ul class="footer">
								<li>
									<img src="${themeDisplay.getPathThemeImages()}/sky-logo-0.png" alt="logo Sky" width=45px height=45px />
								</li>
								<li><a href="#">Conheça nossos Pacotes</a></li>
								<li><a href="#">Pacotes SUPER</a></li>
								<li><a href="#">SOBRE</a></li>
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
</body>

</html>