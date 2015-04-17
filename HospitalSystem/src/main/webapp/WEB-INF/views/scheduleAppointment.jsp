<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule Appointment</title>
</head>
<body>
	<form:form method="post" action="processAppointment" commandName="app">
 <form:errors path="*" element="div" cssClass="commonerrorblock"/>
 	<table>
 		<tr>
 		<td><b>Available Appointments</b></td>
 		</tr>
		<tr>
			<td><b> Choose a Day</b></td>
		 	<td>
 				<form:radiobuttons items="${dayList}" path="day"></form:radiobuttons>
 			</td>
 		</tr>
 		<tr>
 			<td><b>Choose a Time</b></td>
 			<td>
 				<form:radiobuttons items="${appointmentList}" path="Appointment"></form:radiobuttons>
 			</td>

 			<td>
 				<form:errors path="Appointment" cssClass="error"/>
 			</td>
 			</tr>
 			<tr>
 				<td></td><td><input type="submit"></td>
 			</tr>
 	</table>
 </form:form>
</body>
</html>