package com.yash.rrf.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "INTERVIEW_DETAILS")
public class InterviewDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "INTERVIEW_DETAILS_ID")
	private int interviewDetailsId;
	
	@Column(name = "TARGET_COMPANY" )
	private String targetCompany;
	
	@Column(name = "GROWTH_PLAN" )
	private String growthPlan;	
	
	@Column(name = "KEY_SCANNERS")
	private String keyScanners;
	
	@Column(name = "F_INTERVIEW")
	private String firstInterview;
	
	@Column(name = "S_INTERVIEW")
	private String secondInterview;
	
	@Column(name = "COMMENTS")
	private String comments;
	
	
	public int getInterviewDetailsId() {
		return interviewDetailsId;
	}

	public void setInterviewDetailsId(int interviewDetailsId) {
		this.interviewDetailsId = interviewDetailsId;
	}
	
	
	public String getTargetCompany() {
		return targetCompany;
	}

	public void setTargetCompany(String targetCompany) {
		this.targetCompany = targetCompany;
	}
	
	
	public String getGrowthPlan() {
		return growthPlan;
	}

	public void setGrowthPlan(String growthPlan) {
		this.growthPlan = growthPlan;
	}

	
	public String getKeyScanners() {
		return keyScanners;
	}

	public void setKeyScanners(String keyScanners) {
		this.keyScanners = keyScanners;
	}

	
	public String getFirstInterview() {
		return firstInterview;
	}

	public void setFirstInterview(String firstInterview) {
		this.firstInterview = firstInterview;
	}

	
	public String getSecondInterview() {
		return secondInterview;
	}

	public void setSecondInterview(String secondInterview) {
		this.secondInterview = secondInterview;
	}

	
	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "InterviewDetails [interviewDetailsId=" + interviewDetailsId + ", targetCompany=" + targetCompany
				+ ", growthPlan=" + growthPlan + ", keyScanners=" + keyScanners + ", firstInterview=" + firstInterview
				+ ", secondInterview=" + secondInterview + ", comments=" + comments + "]";
	}
	
}
