<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib tagdir="/WEB-INF/tags/util" prefix="util" %>

<html>  		
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=8" />		
		<%-- <util:load-scripts /> --%>
		<spring:message code="application_name" var="app_name" htmlEscape="false"/>
		<title><spring:message code="welcome_h3" arguments="${app_name}" /></title>
		
		<!-- lte -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	    <!-- Bootstrap 3.3.5 -->
	    <spring:url value="/resources/lte/bootstrap/css/bootstrap.min.css" var="bootstrap_min_css"></spring:url>
	    <link rel="stylesheet" href="${bootstrap_min_css}">
	    <!-- Font Awesome -->
	    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> -->
	    <!-- Ionicons -->
	    <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
	    <spring:url value="/resources/font-awesome-4.4.0/css/font-awesome.min.css" var="font_awesome_min_css"/>
	    <link rel="stylesheet" href="${font_awesome_min_css}" />
	    <spring:url value="/resources/iconicons/css/ionicons.min.css" var="ionicons_min_css"/>
	    <link rel="stylesheet" href="${ionicons_min_css}" />
	    
	    <!-- Theme style -->
	    <spring:url value="/resources/lte/dist/css/AdminLTE.min.css" var="AdminLTE_min_css"></spring:url>
	    <link rel="stylesheet" href="${AdminLTE_min_css}">
	    <!-- AdminLTE Skins. Choose a skin from the css/skins
	         folder instead of downloading all of them to reduce the load. -->
	    <spring:url value="/resources/lte/dist/css/skins/_all-skins.min.css" var="_all_skins_min_css"></spring:url>     
	    <link rel="stylesheet" href="${_all_skins_min_css}">
		
		<spring:url value="/resources/lte/plugins/datepicker/datepicker3.css" var="datepicker3_css"></spring:url>
		<link rel="stylesheet" href="${datepicker3_css}">
		
		<spring:url value="/resources/lte/plugins/iCheck/flat/blue.css" var="blue_css"></spring:url>
		<link rel="stylesheet" href="${blue_css}">
    	
    	<!-- jQuery 2.1.4 -->
		<spring:url value="/resources/lte/plugins/jQuery/jQuery-2.1.4.min.js" var="jQuery_2_1_4_min_js"></spring:url>	  
	    <script src="${jQuery_2_1_4_min_js}"></script>
	    <!-- Bootstrap 3.3.5 -->
	    <spring:url value="/resources/lte/bootstrap/js/bootstrap.min.js" var="bootstrap_min_js"></spring:url>
	    <script src="${bootstrap_min_js}"></script>
	</head>
	
  	<body class="hold-transition skin-blue sidebar-mini">
   		<div id="wrapper">
		    <tiles:insertAttribute name="header" ignore="true" />
		    <tiles:insertAttribute name="menu" ignore="true" />   
		    <div id="main">
	    		<tiles:insertAttribute name="body"/> 
		    	<tiles:insertAttribute name="footer" ignore="true"/>
		    </div>
		</div>
		

    <!-- FastClick -->
    <spring:url value="/resources/lte/plugins/fastclick/fastclick.min.js" var="fastclick_min_js"></spring:url>
    <script src="${fastclick_min_js}"></script>
    <!-- AdminLTE App -->
    <spring:url value="/resources/lte/dist/js/app.min.js" var="app_min_js"></spring:url>
    <script src="${app_min_js}"></script>
    <!-- AdminLTE for demo purposes -->
    <spring:url value="/resources/lte/dist/js/demo.js" var="demo_js"></spring:url>
    <script src="${demo_js}"></script>

    
    
    
     
      <!-- Morris.js charts -->
    <spring:url value="/resources/lte/plugins/morris/raphael-min.js" var="raphael_min_js"></spring:url>
    <script src="${raphael_min_js}"></script>
    <spring:url value="/resources/lte/plugins/morris/morris.min.js" var="morris_min_js"></spring:url>
    <script src="${morris_min_js}"></script>
       <script>
      $(function () {
        "use strict";

        // AREA CHART
        var area = new Morris.Area({
          element: 'revenue-chart',
          resize: true,
          data: [
            {y: '2011 Q1', item1: 2666, item2: 2666},
            {y: '2011 Q2', item1: 2778, item2: 2294},
            {y: '2011 Q3', item1: 4912, item2: 1969},
            {y: '2011 Q4', item1: 3767, item2: 3597},
            {y: '2012 Q1', item1: 6810, item2: 1914},
            {y: '2012 Q2', item1: 5670, item2: 4293},
            {y: '2012 Q3', item1: 4820, item2: 3795},
            {y: '2012 Q4', item1: 15073, item2: 5967},
            {y: '2013 Q1', item1: 10687, item2: 4460},
            {y: '2013 Q2', item1: 8432, item2: 5713}
          ],
          xkey: 'y',
          ykeys: ['item1', 'item2'],
          labels: ['Item 1', 'Item 2'],
          lineColors: ['#a0d0e0', '#3c8dbc'],
          hideHover: 'auto'
        });

        // LINE CHART
        var line = new Morris.Line({
          element: 'line-chart',
          resize: true,
          data: [
            {y: '2011 Q1', item1: 2666},
            {y: '2011 Q2', item1: 2778},
            {y: '2011 Q3', item1: 4912},
            {y: '2011 Q4', item1: 3767},
            {y: '2012 Q1', item1: 6810},
            {y: '2012 Q2', item1: 5670},
            {y: '2012 Q3', item1: 4820},
            {y: '2012 Q4', item1: 15073},
            {y: '2013 Q1', item1: 10687},
            {y: '2013 Q2', item1: 8432}
          ],
          xkey: 'y',
          ykeys: ['item1'],
          labels: ['Item 1'],
          lineColors: ['#3c8dbc'],
          hideHover: 'auto'
        });

        //DONUT CHART
        var donut = new Morris.Donut({
          element: 'sales-chart',
          resize: true,
          colors: ["#3c8dbc", "#f56954", "#00a65a"],
          data: [
            {label: "Download Sales", value: 12},
            {label: "In-Store Sales", value: 30},
            {label: "Mail-Order Sales", value: 20}
          ],
          hideHover: 'auto'
        });
        //BAR CHART
        var bar = new Morris.Bar({
          element: 'bar-chart',
          resize: true,
          data: [
            {y: '2006', a: 100, b: 90},
            {y: '2007', a: 75, b: 65},
            {y: '2008', a: 50, b: 40},
            {y: '2009', a: 75, b: 65},
            {y: '2010', a: 50, b: 40},
            {y: '2011', a: 75, b: 65},
            {y: '2012', a: 100, b: 90}
          ],
          barColors: ['#00a65a', '#f56954'],
          xkey: 'y',
          ykeys: ['a', 'b'],
          labels: ['CPU', 'DISK'],
          hideHover: 'auto'
        });
      });
    </script>
    
    

    
	</body>
	
	
	
	
	
</html>
