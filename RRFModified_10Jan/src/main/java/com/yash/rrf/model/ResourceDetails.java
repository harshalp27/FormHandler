package com.yash.rrf.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "RESOURCE_DETAILS")
public class ResourceDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "REQ_ID")
	private int reqId;
	
	@Column(name = "REQUEST_PRACTICE" )
	private String requestingPractice;
	
	@Column(name = "LINE_OF_BUSINESS")
	private String lineOfBusiness;
	
	@Column(name = "REQUEST_INITIATED_DATE")
	private String resourceInitiatedDate;
	
	
	@Column(name = "REQUEST_REQUIRED_DATE" )
	private String resourceRequiredDate;
	
	
	
	@Column(name = "REQUEST_APROVED_DATE")
	private String resourceApprovedDate;
	
	
	@Column(name = "REQUEST_RAISED_BY")
	private String requestRaisedBy;
	
	
	@Column(name = "EXP")
	private String exp;
	
	
	@Column(name = "WORK_LOCATION")
	private String location;	
	
	
	@Column(name = "NUM_POSITIONS")
	private int numPosition;
	
	
	@Column(name = "CTC")
	private int ctc;
	
	
	@Column(name = "DESIGNATION")
	private String designation;
	
	
	@Column(name = "ROLES_RESPONSIBILITIES")
	private String rolesAndResponsibilities;
	
	
	@OneToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name="skillSetId")
	private SkillSet skillSet;
	
	@OneToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name="interviewDetailsId")
	private InterviewDetails interviewDetails;
	
	
	public int getReqId() {
		return reqId;
	}
	
	public void setReqId(int reqId) {
		this.reqId = reqId;
	}
	
	
	public String getRequestingPractice() {
		return requestingPractice;
	}
	
	public void setRequestingPractice(String requestingPractice) {
		this.requestingPractice = requestingPractice;
	}
	
	
	
	public String getLineOfBusiness() {
		return lineOfBusiness;
	}

	public void setLineOfBusiness(String lineOfBusiness) {
		this.lineOfBusiness = lineOfBusiness;
	}

	public String getResourceInitiatedDate() {
		return resourceInitiatedDate;
	}
	
	public void setResourceInitiatedDate(String resourceInitiatedDate) {
		this.resourceInitiatedDate = resourceInitiatedDate;
	}
	
	
	public String getResourceRequiredDate() {
		return resourceRequiredDate;
	}

	public void setResourceRequiredDate(String resourceRequiredDate) {
		this.resourceRequiredDate = resourceRequiredDate;
	}
	
	
	public String getResourceApprovedDate() {
		return resourceApprovedDate;
	}
	
	
	public void setResourceApprovedDate(String resourceApprovedDate) {
		this.resourceApprovedDate = resourceApprovedDate;
	}
	
	
	public String getRequestRaisedBy() {
		return requestRaisedBy;
	}
	
	public void setRequestRaisedBy(String requestRaisedBy) {
		this.requestRaisedBy = requestRaisedBy;
	}
	
	
	public String getExp() {
		return exp;
	}
	
	public void setExp(String exp) {
		this.exp = exp;
	}
	
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	
	public int getNumPosition() {
		return numPosition;
	}
	
	public void setNumPosition(int numPosition) {
		this.numPosition = numPosition;
	}
	
	
	public int getCtc() {
		return ctc;
	}
	
	public void setCtc(int ctc) {
		this.ctc = ctc;
	}
	
	
	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	public String getRolesAndResponsibilities() {
		return rolesAndResponsibilities;
	}

	public void setRolesAndResponsibilities(String rolesAndResponsibilities) {
		this.rolesAndResponsibilities = rolesAndResponsibilities;
	}

	
	public SkillSet getSkillSet() {
		return skillSet;
	}

	public void setSkillSet(SkillSet skillSet) {
		this.skillSet = skillSet;
	}

	
	public InterviewDetails getInterviewDetails() {
		return interviewDetails;
	}

	public void setInterviewDetails(InterviewDetails interviewDetails) {
		this.interviewDetails = interviewDetails;
	}

	@Override
	public String toString() {
		return "ResourceDetails [reqId=" + reqId + ", requestingPractice=" + requestingPractice + ", lineOfBusiness="
				+ lineOfBusiness + ", resourceInitiatedDate=" + resourceInitiatedDate + ", resourceRequiredDate="
				+ resourceRequiredDate + ", resourceApprovedDate=" + resourceApprovedDate + ", requestRaisedBy="
				+ requestRaisedBy + ", exp=" + exp + ", location=" + location + ", numPosition=" + numPosition
				+ ", ctc=" + ctc + ", designation=" + designation + ", rolesAndResponsibilities="
				+ rolesAndResponsibilities + ", skillSet=" + skillSet + ", interviewDetails=" + interviewDetails + "]";
	}
	
	
	
	
	
	
}
