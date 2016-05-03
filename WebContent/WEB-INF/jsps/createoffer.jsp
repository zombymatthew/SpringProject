<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Offers</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/docreate"> 
<table class="formtable">
<tr>
  <td class="label">Name: </td>  <td><input name="name" type="text"/></td>
</tr>
<tr>
  <td class="label">Email: </td> <td><input name="email" type="text"/></td>
</tr>
<tr>
  <td class="label">Your offer: </td> <td><textarea name="text" rows="10" cols="10"></textarea></td>
</tr>
<tr>
  <td class="label"> </td> <td><input value="Create Offer" type="submit"/></td>
</tr>



</table>

</form>
</body>
</html>