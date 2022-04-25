<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Create New Ninja</title>
</head>
<body class="container bg-dark text-warning w-50 p-3 d-flex justify-content-center">
	<div class="d-flex align-items-center flex-column mt-5 ">
	<h1>Create a New Ninja</h1>
	<div class="rounded bg-dark text-warning border w-75 border-warning ps-4 pb-2 pt-4 mt-4">
		<form:form actions="/ninjas/new" method="post" modelAttribute="ninja">
			<p>
			<form:label path="firstName" class="form-label">First name:</form:label>
			<form:input path="firstName"/>
			<form:errors path="firstName"/>
			</p>
			<p>
			<form:label path="lastName" class="form-label">Last name:</form:label>
			<form:input path="lastName"/>
			<form:errors path="lastName"/>
			</p>
			<p>
			<form:label path="age">Ninja's Age:</form:label>
			<form:input path="age"  type="number"/>
			<form:errors path="age"/>
			</p>
			<p>
			<form:label path="attendingDojo" class="form-label">Attending Dojo:</form:label>
			<form:select path="attendingDojo" class="form-select w-50 border border-warning">
			<c:forEach var="dojo" items="${dojos}">
				<form:option value="${dojo.id}" >${dojo.name}</form:option>
			</c:forEach>
			</form:select>
			</p>
			<button class="btn btn-warning mt-1 mb-3">Create New Ninja</button>
		</form:form>
	</div>
	<a href="" class="link-warning">Back to Dashboard</a>
	</div>
</body>
</html>