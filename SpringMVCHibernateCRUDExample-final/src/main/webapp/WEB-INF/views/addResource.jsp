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
	<form method="post" name="success" modelAttribute="resource"
		action="/SpringMVCHibernateCRUDExample/success">

		<table align="center" cellpadding="10">

			<!----- Requesting Practice ------------------->
			<td>Requesting Practice:</td>
			<td><input type="text" name="requestingPractice" required />
			<td>Line of Business<br> Augmentation_BG4_BU9:
			</td>
			<td><input type="text" name="businessAugmentation" required />
			</td>
			</tr>

			<!----- Resource initiated date ----------------->
			<tr>
				<td>Resource initiated date:</td>
				<td><input type="text" name="resourceInitiatedDate" required />
				<td>Resource required date:</td>
				<td><input type="text" name="resourceRequiredDate" required />
			</tr>

			<!----- Resource Approved by -------------->
			<tr>
				<td>Resource Approved by:</td>
				<td><input type="text" name="resourceApprovedDate" required />
				</td>
				<td>No. of positions to be hired:</td>
				<td><input type="text" name="numPosition" required />
			</tr>

			<!-------- Req ID (by Recruiter) ------->
			<tr>
				<td>Requisition ID (by Recruiter):</td>
				<td><input type="text" name="reqId" required /></td>
				<td>CTC offer range:</td>
				<td><input type="text" name="ctc" required /></td>
			</tr>

			<!-------- Years of Experience -------------->
			<tr>
				<td>Years of Experience:</td>
				<td><input type="text" name="exp" required /></td>
				<td>Designation & Grade:</td>
				<td><input type="text" name="designation" required /></td>
			</tr>
			<!-------- Work Location -------------->
			<tr>
				<td>Work Location:</td>
				<td><input type="text" name="location" required />
				<td>Request raised by:</td>
				<td><input type="text" name="requestRaisedBy" required /></td>
				</td>
			</tr>

			<!-------- Primary Skill ------------>
			<tr>
				<td>Primary Skill:<br /> <br /> <br /> <br /> <br /> <br />
					<br /> <br /></td>
				<td><textarea name="skillSet.primarySkill" rows="10" cols="60"
						required>
        </textarea></td>
			</tr>

			<!-----	--- Desirable Skills --------------->
			<tr>

				<td>Desirable Skills:<br /> <br /> <br /> <br /> <br /> <br /></td>
				<td><textarea name="skillSet.desirableSkill" rows="7" cols="60"
						required>
        </textarea></td>

			</tr>

			<!-----	--- Planned Roles and Responsibilities ----------->

			<tr>
				<td>Planned Roles and Responsibilities:<br /> <br /> <br />
					<br /> <br /> <br /> <br /> <br /></td>
				<td><textarea name="rolesAndResponsibilities" rows="10"
						cols="60" required>
        </textarea></td>
			</tr>

			<!-------- Target companies ------------->
			<tr>
				<td>Target companies :</td>
				<td><input type="text" name="interviewDetails.targetCompany"
					required /></td>
			</tr>

			<!-------- Career Growth Plan  ----------->
			<tr>
				<td>Career Growth Plan:</td>
				<td><input type="text" name="interviewDetails.growthPlan"
					required /></td>
			</tr>
			<!-------- Key scanners  ----------->
			<tr>
				<td>Key scanners:</td>
				<td><input type="text" name="interviewDetails.keyScanners"
					required /></td>
			</tr>
			<tr>

				<td><h4>Key Interviewers:</h4></td>
			</tr>
			<tr>
				<td>1st Round :</td>
				<td><input type="text" name="interviewDetails.firstInterview"
					required />
			</tr>
			<tr>
				<td>2nd Round :</td>
				<td><input type="text" name="interviewDetails.secondInterview"
					required /></td>
			</tr>
			<!-----	--- Additional comments, if any --------------->
			<tr>

				<td>Additional comments, if any:<br /> <br /> <br /> <br />
					<br /> <br /></td>
				<td><textarea name="interviewDetails.comments" rows="7"
						cols="60" required>
        </textarea></td>
			</tr>

			<!----- Submit and Reset ------>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btnLogin" name="success" value="Submit" tabindex="4">
					<input type="reset" class="btnLogin" value="Reset"></td>

			</tr>
		</table>

	</form>

</body>
</html>