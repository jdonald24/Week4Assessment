<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Celsius to Fahrenheit</title>
<script>
function checkForm(form){
	if(form.celsius.value == ""){
		alert("Error: The text box is empty.");
		form.celsius.focus();
		return false;
	}
	var re = /^-{0,1}\d*\.{0,1}\d+$/;
	if (!re.test(form.celsius.value)){
		alert("Error: text box contains invalid characters");
		form.celsius.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<form action ="cToFServlet" method = "post" onsubmit ="return checkForm(this);">
Enter the Celsius amount you want to convert to Fahrenheit.
<input type ="text" name ="celsius" size = "10">
<input type = "submit" value = "submit" /></form>
</body>
</html>