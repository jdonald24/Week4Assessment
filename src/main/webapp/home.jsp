<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fahrenheit and Celsius Converter</title>
<script>
function checkForm(form){
	if(form.userChoice.value == ""){
		alert("Error: The text box is empty.");
		form.userChoice.focus();
		return false;
	}
	var re = /^[\w ]+$/;
	if(!re.test(form.userChoice.value)){
		alert("Error: text box contains invalid characters.");
		form.userChoice.focus();
		return false;
	}
	if(form.userChoice.value != "c" && form.userChoice.value != "f"){
		alert("Error: text box contains invalid characters.");
		form.userChoice.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
	<form action="chooseConversionServlet" method = "post" onsubmit="return checkForm(this);">
	Enter f to convert from Fahrenheit to Celsius or c to convert from Celsius to Fahrenheit.
	<input type="text" name="userChoice" size = "10">
	<input type = "submit" value="submit"/>
	</form>
</body>
</html>