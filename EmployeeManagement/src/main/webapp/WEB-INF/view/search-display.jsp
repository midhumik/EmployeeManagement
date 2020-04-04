<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<style type="text/css">
body {
	background-color: #F3EBF6;
}

.tab {
	background-color: #FFFFFF;
	border-spacing: 10px;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	font-family: 'Ubuntu', sans-serif;
}
.head1 {
	 font-family: 'Ubuntu', sans-serif;	
	 text-align: center;
	 margin: 50px 0px -80px 0px;
}

.table {
	margin: 150px 20px 20px 60px;
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

	<div id="header">
		<h2 class="head1">Employee Details</h2>
	</div>

	<div class="table">
		<table class="tab">

			<tr>
				<th>Employee ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Contact No</th>
				<th>Email</th>
				<th>Age</th>
				<th>Manager ID</th>
				<th>Business Unit</th>
				<th>Job Title</th>
				<th>Salary</th>
				<th>Date Of Joining</th>
			</tr>

			<c:forEach var="emp" items="${emplist}">
				<tr>
					<td>${emp.employee_id}</td>
					<td>${emp.first_name }</td>
					<td>${emp.last_name }</td>
					<td>${emp.gender}</td>
					<td>${emp.contact_no }</td>
					<td>${emp.email }</td>
					<td>${emp.age }</td>
					<td>${emp.manager_id}</td>
					<td>${emp.business_unit }</td>
					<td>${emp.job_title }</td>
					<td>${emp.salary}</td>
					<td>${emp.date_of_joining }</td>
				</tr>
			</c:forEach>

		</table>
	</div>
	<div>
		<input type="button" value="Goto List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" />
	</div>
</body>
</html>