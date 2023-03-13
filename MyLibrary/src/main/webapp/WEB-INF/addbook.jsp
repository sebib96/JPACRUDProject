<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
    <link rel="stylesheet" href="resources/styles.css">
    <link rel="icon" type="image/x-icon" href="resources/bookico.svg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>
<a class="btn btn-dark" href="home.do" role="button" id=homeButton style="position: relative; top: 15px; left: 15px; background: #D3D3D3">
<img src="resources/homebtn.svg" 
style="height: 35px; width: 35px;"></a>
<br>
<br>

<form action="bookadded" method="POST" style="padding-left: 20px; padding-top: 30px; background-color: #D3D3D3; color: #001220; border-radius: 30px 30px 30px 30px;
height: 515px; width: 500px; position: absolute; left: 40px; top: 100px;">
<label for=title>Title:</label>
<input type="text" name="title" value="">
<br><br>
<label for=description>Description:</label>
<input type="text" name="description" value="">
<br><br>
<label for=author>Author:</label>
<input type="text" name="author" value="">
<br><br>
<label for=country>Country:</label>
<input type="text" name="country" value="">
<br><br>
<label for=genre>Genre</label>
<input type="text" name="genre" value="">
<br><br>
<label for=pages>Number of Pages:</label>
<input type="number" name="pages" value="">
<br><br>
<label for=publishedYear>Year of Publication:</label>
<input type="number" name="publishedYear" value="">
<br><br>
<label for=price>Price in USD:</label>
<input type="number" step="0.01" name="price" value="">
<br><br>
<label for=isbn>ISBN:</label>
<input type="text" name="isbn" value="">
<br><br>

<input type="image" class="btn btn-success" src=resources/addbook.svg style="height: 45px; width: 45px; position: relative; top: -42px; left: 435px; 
border-radius: 30px 0px 30px 0px">

</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>