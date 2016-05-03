<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/main.css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Offers</title>
</head>
<body>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate" commandName="offer">
		<table class="formtable">
			<tr>
				<td class="label">Name:</td>
				<td><sf:input name="name" type="text" path="name"/><br/>
				    <sf:errors path="name" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input name="email" type="text" path="email"/><br/>
				    <sf:errors path="email" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Your offer:</td>
				<td><sf:textarea name="text" rows="10" cols="10" path="text"></sf:textarea><br/>
				    <sf:errors path="text" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input value="Create Offer" type="submit" /></td>
			</tr>



		</table>

	</sf:form>
</body>
</html>