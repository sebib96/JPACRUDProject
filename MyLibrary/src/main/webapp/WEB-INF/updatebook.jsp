<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
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
<h1>In updatebook.jsp</h1>
	<form action="bookupdated.do" method="POST">
	<input type="hidden" name="id" value="${book.id}"/>
	<label for="title">Title:</label>
	<input type="text" name="title" value="${book.title}"/>
	<br>
	<label for="author">Author:</label>
	<input type="text" name="author" value="${book.author}"/>
	<br>
	<label for="description">Description:</label>
	<input type="text" name="description" value="${book.description}"/>
	<br>	
	<label for="country">Country:</label>
	<input type="text" name="country" value="${book.country}"/>
	<br>	
	<label for="genre">Genre:</label>
	<input type="text" name="genre" value="${book.genre }"/>
	<br>	
	<label for="pages">Pages:</label>
	<input type="number" name="pages" value="${book.pages }"/>
	<br>	
	<label for="publishedYear">Published Year:</label>
	<input type="number" name="publishedYear" value="${book.publishedYear }"/>
	<br>	
	<label for="price">Description:</label>
	<input type="number" name="price" value="${book.price }"/>
	<br>	
	<label for="isbn">Description:</label>
	<input type="text" name="isbn" value="${book.isbn }"/>
	<br>	
	
	<input class="btn btn-warning" type="submit" value="Update Book">
	</form>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>