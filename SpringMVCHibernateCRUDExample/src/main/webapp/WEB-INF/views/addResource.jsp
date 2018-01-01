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
<form:form method="post" modelAttribute="Resource" action="/SpringMVCHibernateCRUDExample/addResource">
<table>
		<tr>
			<th colspan="2">Add Country</th>
		</tr>
		<tr>
		<form:hidden path="id" />
          <td><form:label path="requestingPractice">Requesting Practice:</form:label></td>
          <td><form:input path="requestingPractice" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
			    <td><form:label path="lineOfBusiness">Business Line</form:label></td>
          <td><form:input path="lineOfBusiness" size="30" maxlength="30"></form:input></td>
		</tr>
		
		<tr>
			    <td><form:label path="resourceInitiatedDate">Resource initiated date</form:label></td>
          <td><form:input path="resourceInitiatedDate" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="resourceRequiredDate">Resource required date</form:label></td>
          <td><form:input path="resourceRequiredDate" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="resourceApprovedDate">Resource Approved by</form:label></td>
          <td><form:input path="resourceApprovedDate" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="numPosition">No. of positions to be hired</form:label></td>
          <td><form:input path="numPosition" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="reqId">Req ID </form:label></td>
          <td><form:input path="reqId" size="30" maxlength="30"></form:input></td>
		</tr>
		
		<tr>
			    <td><form:label path="ctc">CTC offer range </form:label></td>
          <td><form:input path="ctc" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="exp">Years of Experience </form:label></td>
          <td><form:input path="exp" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="reqId">Req ID </form:label></td>
          <td><form:input path="reqId" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			    <td><form:label path="reqId">Req ID </form:label></td>
          <td><form:input path="reqId" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				class="blue-button" /></td>
		</tr>
	</table> 
</form:form>
</br>
</body>
</html>
