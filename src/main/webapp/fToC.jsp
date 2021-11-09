<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fahrenheit to Celsius</title>
<script>
function checkForm(form){
	if(form.fahrenheit.value == ""){
		alert("Error: The text box is empty.");
		form.fahrenheit.focus();
		return false;
	}
	var re = /^-{0,1}\d*\.{0,1}\d+$/;
	if (!re.test(form.fahrenheit.value)){
		alert("Error: text box contains invalid characters");
		form.fahrenheit.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<form action ="fToCServlet" method = "post" onsubmit="return checkForm(this);">
Enter the Fahrenheit amount you want to convert to Celsius.
<input type ="text" name ="fahrenheit" size = "10">
<input type = "submit" value = "submit" /></form>
</body>
</html>