<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Library</title>
<link rel="stylesheet" href="resources/styles.css">
<link rel="icon" type="image/x-icon" href="resources/bookico.svg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

</head>
<body>
	<a class="btn btn-dark" href="home.do" role="button" id=homeButton
		style="position: fixed; top: 15px; left: 15px; background: #D3D3D3">
		<img src="resources/homebtn.svg" style="height: 35px; width: 35px;">
	</a>
	<br><br><br><br>
	
		<c:if test="${book.id < 50}">

		<a href="viewbook?id=${book.id + 1}"><img src="resources/arrowfwd.svg" class="fwdbtn"></a>

			<!-- TODO img fwd -->
		</c:if>

		<c:if test="${book.id > 1}">
			<a href="viewbook?id=${book.id - 1}"><img src="resources/arrowback.svg" class="backbtn"></a>

			<!-- TODO back img -->
		</c:if>
	<c:choose>
		<c:when test="${! empty book }">
			<br>
			<h2 align="center">
				<u>${book.title}</u>
			</h2>
			<img class="cover" src="${book.coverUrl}" style="position: relative;">
			<br>
			<br>
			<ul
				style="text-decoration: none; background-color: #414B53; height: auto; width: 950px; position: relative; left: 10px; top: -10px; border-radius: 20px 20px 20px 20px; margin-left: auto; margin-right: auto;">
				<li class="bookfield"><strong>Author:</strong> ${book.author}</li>
				<br>
				<li class="bookfield"><strong>Description:</strong>
					${book.description}</li>
				<br>
				<li class="bookfield"><strong>Country:</strong> ${book.country}</li>
				<li class="bookfield"><strong>Genre:</strong> ${book.genre}</li>
				<li class="bookfield"><strong>Pages:</strong> ${book.pages}</li>
				<li class="bookfield"><strong>Year Published:</strong>
					${book.publishedYear}</li>
				<li class="bookfield"><strong>Price:</strong> $${book.price}</li>
				<li class="bookfield"><strong>ISBN:</strong> ${book.isbn}</li>
			</ul>
	<form action="bookburned.do" method="POST"
		style="padding-top: 10px; padding-left: 15px; position: relative; top: -10px;">
		<label for="id"></label> <input type="hidden" name="id"
			value="${book.id}" /> <input type="submit" class="btn btn-danger"
			value="Burn &#128293" />
	</form>
	<form action="updatebook.do" method="GET"
		style="padding-top: 10px; padding-left: 15px; position: relative; top: -10px;">
		<label for=id></label> <input type="hidden" name="id"
			value="${book.id}" /> <input type="submit" class="btn btn-warning"
			value="Update" />
	</form>
		</c:when>
		<c:otherwise><h1>No Book Found</h1></c:otherwise>
	</c:choose>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>