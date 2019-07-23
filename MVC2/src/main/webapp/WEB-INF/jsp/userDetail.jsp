<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${userDetail.account}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
		<script>
			<c:if test="${editAccountCheck}">
				alertOut();
			</c:if>
			function alertOut(){alert("<s:message code="updateAlert" text="updateAlert" />");}
             function checkPassword(){
                var editPasswd = document.getElementById("editPasswd").value;
                var confirmPasswd = document.getElementById("confirmPasswd").value;
                var editAge = document.getElementById("editAge").value;
                if(editPasswd != confirmPasswd ){
                    alert("<s:message code="confirmPasswdAlert" text="confirmPasswdAlert" />");
                    return false;
                }
                else if( editAge<0 || editAge>99 || !(Math.floor(editAge) == editAge)){
                	alert("<s:message code="ageAlert" text="ageAlert" />");
                	return false;
                }
            }
        </script>
	</head>
	
	<body >
		<div id="wrapper">
		<div style="width:70%;">
	        <article  id="contact" class="active">
	        	<h1 class="major"><s:message code="editPage" text="editPage" /></h1>
		        <form action="<c:url value="/userDetail.html" />" method="post"  onsubmit="return checkPassword()">
		        	<div class="fields">
						<div class="field">
							<label for="editName"><s:message code="name" text="name" /></label>
							<input type="text" name="editName" value='${userDetail.name}' readonly="readonly"/>
						</div>
						<div class="field">
							<label for="editAccount"><s:message code="account" text="account" /></label>
							<input type="text" name="editAccount" value='${userDetail.account}' readonly="readonly"/>
						</div>
						<div class="field">
							<label for="editPasswd"><s:message code="password" text="password" /></label>
							<input type="password" name="editPasswd" value='${userDetail.passwd}' id="editPasswd" required/>
						</div>
						<div class="field">
							<label for="confirmPasswd"><s:message code="confirmPasswd" text="confirmPasswd" /></label>
							<input type="password" name="confirmPasswd" value='${userDetail.passwd}' id="confirmPasswd" required/>
						</div>
						<div class="field">
							<label for="editEmail">E-MAIL</label>
							<input type="email" name="editEmail" value='${userDetail.email}' required/>
						</div>
						<div class="field">
						<label for="editGender"><s:message code="gender" text="gender" /></label>
						</div>
							<c:if test="${userDetail.gender=='man'}">
									<div class="field half">
										<input type="radio" id="man" name="editGender" value='man' checked="true">
										<label for="man"><s:message code="man" text="man" /></label>
									</div>
									<div class="field half">
										<input type="radio" id="woman" name="editGender" value='woman'>
										<label for="woman"><s:message code="woman" text="woman" /></label>
									</div>
							</c:if>
							<c:if test="${userDetail.gender=='woman'}">
									<div class="field half">
										<input type="radio" id="man" name="editGender" value='man' >
										<label for="man"><s:message code="man" text="man" /></label>
									</div>
									<div class="field half">
										<input type="radio" id="woman" name="editGender" value='woman' checked="true">
										<label for="woman"><s:message code="woman" text="woman" /></label>
									</div>
							</c:if>
						<div class="field">
							<label for="editAge"><s:message code="age" text="age" /></label>
							<input type="text" name="editAge" value='${userDetail.age}' id="editAge" required/>
						</div>
					</div>
					
					<ul class="actions">
						<li><input type="submit" value="<s:message code="update" text="update" />" class="primary" /></li>
						<li><input type="reset" value="<s:message code="reset" text="reset" />" /></li>
						<li><input type="button" value="<s:message code="delete" text="delete" />" onclick="location.href='userDelete.html'"/></li>
						<li><input type="button" value="<s:message code="leave" text="leave" />" onclick="location.href='main.html'"/></li>
					</ul>
		        </form>
	        </article>
        </div>
        </div>
        <div id="bg"></div>
		<!--
		<form action="<c:url value="/userDetail.html" />" method="post"  onsubmit="return checkPassword()">
		<table align="center" border=1>
			
			<tr>
	        	<td>姓名：</td><td><input type="text" name="editName" value='${userDetail.name}' readonly="readonly" /></td>
	        </tr>	
	        <tr>
	        	<td>帳號：</td><td><input type="text" name="editAccount" value='${userDetail.account}' readonly="readonly"/></td>
	        </tr>    
	        <tr>
	            <td>密碼：</td><td><input type="password" name="editPasswd" value='${userDetail.passwd}' id="editPasswd" required/></td>
	        <tr/>
	        <tr>
	            <td>確認密碼：</td><td><input type="password" name="confirmPasswd" value='${userDetail.passwd}' id="confirmPasswd" required/></td>
	        <tr/>
	        <tr>
	        	<td>E-MAIL：</td><td><input type="email" name="editEmail" value='${userDetail.email}' required/></td>
	        </tr>
	        <tr>
	        	
	        	<td>性別：</td>
		        	<c:if test="${userDetail.gender== 'man'}">
						<td>
							<input type='radio' name='editGender' value='man' checked="true">man 
							<input type='radio' name='editGender' value='woman'>woman 
						</td>
					</c:if>
					
					<c:if test="${userDetail.gender== 'woman'}">
						<td>
							<input type='radio' name='editGender' value='man'>man 
							<input type='radio' name='editGender' value='woman' checked="true">woman 
						</td>
					</c:if>
	        	
	        </tr>
	        <tr>
	        	<td>年齡：</td><td><input type="text" name="editAge" value='${userDetail.age}' id="editAge" required/></td>
	        </tr>
	        <tr>
		        <td colspan="2" align="center">
		            <input type="submit" value="更新" id="check" />
		            <input type="reset" value="重設" />
		            <input type="button" value="刪除" onclick="location.href='userDelete.html'">
		        </td>
	        </tr>        
		</table>
		</form>
		-->
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	</body>
</html>