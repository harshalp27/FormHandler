<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>  
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>  
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
	<c:if test="${!empty command}">
		<table  align="center" cellpadding="10">
			<tr>
				<td>Requesting Practice:</td><td>${command.reqId}</td>
				<td>Line of Business<br> Augmentation_BG4_BU9:</td><td>${command.lineOfBusiness}</td>
			</tr>
			<!----- Resource initiated date ----------------->
			<tr>
				<td>Resource initiated date:</td><td>${command.resourceInitiatedDate}</td>
				<td>Resource required date:</td><td>${command.resourceRequiredDate}</td>
				
			</tr>

			<!----- Resource Approved by -------------->
			<tr>
				<td>Resource Approved by:</td><td>${command.resourceApprovedDate}</td>
				<td>No. of positions to be hired:</td><td>${command.numPosition}</td>
			</tr>

			<!-------- Req ID (by Recruiter) ------->
			<tr>
				<td>Requisition ID (by Recruiter):</td><td>${command.reqId}</td>
				<td>CTC offer range:</td><td>${command.ctc}</td>
			</tr>

			<!-------- Years of Experience -------------->
			<tr>
				<td>Years of Experience:</td><td>${command.exp}</td>
				<td>Designation & Grade:</td><td>${command.designation}</td>
			</tr>
			<!-------- Work Location -------------->
			<tr>
				<td>Work Location:</td><td>${command.location}</td>
				<td>Request raised by:</td><td>${command.requestRaisedBy}</td>
				</td>
			</tr>

			<!-------- Primary Skill ------------>
			<tr>
				<td>Primary Skill:<br /> <br /> <br /> <br /> <br /> <br />
					<br /> <br /></td><td>${command.skillSet.primarySkill}</td>
			<!-----	--- Desirable Skills --------------->
			<tr>

				<td>Desirable Skills:<br /> <br /> <br /> <br /> <br /> <br /></td><td>${command.requestRaisedBy}</td>

			</tr>

			<!-----	--- Planned Roles and Responsibilities ----------->

			<tr>
				<td>Planned Roles and Responsibilities:<br /> <br /> <br />
					<br /> <br /> <br /> <br /> <br /></td><td>${command.rolesAndResponsibilities}</td>
				<td><textarea name="rolesAndResponsibilities" rows="10"
						cols="60" required>
        </textarea></td>
			</tr>

			<!-------- Target companies ------------->
			<tr>
				<td>Target companies :</td><td>${command.interviewDetails.targetCompany}</td>
				
			</tr>

			<!-------- Career Growth Plan  ----------->
			<tr>
				<td>Career Growth Plan:</td><td>${command.interviewDetails.growthPlan}</td>
		
			</tr>
			<!-------- Key scanners  ----------->
			<tr>
				<td>Key scanners:</td><td>${command.interviewDetails.keyScanners}</td>
			</tr>
			<tr>

				<td><h4>Key Interviewers:</h4></td>
			</tr>
			<tr>
				<td>1st Round :</td><td>${command.interviewDetails.firstInterview}</td>
			
			</tr>
			<tr>
				<td>2nd Round :</td><td>${command.interviewDetails.secondInterview}</td>
				<td><input type="text" name="interviewDetails.secondInterview"
					required /></td>
			</tr>
			<!-----	--- Additional comments, if any --------------->
			<tr>

				<td>Additional comments, if any:<br /> <br /> <br /> <br />
					<br /> <br /></td><td>${command.interviewDetails.comments}</td>
			
        </textarea></td>
			</tr>

			<input type="button" class="btnLogin" id="create_pdf" value="Generate PDF">
		</table>
	</c:if>
	<script>  
    (function () {  
        var  
         form = $('.form'),  
         cache_width = form.width(),  
         a4 = [680, 1000]; // for a4 size paper width and height  
  
        $('#create_pdf').on('click', function () {  
            $('body').scrollTop(0);  
            createPDF();  
        });  
        //create pdf  
        function createPDF() {  
            getCanvas().then(function (canvas) {  
                var  
                 img = canvas.toDataURL("image/png"),  
                 doc = new jsPDF({  
                     unit: 'px',  
                     format: 'a4'  
                 });  
                doc.addImage(img, 'JPEG', 20, 20);  
                doc.save('Bhavdip-html-to-pdf.pdf');  
                form.width(cache_width);  
            });  
        }  
  
        // create canvas object  
        function getCanvas() {  
            form.width((a4[0] * 1.13333) - 80).css('max-width', 'none');  
            return html2canvas(form, {  
                //imageTimeout: 2000,  
                removeContainer: true  
            });  
        }  
  
    }());  
</script>  
<script>  
    /* 
 * jQuery helper plugin for examples and tests 
 */  
    (function ($) {  
        $.fn.html2canvas = function (options) {  
            var date = new Date(),  
            $message = null,  
            timeoutTimer = false,  
            timer = date.getTime();  
            html2canvas.logging = options && options.logging;  
            html2canvas.Preload(this[0], $.extend({  
                complete: function (images) {  
                    var queue = html2canvas.Parse(this[0], images, options),  
                    $canvas = $(html2canvas.Renderer(queue, options)),  
                    finishTime = new Date();  
  
                    $canvas.css({ position: 'absolute', left: 0, top: 0 }).appendTo(document.body);  
                    $canvas.siblings().toggle();  
  
                    $(window).click(function () {  
                        if (!$canvas.is(':visible')) {  
                            $canvas.toggle().siblings().toggle();  
                            throwMessage("Canvas Render visible");  
                        } else {  
                            $canvas.siblings().toggle();  
                            $canvas.toggle();  
                            throwMessage("Canvas Render hidden");  
                        }  
                    });  
                    throwMessage('Screenshot created in ' + ((finishTime.getTime() - timer) / 1000) + " seconds<br />", 4000);  
                }  
            }, options));  
  
            function throwMessage(msg, duration) {  
                window.clearTimeout(timeoutTimer);  
                timeoutTimer = window.setTimeout(function () {  
                    $message.fadeOut(function () {  
                        $message.remove();  
                    });  
                }, duration || 2000);  
                if ($message)  
                    $message.remove();  
                $message = $('<div ></div>').html(msg).css({  
                    margin: 0,  
                    padding: 10,  
                    background: "#000",  
                    opacity: 0.7,  
                    position: "fixed",  
                    top: 10,  
                    right: 10,  
                    fontFamily: 'Tahoma',  
                    color: '#fff',  
                    fontSize: 12,  
                    borderRadius: 12,  
                    width: 'auto',  
                    height: 'auto',  
                    textAlign: 'center',  
                    textDecoration: 'none'  
                }).hide().fadeIn().appendTo('body');  
            }  
        };  
    })(jQuery);  
  
</script>  
</body>
</html>