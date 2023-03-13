<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
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

<form action="bookadded" method="POST">
<label for=title>Title:</label>
<input type="text" name="title" value="">
<br>
<label for=description>Description:</label>
<input type="text" name="description" value="">
<br>
<label for=author>Author:</label>
<input type="text" name="author" value="">
<br>
<label for=country>Country:</label>
<input type="text" name="country" value="">
<br>
<label for=genre>Genre</label>
<input type="text" name="genre" value="">
<br>
<label for=pages>Number of Pages:</label>
<input type="number" name="pages" value="">
<br>
<label for=publishedYear>Year of Publication:</label>
<input type="number" name="publishedYear" value="">
<br>
<label for=price>Price in USD:</label>
<input type="number" name="price" value="">
<br>
<label for=isbn>ISBN:</label>
<input type="text" name="isbn" value="">
<br>

<input type="submit" class="btn btn-success" value="Add Book">

</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>