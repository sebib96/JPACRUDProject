<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library</title>
<link rel="stylesheet" href="resources/styles.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
	<a class="btn btn-dark" href="home.do" role="button" id=homeButton>Home</a>
	<br>
	<br>

	<c:choose>
		<c:when test="${empty books}">No Books Found</c:when>
		<c:otherwise>
			<c:forEach var="book" items="${books}">
				<div class="container" style="background-color: #414B53; border-radius: 30px 30px 30px 30px; height: 300px; width: 700px;">
					<img style="width: 220px; height: 300px; text-align: left; border-radius: 30px 0px 0px 30px;margin-left: -10px;" src="${book.coverUrl}">
					<ul style="list-style: none; float: right; overflow-wrap: break-word; width: 350px; padding-top: 65px; padding-left: 150px; ">
						<li>ID: ${book.id}</li>
						<li>Title: ${book.title}</li>
						<li>Author: ${book.author}</li>
						<li>Genre: ${book.genre}</li>
						<li>Pages: ${book.pages}</li>
						<li>Price: $${book.price}</li>
						<div style="clear: left;"/>
					</ul>
				</div>
				<br><br>
			</c:forEach>

		</c:otherwise>



	</c:choose>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>