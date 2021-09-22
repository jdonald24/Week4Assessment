<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p> ${converter.getCelsius()} degrees Celsius is equal to ${converter.getFahrenheit()} degrees Fahrenheit.
<p>
<a href = " home.jsp">Convert another temperature.</a>
</body>
</html>