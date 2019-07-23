<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--引用核心标签-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>login</title>
        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">
        <%--<c:if test="${!empty error}">--%>
            <%--<font color="red"><c:out value="%{error}" /></font>--%>
        <%--</c:if>--%>
        <div id="wrapper">
	        <article>
	        	<h1 class="major"><s:message code="signIn" text="signIn" /></h1>
	        		<form action="<c:url value="/loginCheck.html" />" method="post" >
			        	<div class="fields">
							<div class="field">
								<label for="name"><s:message code="account" text="account" /></label>
								<input type="text" name="userName" />
							</div>
							<div class="field">
								<label for="password"><s:message code="password" text="password" /></label>
								<input type="password" name="password" />
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="<s:message code="logIn" text="logIn" />" class="primary" /></li>
							<li><input type="reset" value="<s:message code="reset" text="reset" />" /></li>
							<li><input type="button" value="<s:message code="register" text="register" />" onclick="location.href='signUp.html'"/></li>
						</ul>
			        </form>
	        </article>
	        <ul class="actions">
				<li><a href='index.html?locale=en_US'>en_US</a></li>
				<li>|</li>
				<li><a href='index.html?locale=zh_TW'>zh_TW</a></li>
			</ul>
	        
        </div>
        <div id="bg"></div>
        
        <!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    </body>
</html>