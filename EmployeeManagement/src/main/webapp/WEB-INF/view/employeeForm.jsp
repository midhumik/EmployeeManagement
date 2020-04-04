<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<style type="text/css">
.error {
	color: red;
}

body {
	background-color: #F3EBF6;
	font-family: 'Ubuntu', sans-serif;
	font-size: 14px;
}

table {
	background: white;
	border-radius: 1.5em;
	padding: 55px;
	position: absolute;
	top: 20%;
	left: 32%;
	width: 37%;
}

form input{
	border-radius: 5px;
}
.button {
	border: none;
	padding: 4px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 15px 15px;
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
.heading{
	 text-align:center;
	 color: #8C55AA
}
</style>

</head>
<body>
<h1 class="heading">Add Employee Details</h1>
	<form:form action="saveEmployee" modelAttribute="employee"
		method="POST">
		<div style="  background-color: #F3EBF6;height:25px;">
	<input type="button" value="Employee List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1100px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
		
		</div>
		
		<table>
			<tbody>
				<tr>
					<td><label>Employee Id:</label></td>
					<td><form:input path="employee_id" />
					<form:errors path="employee_id" cssClass="error"></form:errors>
					</td>
					</tr>
					<tr>
					<td><label>First Name:</label></td>
					<td><form:input path="first_name" />
					<form:errors path="first_name" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Last Name:</label></td>
					<td><form:input path="last_name" />
					<form:errors path="last_name" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Gender:</label></td>
					<td><form:radiobutton path="gender" value="Male" />Male<br/>
					<form:radiobutton path="gender" value="Female" />Female
					<form:errors path="gender" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Contact No:</label></td>
					<td><form:input path="contact_no" />
					<form:errors path="contact_no" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Email:</label></td>
					<td><form:input path="email" />
					<form:errors path="email" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Age:</label></td>
					<td><form:input path="age" />
					<form:errors path="age" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Manager Id:</label></td>
					<td><form:input path="manager_id" />
					<form:errors path="manager_id" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Business Unit:</label></td>
					<td><form:input path="business_unit" />
					<form:errors path="business_unit" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Job Title:</label></td>
					<td><form:input path="job_title" />
					<form:errors path="job_title" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td><label>Salary</label></td>
					<td><form:input path="salary" />
					<form:errors path="salary" cssClass="error"></form:errors>
					</td>
				</tr>
				<tr>
					<td>Date of Joining:</td>
					<td><form:input type="date" path="date_of_joining" /> 
					<form:errors path="date_of_joining" cssClass="error"/></td>
				</tr>
				<tr>
				
				<td ><input type = "submit" value = "Save" class = "button" /></td>
					<td ><input type="reset" value="Reset" class="button" /></td>
			</tr>
				
				
			</tbody>
		</table>
	</form:form>
	
</body>
</html>