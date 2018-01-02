<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>           
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>
<form method="post" modelAttribute="resource" action="/SpringMVCHibernateCRUDExample/addResource">
<table>
		<tr>
			<th colspan="2">Add Country</th>
		</tr>
		<tr>
		<hidden path="id" />
          <td><label path="requestingPractice">Requesting Practice:</label></td>
          <td><input path="requestingPractice" size="30" maxlength="30"></input></td>
        </tr>
		<tr>
			    <td><label path="lineOfBusiness">Business Line</label></td>
          <td><input path="lineOfBusiness" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="resourceInitiatedDate">resource Initiated Date</label></td>
          <td><input path="resourceInitiatedDate" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="resourceRequiredDate">resource Required Date</label></td>
          <td><input path="resourceRequiredDate" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="resourceApprovedDate">Resource Approved Date</label></td>
          <td><input path="resourceApprovedDate" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="requestRaisedBy">Request Raised By</label></td>
          <td><input path="requestRaisedBy" size="30" maxlength="30"></input></td>
		</tr>
		<tr>
			    <td><label path="exp">Years of Experience</label></td>
          <td><input path="exp" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="numPosition">No. of positions to be hired</label></td>
          <td><input path="numPosition" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="ctc">CTC offer range</label></td>
          <td><input path="ctc" size="30" maxlength="30"></input></td>
		</tr>
		
		<tr>
			    <td><label path="lineOfBusiness">Business Line</label></td>
          <td><input path="lineOfBusiness" size="30" maxlength="30"></input></td>
		</tr>
		
		
		<tr>
			    <td><label path="lineOfBusiness">Business Line</label></td>
          <td><input path="lineOfBusiness" size="30" maxlength="30"></input></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				class="blue-button" /></td>
		</tr>
	</table> 
</form>
</br>
</body>
</html>
