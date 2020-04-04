<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h1 class="head1" align="center">EMPLOYEE LIST</h1>
		</div>
	</div>
	
	<div class="div1" style="  ">
	<form method="post" action="search">
		<input type="number" name="id" placeholder="Search by employee id"  class="searchbar">
		<button type="submit" class="add-button">Search</button>
	
		<input type="button" value="Add Employee" onclick="window.location.href='showFormForAdd';return false;"
		       class="add-button"/>
		<input type="button" value="Logout"
			   onclick="window.location.href = 'logout'; return false;"
		       class="add-button" />
	</form>
	</div>
	<br>
	
	
<div class="table">
	<table class="tab">

	
	<tr>
			<th>EMP ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>EMAIL ID</th>
			<th>CONTACT NUMBER</th>
			<th>GENDER</th>
			<th>AGE</th>
			<th>MANAGER ID</th>
			<th>BUSINESS UNIT</th>
			<th>JOB TITLE</th>
			<th>SALARY</th>
			<th>DATE OF JOINING</th>
			<th>ACTION</th>
		</tr>
	
	<c:forEach var = "emp" items = "${employee}" >
	
	<c:url var="updateLink" value="/employee/updateEmployee">
	 <c:param name="employee_id" value="${emp.employee_id}"/>
	 </c:url>
	 <c:url var="deleteLink" value="/employee/deleteEmployee">
	 <c:param name="employee_id" value="${emp.employee_id }"/>
	 </c:url>
	<tr>
	<td>${emp.employee_id}</td>
	<td>${emp.first_name }</td>
	<td>${emp.last_name }</td>
	<td>${emp.email }</td>
	<td>${emp.contact_no }</td>
	<td>${emp.gender}</td>
	<td>${emp.age }</td>
	<td>${emp.manager_id}</td>
	<td>${emp.business_unit }</td>
	<td>${emp.job_title }</td>
	<td>${emp.salary}</td>
	<td>${emp.date_of_joining }</td>
	<td><input type="button" value="Update"
		onclick="window.location.href ='${updateLink}'; return false;"
		class="new-button" /><br>
		<input type="button" value="Delete" onclick="window.location.href ='${deleteLink}'; return false;"
		class="new-button" />
	</tr>
	</c:forEach>
	
	</table>
</div>	
</body>
</html>