<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/util" prefix="util"%>
<footer class="main-footer">
	<div class="pull-right hidden-xs">
	<%-- 	<spring:url value="/" var="home" />
		<span> <a href="${home}"> <spring:message
					code="button_home" />
		</a>
		</span>
		<c:if test="${pageContext['request'].userPrincipal != null}">
			<c:out value=" | " />
			<span> <spring:url value="/resources/j_spring_security_logout"
					var="logout" /> <a href="${logout}"> <spring:message
						code="security_logout" />
			</a>
			</span>
		</c:if>
		<c:if test="${pageContext['request'].userPrincipal == null}">
			<c:out value=" | " />
			<span> <spring:url value="/login" var="login" /> <a
				href="${login}"> Login </a>
			</span>
		</c:if>


		<span id="language"> <c:out value=" | " /> <spring:message
				code="global_language" /> <c:out value=": " /> <util:language
				label="English" locale="en" /> <util:language label="Vietnam"
				locale="vi" />


		</span> <span> <strong>By<a href="http://newwaytech.vn">Newwaytech.vn</a>.
		</strong>
		</span> --%>
		<%-- <util:theme/> --%>

		<%--   <spring:url value="/resources/images/springsource-logo.png" var="logo"/>
  <spring:message code="global_sponsored" htmlEscape="false" var="sponsored"/>
  <span>
    <a href="http://springsource.com" title="${fn:escapeXml(sponsored)}">
      <img align="right" alt="${fn:escapeXml(sponsored)}" src="${logo}"/>
    </a>
  </span> --%>
	</div>
	<!--   <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved. -->

</footer>
