<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Your Car Here</title>
</head>
<body>
<p>Row Added :</p><c:out value="${rowAdded}"/>
<form:form method="post" action="addcar" >
	<form:label path="model">Car model</form:label>
	<form:input path="model"/>
	
	<form:label path="manufractureYear">Manufactured Year</form:label>
	<form:input path="manufractureYear"/>
	
	<form:label path="travelKilometers">k/m Travelled</form:label>
	<form:input path="travelKilometers"/>
	
	<form:label path="status">Status</form:label>
	<form:select path="status" items="${groups}"/>
	
	<form:label path="ownerName">Owner of Car</form:label>
	<form:input path="ownerName"/>
	
	<form:label path="ownerNumber">Contact</form:label>
	<form:input path="ownerNumber"/>
	<input type="submit" value="Add"/> 
</form:form>
</body>
</html>