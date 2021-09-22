<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fahrenheit and Celsius Converter</title>
</head>
<body>
	<form action="chooseConversionServlet" method = "post">
	Enter f to convert from Fahrenheit to Celsius or c to convert from Celsius to Fahrenheit.
	<input type="text" name="userChoice" size = "10">
	<input type = "submit" value="submit"/>
	</form>
</body>
</html>