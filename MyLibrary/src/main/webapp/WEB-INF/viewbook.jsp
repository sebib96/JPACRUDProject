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
<body>
<a class="btn btn-dark" href="home.do" role="button" id=homeButton>Home</a>
<br>
<br>

	<h1>In view Book</h1>
<c:choose>
	<c:when test="${! empty book }">
		<h4>Book Title: ${book.title}</h4>
		<img class="cover" src="${book.coverUrl}">
		<ul>
			<li>Author: ${book.author}</li>
			<li>Description: ${book.description}</li>
			<li>Country: ${book.country}</li>
			<li>Genre: ${book.genre}</li>
			<li>Pages: ${book.pages}</li>
			<li>Year Published: ${book.publishedYear}</li>
			<li>Price: ${book.price}</li>
			<li>ISBN: ${book.isbn}</li>
		</ul>
	</c:when>
	<c:otherwise>No Book Found</c:otherwise>
</c:choose>

<form action="bookburned.do" method="POST">
				<label for="id"></label> 
				<input type="hidden" name="id" value="${book.id}" />
				<input type="submit" class="btn btn-danger"value="Burn" />
</form>

<form action="updatebook.do" method="GET">
			<label for=id></label>
			<input type="hidden" name="id" value="${book.id }"/>
			<input type="submit" class="btn btn-danger" value ="Update"/>
</form>
			
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>