<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Library</title>
<link rel="stylesheet" href="resources/styles.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<div id="homeimg">
	<h1>My Books</h1>
	<body>
		<a class="btn btn-dark" href="allbooks" role="button" id="homebtn">View All
			Books</a>
		<a class="btn btn-dark" href="addbook" role="button">Add Book to
			Library</a>
		<form action="viewbook" method="GET">
			Book ID: <input type="number" name="id" size="4" /> <input
				type="submit" value="Get Book Data" class="btn btn-info enabled"
				role="button" aria-disabled="false">
		</form>
		<p id=space></p>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
			crossorigin="anonymous"></script>

</body></div>
</html>