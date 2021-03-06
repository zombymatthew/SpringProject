<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/main.css" />
  <title>Login Page</title>
</head>

<body onload='document.f.username.focus();'>
	<h3>Login with Username and Password</h3>

	<c:if test="${param.error}">
  <span class="loginerror">Login crashed and burned. Try again.</span>	
	</c:if>

	<form name='f' action='${pageContext.request.contextPath}/login'
		method='POST'>
		<table class="formtable">
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Login" /> <input name="${_csrf.parameterName}"
					type="hidden" value="${_csrf.token}" /></td>
			</tr>
		</table>
	</form>
	
	<p><a href='<c:url value="/newaccount"/>'>Create New Account</a>
</body>
</html>