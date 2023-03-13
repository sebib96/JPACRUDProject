<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Search: Author</title>
<link rel="stylesheet" href="resources/styles.css">
<link rel="icon" type="image/x-icon" href="resources/bookico.svg">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body><div id="homeimg">
<a class="btn btn-dark" href="home.do" role="button" id=homeButton style="position: relative; top: 15px; left: 15px; background: #D3D3D3">
<img src="resources/homebtn.svg" 
style="height: 35px; width: 35px;"></a>
<br>
<br>

<c:choose>
	<c:when test="${empty books}">No Books Found</c:when>
	<c:otherwise>
		<c:forEach var="book" items="${books}">
			<li style="list-style: none;">ID: ${book.id}<br>Title: ${book.title}</li>
			<img class="coverall" src="${book.coverUrl}">
			<br>
			<p style="width: 200px; display: table;">
		</c:forEach>
	</c:otherwise>


</c:choose>

</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>