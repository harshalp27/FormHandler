<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Recruitment Requisition Form</title>
<style type="text/css">
h3 {
	font-family: Calibri;
	font-size: 22pt;
	font-style: normal;
	font-weight: bold;
	color: SlateBlue;
	text-align: center;
	text-decoration: underline
}

table {
	font-family: Calibri;
	color: white;
	font-size: 11pt;
	font-style: normal;
	text-align:;
	background-color: #eff3f6;
	color: #000;
	border-collapse:;
	border: 2px solid navy
}

table.inner {
	border: 0px
}

.btnLogin {
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 15px;
	background: #a1d8f0;
	background: -moz-linear-gradient(top, #badff3, #7acbed);
	background: -webkit-gradient(linear, center top, center bottom, from(#badff3),
		to(#7acbed));
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorStr='#badff3',
		EndColorStr='#7acbed')";
	border: 1px solid #7db0cc !important;
	cursor: pointer;
	padding: 11px 16px;
	font: bold 11px/14px Verdana, Tahomma, Geneva;
	text-shadow: rgba(0, 0, 0, 0.2) 0 1px 0px;
	color: #fff;
	-moz-box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px,
		rgba(0, 0, 0, 0.1) 0 1px 1px;
	-webkit-box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px,
		rgba(0, 0, 0, 0.1) 0 1px 1px;
	box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px, rgba(0, 0, 0, 0.1)
		0 1px 1px;
	margin-center: 12px;
	float: center;
	padding: 7px 21px;
}

.btnLogin:hover, .btnLogin:focus, .btnLogin:active {
	background: #a1d8f0;
	background: -moz-linear-gradient(top, #7acbed, #badff3);
	background: -webkit-gradient(linear, center top, center bottom, from(#7acbed),
		to(#badff3));
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorStr='#7acbed',
		EndColorStr='#badff3')";
}

.btnLogin:active {
	text-shadow: rgba(0, 0, 0, 0.3) 0 -1px 0px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

	<h3>Recruitment Requisition Form</h3>
	<h3>Resource List</h3>
	<c:if test="${!empty listOfResources}">
		<table class="tg">
			<tr>
				<th width="80">Req Id</th>
				<th width="120">Requesting Practice</th>
				<th width="120">Line of Business Augmentation_BG4_BU9</th>
			</tr>
			<c:forEach items="${listOfResources}" var="resources">
				<tr>
					<td>${resources.reqId}</td>
					<td>${resources.requestingPractice}</td>
					<td>${resources.lineOfBusiness}</td>
					<td><a href="<c:url value='/updateResource/${resources.reqId}' />">Edit</a></td>
					<td><a href="<c:url value='/deleteResource/${resources.reqId}' />">Delete</a></td>
					<td><a href="<c:url value='/viewResource/${resources.reqId}' />">view</a></td>
					
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>