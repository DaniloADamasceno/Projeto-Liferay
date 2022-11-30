<nav class="menu">
	<ul class="nav" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup=""
				nav_item_css_class=""
				nav_item_layout=nav_item.getLayout() />
			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup="aria-haspopup='true'"
					nav_item_css_class="selected" />
			</#if>
			<li class="${nav_item_css_class} nav-item" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a class="nav-link" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span>
						<@liferay_theme["layout-icon"]
							layout=nav_item_layout />
						${nav_item.getName()}
					</span></a>
				<#if nav_item.hasChildren()>
					<ul class="child-menu nav" role="menu">
						<#list nav_item.getChildren() as nav_child>
							<#assign
								nav_child_css_class="" />
							<#if nav_item.isSelected()>
								<#assign
									nav_child_css_class="selected" />
							</#if>
							<li class="${nav_child_css_class} nav-item" id="layout_${nav_child.getLayoutId()}" role="presentation">
								<a class="nav-link" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">
									${nav_child.getName()}
								</a>
							</li>
						</#list>
					</ul>
				</#if>
			</li>
		</#list>
	</ul>
	<#--  Botões para alternar entre DARK e LIGHT mode  -->

			<#--  <input name="theme" type="checkbox" class="dark-mode" />
<input name="theme" type="checkbox" class="light-mode" />  -->


</nav>