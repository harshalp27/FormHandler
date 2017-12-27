<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Recruitment Requistion Form</title>
	</head>
	<body>
		<h2>Add Employee Data</h2>
		<form:form method="POST" action="/sdnext/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="reqId">REQ ID:</form:label></td>
			        <td><form:input path="reqId" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="requestingPractice">Requesting Practice:</form:label></td>
			        <td><form:input path="requestingPractice"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="lineOfBusiness">Line of Business:</form:label></td>
			        <td><form:input path="lineOfBusiness"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="resourceInitiatedDate">Resource initiated date:</form:label></td>
			        <td><form:input path="resourceInitiatedDate"/></td>
			    </tr>
			    
			    <tr>
			        <td><form:label path="resourceRequiredDate">Resource required date:</form:label></td>
                    <td><form:input path="resourceRequiredDate" /></td>
			    </tr>
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
	</body>
</html>