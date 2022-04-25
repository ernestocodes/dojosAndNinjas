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

<title>Create New Dojo</title>
</head>
<body class="container bg-dark text-warning w-50 p-3 d-flex justify-content-center">
	<div class="d-flex align-items-center flex-column mt-5 ">
	<h1>Create a New Dojo</h1>
	<div class="rounded bg-dark text-warning border w-75 border-warning ps-4 pb-2 pt-4 mt-4">
		<form:form actions="/dojos/new" method="post" modelAttribute="dojo">
			<p>
			<form:label path="name" class="form-label">Dojo Name:</form:label>
			<form:input path="name"/>
			<form:errors path="name"/>
			</p>
			<button class="btn btn-warning mt-1 mb-3">Create New Dojo</button>
		</form:form>
	</div>
	<a href="" class="link-warning">Back to Dashboard</a>
	</div>
</body>
</html>