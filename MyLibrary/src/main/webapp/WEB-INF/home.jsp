<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Library</title>
<link rel="icon" type="image/x-icon" href="resources/bookico.svg">
<link rel="stylesheet" href="resources/styles.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>

	<div id="homeimg">
		<h1><u>My Books</u></h1>
		<br> <br> <a style="background-color: #E8E8E8; color: #001220;" class="btn btn-dark" href="allbooks"
			role="button" id="homebtn">ALL BOOKS</a> <br>
		<br> <a style="background-color: #E8E8E8; color: #001220" class="btn btn-dark" href="addbook" role="button">ADD
				BOOK &#128221</a> <br> <br>
		<!--collapsable  -->
		<section class="accordion">
			<input type="checkbox" name="collapse" id="handle1" checked="checked">
			<h2 class="handle">
				<label for="handle1"><p style="position: relative; top: -4px;">🔎</p></label>
			</h2>
			<div class="content">
				<form action="viewbook" method="GET">
					<div class="input-group mb-3">
						<input type="number" name="id" class="form-control"
							placeholder="Book ID" aria-label="id"
							aria-describedby="button-addon2" size="20">
						<button class="btn btn-outline-secondary" type="submit"
							role="button" id="button-addon2"><img src="resources/searchbtn.svg" style="height:20px; width: 20px;"></button>
					</div>
				</form>

				<form action="booklistauthor" method="GET">
					<div class="input-group mb-3">
						<input type="text" name="author" class="form-control"
							placeholder="Author" aria-label="Genre"
							aria-describedby="button-addon2" size="20">
						<button class="btn btn-outline-secondary" type="submit"
							role="button" id="button-addon2"><img src="resources/searchbtn.svg" style="height:20px; width: 20px;"></button>
					</div>
				</form>

				<form action="booklistgenre" method="GET">
					<div class="input-group mb-3">
						<input type="text" name="genre" class="form-control"
							placeholder="Genre" aria-label="Genre"
							aria-describedby="button-addon2" size="20">
						<button class="btn btn-outline-secondary" type="submit"
							role="button" id="button-addon2"><img src="resources/searchbtn.svg" style="height:20px; width: 20px;"></button>
					</div>
				</form>
			</div>
		</section>
		<section class="accordion">
			<input type="checkbox" name="collapse2" id="handle2">
		</section>
		<!--  -->
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>