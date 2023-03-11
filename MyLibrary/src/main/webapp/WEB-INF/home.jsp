<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/styles.css">
<meta charset="UTF-8">
<title>My Library</title>
<h1>My Books</h1>

<c:choose>
<c:when test="${empty books}">No Books Found</c:when>
<c:otherwise>
<c:forEach var = "book" items="${books}">
<li>${book.id} ${book.title}</li>
<img class="cover" src="${book.coverUrl}" >

</c:forEach>
</c:otherwise>


</c:choose>
</head>
<body>


</body>
</html>