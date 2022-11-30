/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

/*
 * This function gets loaded when all the HTML, not including the portlets, is
 * loaded.
 */
AUI().ready(function () {});

/*
 * This function gets loaded after each and every portlet on the page.
 *
 * portletId: the current portlet's id
 * node: the Alloy Node object of the current portlet
 */
Liferay.Portlet.ready(function (_portletId, _node) {});

/*
 * This function gets loaded when everything, including the portlets, is on
 * the page.
 */


  //------------------------------------
    //  Dark mode - Light mode
    //----------------------------------
 
    //%%---- Dark mode Scrip não esta funcionando ainda ----%%//

    // $(".dark-mode").on("click", function (e) {
    //   e.preventDefault();
    //   $(".dark-mode").removeClass("active");
    //   $(".dark-mode").addClass("active");
    //   $(".light-mode").removeClass("active");
    //   $(".light-mode").addClass("active");
    //   $("b.portlet-content").addClass("dark-mode");
    //   $(".portlet-content").removeClass("light-mode");
    // });

    // $(".light-mode").on("click", function (e) {
    //   e.preventDefault();
    //   $(".light-mode").removeClass("active");
    //   $(".light-mode").addClass("active");
    //   $(".dark-mode").removeClass("active");
    //   $(".dark-mode").addClass("active");
    //   $(".portlet-content").addClass("light-mode");
    //   $(".portlet-content").removeClass("dark-mode");
    // });