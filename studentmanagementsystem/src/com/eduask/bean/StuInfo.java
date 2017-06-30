package com.eduask.bean;

import java.util.Set;

/*FieldTypeComment
 stuId		int(11) NOT NULL
 stuNum		int(11) NULL
 stuPass		varchar(20) NULL
 stuName		varchar(20) NULL
 stuSex		char(3) NULL
 stuOri		varchar(50) NULL
 stuNat		varchar(20) NULL
 stuAge		int(11) NULL
 stuPhone	varchar(20) NULL
 classId		int(11) NULL
 stuState	int(11) NULL*/
public class StuInfo {
	private Integer stuId;
	private Integer stuNum;
	private String stuPass;
	private String stuName;
	private String stuSex;
	private String stuOri;
	private String stuNat;
	private Integer stuAge;
	private String stuPhone;
	private Integer classId;
	/**
	 * ѧ���԰༶ ���һ
	 */
	private ClassInfo classInfo;
	private Integer stuState;
	/**
	 * ѧ���Գɼ� һ�Զ�
	 */
	private Set<ScoInfo> scoSet;

	public StuInfo() {

	}

	public StuInfo(String str) {
		stuName = str;
		stuOri = str;
	}
	
	public StuInfo(Integer stuId, Integer classId) {
		super();
		this.stuId = stuId;
		this.classId = classId;
	}

	public StuInfo(Integer stuId, Integer stuNum, String stuPass,
			String stuName, String stuSex, String stuOri, String stuNat,
			Integer stuAge, String stuPhone, ClassInfo classInfo,
			Integer stuState, Set<ScoInfo> scoSet) {

		this.stuId = stuId;
		this.stuNum = stuNum;
		this.stuPass = stuPass;
		this.stuName = stuName;
		this.stuSex = stuSex;
		this.stuOri = stuOri;
		this.stuNat = stuNat;
		this.stuAge = stuAge;
		this.stuPhone = stuPhone;
		this.classInfo = classInfo;
		this.stuState = stuState;
		this.scoSet = scoSet;
	}

	public Integer getClassId() {
		return classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public Integer getStuId() {
		return stuId;
	}

	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}

	public Integer getStuNum() {
		return stuNum;
	}

	public void setStuNum(Integer stuNum) {
		this.stuNum = stuNum;
	}

	public String getStuPass() {
		return stuPass;
	}

	public void setStuPass(String stuPass) {
		this.stuPass = stuPass;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuSex() {
		return stuSex;
	}

	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}

	public String getStuOri() {
		return stuOri;
	}

	public void setStuOri(String stuOri) {
		this.stuOri = stuOri;
	}

	public String getStuNat() {
		return stuNat;
	}

	public void setStuNat(String stuNat) {
		this.stuNat = stuNat;
	}

	public Integer getStuAge() {
		return stuAge;
	}

	public void setStuAge(Integer stuAge) {
		this.stuAge = stuAge;
	}

	public String getStuPhone() {
		return stuPhone;
	}

	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}

	public ClassInfo getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}

	public Integer getStuState() {
		return stuState;
	}

	public void setStuState(Integer stuState) {
		this.stuState = stuState;
	}

	public Set<ScoInfo> getScoSet() {
		return scoSet;
	}

	public void setScoSet(Set<ScoInfo> scoSet) {
		this.scoSet = scoSet;
	}


	
}
