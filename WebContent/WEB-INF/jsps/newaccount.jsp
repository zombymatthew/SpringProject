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
<title>Create New User Account</title>
</head>
<body>
  <sf:form method="post"
    action="${pageContext.request.contextPath}/createaccount" commandName="user">
    <table class="formtable">
      <tr>
        <td class="label">Username:</td>
        <td><sf:input name="username" type="text" path="username"/><br/>
            <sf:errors path="username" cssClass="error"></sf:errors></td>
      </tr>
      <tr>
        <td class="label">Email:</td>
        <td><sf:input name="email" type="text" path="email"/><br/>
            <sf:errors path="email" cssClass="error"></sf:errors></td>
      </tr>
      <tr>
        <td class="label">Password:</td>
        <td><sf:input name="password" type="text" path="password"/><br/>
            <sf:errors path="password" cssClass="error"></sf:errors></td>
      </tr>
      <tr>
        <td class="label">Repeat Password:</td>
        <td><input name="repeatpassword" type="text" /><br/> </td>
      </tr>
      <tr>
        <td class="label"></td>
        <td><input value="Create Account" type="submit" /></td>
      </tr>



    </table>

  </sf:form>
</body>
</html>