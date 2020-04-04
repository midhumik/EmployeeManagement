<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error!</title>
<style>
body {
	background-color: #F3EBF6;
}

.add-button {
	border: 1px solid #666;
	padding: 4px;
	font-size: 12px;
	font-weight: bold;
	width: 116px;
	padding: 5px 10px;
	font-family: 'Ubuntu', sans-serif;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	margin-bottom: 15px;
	background: #d9d3db;
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #9C27B0, #E040FB);
}
</style>
</head>
<body>

	<h3 align="center">Sorry! Username or Password Incorrect</h3>
	<br>
	<br>
	<br>
	<label > <input type="button" value="Go Back"
		onclick="window.location.href = 'goback'; return false;"
		class="add-button goback" />
	</label>

</body>
</html>