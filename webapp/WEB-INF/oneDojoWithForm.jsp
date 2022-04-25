<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>One Dojo</title>
</head>
<body>
<body class="container bg-dark text-warning w-50 p-3">
	<h1>
		<c:out value="${dojo.name}"></c:out>
	</h1>
	<form:form actions="/dojos/${dojo.id}/new" method="post" modelAttribute="ninja">
		<form:hidden path="attendingDojo" value="${dojo.id}"></form:hidden>
		<p>
			<form:label path="firstName" class="form-label">First name:</form:label>
			<form:input path="firstName" />
			<form:errors path="firstName" />
		</p>
		<p>
			<form:label path="lastName" class="form-label">Last name:</form:label>
			<form:input path="lastName" />
			<form:errors path="lastName" />
		</p>
		<p>
			<form:label path="age">Ninja's Age:</form:label>
			<form:input path="age" type="number" />
			<form:errors path="age" />
		</p>
		<button class="btn btn-warning mt-1 mb-3">Create New Ninja</button>
	</form:form>
	<a href="/ninjas/new" class="link-warning">Add a Ninja</a>
</body>
</body>
</html>