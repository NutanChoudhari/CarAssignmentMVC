<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
<c:out value="${heading}"/>

<a href="/addcar">ADD CAR</a>
<a href="cars/all">ALL CARS</a>
<a href="cars/onsale">CARS ON SALE</a>

</h1>

</body>
</html>