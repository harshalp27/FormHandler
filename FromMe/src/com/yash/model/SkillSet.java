package com.yash.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SKILL_SET")
public class SkillSet {

	
	private int skillSetId;
	private int primarySkill;
	private int desirableSkill;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "SKILL_SET_ID")
	public int getSkillSetId() {
		return skillSetId;
	}
	
	public void setSkillSetId(int skillSetId) {
		this.skillSetId = skillSetId;
	}
	@Column(name = "PRIMARY_SKILL", nullable = false, length=512)
	public int getPrimarySkill() {
		return primarySkill;
	}
	
	public void setPrimarySkill(int primarySkill) {
		this.primarySkill = primarySkill;
	}
	
	@Column(name = "SECONDARY_SKILL", nullable = false, length=512)
	public int getDesirableSkill() {
		return desirableSkill;
	}
	public void setDesirableSkill(int desirableSkill) {
		this.desirableSkill = desirableSkill;
	}
	
}
