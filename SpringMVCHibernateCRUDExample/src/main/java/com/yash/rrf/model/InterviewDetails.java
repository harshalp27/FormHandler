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

	private int interviewDetailsId;
	private String targetCompany;
	private String growthPlan;	
	private String keyScanners;
	private String firstInterview;
	private String secondInterview;
	private String comments;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "INTERVIEW_DETAILS_ID")
	public int getInterviewDetailsId() {
		return interviewDetailsId;
	}

	public void setInterviewDetailsId(int interviewDetailsId) {
		this.interviewDetailsId = interviewDetailsId;
	}
	
	@Column(name = "TARGET_COMPANY" )
	public String getTargetCompany() {
		return targetCompany;
	}

	public void setTargetCompany(String targetCompany) {
		this.targetCompany = targetCompany;
	}
	
	@Column(name = "GROWTH_PLAN" )
	public String getGrowthPlan() {
		return growthPlan;
	}

	public void setGrowthPlan(String growthPlan) {
		this.growthPlan = growthPlan;
	}

	@Column(name = "KEY_SCANNERS")
	public String getKeyScanners() {
		return keyScanners;
	}

	public void setKeyScanners(String keyScanners) {
		this.keyScanners = keyScanners;
	}

	@Column(name = "F_INTERVIEW")
	public String getFirstInterview() {
		return firstInterview;
	}

	public void setFirstInterview(String firstInterview) {
		this.firstInterview = firstInterview;
	}

	@Column(name = "S_INTERVIEW")
	public String getSecondInterview() {
		return secondInterview;
	}

	public void setSecondInterview(String secondInterview) {
		this.secondInterview = secondInterview;
	}

	@Column(name = "COMMENTS")
	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
}
