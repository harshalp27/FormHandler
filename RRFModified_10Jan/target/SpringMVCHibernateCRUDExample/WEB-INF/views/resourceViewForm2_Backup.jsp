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
	<table align="center" border="1" cellpadding="10" cellspacing="0"
		width="78%" height="100px">
		<tr>
			<td rowspan="2" width="20%"><img src="images/yash.jpg"></td>
			<th>YASH TECHNOLOGIES</th>
			<th width="40%"></th>
		</tr>
		<tr>
			<th>Recruitment Requisition Form</th>
			<th>YASH-TAC-001-T001</th>

		</tr>

	</table>
	<h3>Recruitment Requisition Form</h3>
	<form method="POST" name="success" modelAttribute="resources"
		action="/SpringMVCHibernateCRUDExample/success">

		<table align="center" cellpadding="10">

			<!----- Requesting Practice ------------------->
			<td>Requesting Practice:</td>
			<td>${resources.requestingPractice}</td>
			<td>Line of Business<br> Augmentation_BG4_BU9:
			</td>
			<td>${resources.businessAugmentation}</td>
			</tr>

			<!----- Resource initiated date ----------------->
			<tr>
				<td>Resource initiated date:</td>
				<td>${resources.resourceInitiatedDate}</td>
				<td>Resource required date:</td>
				<td>${resources.resourceRequiredDate}</td>
			</tr>

			<!----- Resource Approved by -------------->
			<tr>
				<td>Resource Approved by:</td>
				<td>${resources.resourceApprovedDate}</td>
				</td>
				<td>No. of positions to be hired:</td>
				<td>${resources.numPosition}</td>
			</tr>

			<!-------- Req ID (by Recruiter) ------->
			<tr>
				<td>Requisition ID (by Recruiter):</td>
				<td>${resources.reqId}</td>
				<td>CTC offer range:</td>
				<td>${resources.ctc}</td>
			</tr>

			<!-------- Years of Experience -------------->
			<tr>
				<td>Years of Experience:</td>
				<td>${resources.exp}</td>
				<td>Designation & Grade:</td>
				<td>${resources.designation}</td>
			</tr>
			<!-------- Work Location -------------->
			<tr>
				<td>Work Location:</td>
				<td>${resources.location}</td>
				<td>Request raised by:</td>
				<td>${resources.requestRaisedBy}</td>
				</td>
			</tr>

			<!-------- Primary Skill ------------>
			<tr>
				<td>Primary Skill:<br /> <br /> <br /> <br /> <br /> <br />
					<br /> <br /></td>
				<td>${resources.skillSet.primarySkill}</td>
				</textarea>
				</td>
			</tr>

			<!-----	--- Desirable Skills --------------->
			<tr>

				<td>Desirable Skills:<br /> <br /> <br /> <br /> <br /> <br /></td>
				<td>${resources.skillSet.desirableSkill}</td>

				</textarea>
				</td>

			</tr>

			<!-----	--- Planned Roles and Responsibilities ----------->

			<tr>
				<td>Planned Roles and Responsibilities:<br /> <br /> <br />
					<br /> <br /> <br /> <br /> <br /></td>
				<td>${resources.rolesAndResponsibilities}</td>
				</textarea>
				</td>
			</tr>

			<!-------- Target companies ------------->
			<tr>
				<td>Target companies :</td>
				<td>${resources.interviewDetails.targetCompany}</td>
			</tr>

			<!-------- Career Growth Plan  ----------->
			<tr>
				<td>Career Growth Plan:</td>
				<td>${resources.interviewDetails.growthPlan}</td>
			</tr>
			<!-------- Key scanners  ----------->
			<tr>
				<td>Key scanners:</td>
				<td>${resources.interviewDetails.keyScanners}</td>
			</tr>
			<tr>

				<td><h4>Key Interviewers:</h4></td>
			</tr>
			<tr>
				<td>1st Round :</td>
				<td>${resources.interviewDetails.firstInterview}</td>
			</tr>
			<tr>
				<td>2nd Round :</td>
				<td>${resources.interviewDetails.secondInterview}</td>
			</tr>
			<!-----	--- Additional comments, if any --------------->
			<tr>

				<td>Additional comments, if any:<br /> <br /> <br /> <br />
					<br /> <br /></td>
				<td>${resources.interviewDetails.comments}</td>
        </textarea></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btnLogin" name="download" value="download" tabindex="5"></td>

			</tr>

		</table>

	</form>

</body>
</html>