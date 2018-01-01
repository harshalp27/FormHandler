package com.yash.rrf.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "RESOURCE_DETAILS")
public class ResourceDetails {

	
	private int reqId;
	private String requestingPractice;
	private String lineOfBusiness;
	private String resourceInitiatedDate;
	private String resourceRequiredDate;
	private String resourceApprovedDate;
	private String requestRaisedBy;
	private String exp;
	private String location;	
	private int numPosition;
	private int ctc;
	private int designation;
	private String rolesAndResponsibilities;
	
	private SkillSet skillSet;
	private InterviewDetails interviewDetails;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "REQ_ID")
	public int getReqId() {
		return reqId;
	}
	
	public void setReqId(int reqId) {
		this.reqId = reqId;
	}
	
	@Column(name = "REQUEST_PRACTICE" )
	public String getRequestingPractice() {
		return requestingPractice;
	}
	
	public void setRequestingPractice(String requestingPractice) {
		this.requestingPractice = requestingPractice;
	}
	
	@Column(name = "LINE_OF_BUSINESS")
	public String lineOfBusiness() {
		return lineOfBusiness;
	}
	
	public void setBusinessAugmentation(String lineOfBusiness) {
		this.lineOfBusiness = lineOfBusiness;
	}
	
	@Column(name = "REQUEST_INITIATED_DATE")
	public String getResourceInitiatedDate() {
		return resourceInitiatedDate;
	}
	
	public void setResourceInitiatedDate(String resourceInitiatedDate) {
		this.resourceInitiatedDate = resourceInitiatedDate;
	}
	
	@Column(name = "REQUEST_REQUIRED_DATE" )
	public String getResourceRequiredDate() {
		return resourceRequiredDate;
	}

	public void setResourceRequiredDate(String resourceRequiredDate) {
		this.resourceRequiredDate = resourceRequiredDate;
	}
	
	@Column(name = "REQUEST_APROVED_DATE")
	public String getResourceApprovedDate() {
		return resourceApprovedDate;
	}
	
	
	public void setResourceApprovedDate(String resourceApprovedDate) {
		this.resourceApprovedDate = resourceApprovedDate;
	}
	
	@Column(name = "REQUEST_RAISED_BY")
	public String getRequestRaisedBy() {
		return requestRaisedBy;
	}
	
	public void setRequestRaisedBy(String requestRaisedBy) {
		this.requestRaisedBy = requestRaisedBy;
	}
	
	@Column(name = "EXP")
	public String getExp() {
		return exp;
	}
	
	public void setExp(String exp) {
		this.exp = exp;
	}
	
	@Column(name = "WORK_LOCATION")
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	@Column(name = "NUM_POSITIONS")
	public int getNumPosition() {
		return numPosition;
	}
	
	public void setNumPosition(int numPosition) {
		this.numPosition = numPosition;
	}
	
	@Column(name = "CTC")
	public int getCtc() {
		return ctc;
	}
	
	public void setCtc(int ctc) {
		this.ctc = ctc;
	}
	
	@Column(name = "DESIGNATION")
	public int getDesignation() {
		return designation;
	}

	public void setDesignation(int designation) {
		this.designation = designation;
	}
	
	public String getRolesAndResponsibilities() {
		return rolesAndResponsibilities;
	}

	public void setRolesAndResponsibilities(String rolesAndResponsibilities) {
		this.rolesAndResponsibilities = rolesAndResponsibilities;
	}

	@OneToOne(cascade = CascadeType.ALL)
	public SkillSet getSkillSet() {
		return skillSet;
	}

	public void setSkillSet(SkillSet skillSet) {
		this.skillSet = skillSet;
	}

	@OneToOne(cascade = CascadeType.ALL)
	public InterviewDetails getInterviewDetails() {
		return interviewDetails;
	}

	public void setInterviewDetails(InterviewDetails interviewDetails) {
		this.interviewDetails = interviewDetails;
	}
	
	
	
	
	
	
}
