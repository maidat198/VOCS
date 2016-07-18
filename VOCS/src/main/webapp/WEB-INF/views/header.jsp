<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %> --%>


	<header class="main-header">
		<!-- Logo -->
		<spring:url value="/" var="home"></spring:url>
		<spring:message var="app_name" code="application_name"
			htmlEscape="false" />
		<a href="${home }" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>${app_name}</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b></b>${app_name}</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

					<!-- User Account: style can be found in dropdown.less -->
					<c:choose>
						<c:when test="${pageContext['request'].userPrincipal != null}">
							<spring:url value="/resources/j_spring_security_logout"
								var="logout" />
							<li class="dropdown user user-menu"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"> <span
									class="glyphicon glyphicon-user"></span> <span
									class="hidden-xs">${pageContext.request.userPrincipal.name}</span>
							</a>
								<ul class="dropdown-menu" style='width: 162px'>


									<li class="user-footer"><a href="${logout}"
										class="btn btn-default btn-flat">Sign out</a></li>
								</ul></li>
						</c:when>
					</c:choose>
					<!-- Control Sidebar Toggle Button -->
					<!--  <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li> -->
				</ul>
			</div>
		</nav>
	</header>
