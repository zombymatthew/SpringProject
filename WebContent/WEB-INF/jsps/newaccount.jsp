<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/main.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/static/script/jquery.js"></script>
<script type="text/javascript">


	function onLoad() {
		$("#password1").keyup(checkPasswordsMatch);
		$("#password2").keyup(checkPasswordsMatch);
		$("#details").submit(canSubmit);
	}

	function canSubmit() {
		var password1 = $("#password1").val();
		var password2 = $("#password2").val();
		if (password1 != password2) {
			alert ("Passwords do not match!");
			return false;
		} else {
			return true;
		}

	}

	function checkPasswordsMatch() {
		var password1 = $("#password1").val();
		var password2 = $("#password2").val();

		if (password1.length > 3 || password2.length > 3) {
			if (password1 == password2) {
				$("#passwordmessage").text("<fmt:message key='MatchedPasswords.user.password'/>");
				$("#passwordmessage").addClass("valid");
				$("#passwordmessage").removeClass("error");
			} else {
				$("#passwordmessage").text("<fmt:message key='UnmatchedPasswords.user.password'/>"); 
				$("#passwordmessage").addClass("error");
				$("#passwordmessage").removeClass("valid");
			}
		}
	}

	$(document).ready(onLoad);
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New User Account</title>
</head>
<body>
<p/>

  <h2>Create New User Account</h2>
  <sf:form id="details" method="post" action="${pageContext.request.contextPath}/createaccount" commandName="user">
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
        <td><sf:input id="password1" name="password" type="text" path="password"/><br/>
            <sf:errors path="password" cssClass="error"></sf:errors></td>
      </tr>
      <tr>
        <td class="label">Repeat Password:</td>
        <td><input id="password2" name="repeatpassword" type="text" /><div id="passwordmessage"></div><br/> </td>
      </tr>
      <tr>
        <td class="label"></td>
        <td><input value="Create Account" type="submit" /></td>
      </tr>



    </table>

  </sf:form>
</body>
</html>