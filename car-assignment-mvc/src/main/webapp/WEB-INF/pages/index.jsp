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
<h1 style="text-align:center;color:red">
<c:out value="${heading}"/>
</h1>
<h2 style="text-align:center">
<p><a href="/addcar">ADD CAR</a></p>
<p><a href="cars/all">ALL CARS</a></p>
<p><a href="cars/onsale">CARS ON SALE</a></p>
<p><a href="cars/showByBrand">VIEW SPECIFIC CARS</a></p>
</h2>


</body>
</html>