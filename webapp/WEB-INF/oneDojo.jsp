<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>One Dojo</title>
</head>
<body>
<body class="container bg-dark text-warning w-50 p-3">
	<h1><c:out value="${dojo.name}"></c:out></h1>
	<table class="table table-bordered">
		<tbody>
			<tr class="text-warning">
				<th scope="col">ID</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Age</th>
			</tr>
			<c:forEach var="ninja" items="${dojo.studentNinjas}">
				<tr class="text-warning">
					<td><c:out value="${ninja.id}"></c:out></td>
					<td><c:out value="${ninja.firstName}"></c:out></td>
					<td><c:out value="${ninja.lastName}"></c:out></td>
					<td><c:out value="${ninja.age}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/ninjas/new" class="link-warning">Add a Ninja</a>
</body>
</body>
</html>
