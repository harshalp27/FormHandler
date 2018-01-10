package com.yash.rrf.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SKILL_SET")
public class SkillSet {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "SKILL_SET_ID")
	private int skillSetId;
	
	@Column(name = "PRIMARY_SKILL" ,length=512)
	private String primarySkill;
	
	@Column(name = "SECONDARY_SKILL",length=512)
	private String desirableSkill;
	
	
	
	public int getSkillSetId() {
		return skillSetId;
	}
	
	public void setSkillSetId(int skillSetId) {
		this.skillSetId = skillSetId;
	}
	
	public String getPrimarySkill() {
		return primarySkill;
	}
	
	public void setPrimarySkill(String primarySkill) {
		this.primarySkill = primarySkill;
	}
	
	
	public String getDesirableSkill() {
		return desirableSkill;
	}
	public void setDesirableSkill(String desirableSkill) {
		this.desirableSkill = desirableSkill;
	}

	@Override
	public String toString() {
		return "SkillSet [skillSetId=" + skillSetId + ", primarySkill=" + primarySkill + ", desirableSkill="
				+ desirableSkill + "]";
	}
	
}
