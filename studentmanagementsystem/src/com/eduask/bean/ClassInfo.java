package com.eduask.bean;

import java.util.Set;

public class ClassInfo {
	
	
	private Integer classId;
	private String className;
	/**
	 * �༶���꼶 ���һ
	 */
	private GraInfo graInfo;
		
		/**
		 * �༶�԰����� һ��һ
		 */
	private TeaInfo teainfo;
	
	/**
	 * �༶��ѧ�� һ�Զ�
	 */
	private Set<StuInfo> stuSet;
	/**
	 * �༶ �� ��Ŀ һ�Զ� 
	 */
	private Set<SubInfo> subSet; 
	/**
	 * �༶������ʦ(��ʦ) һ�Զ� (һ����ʦ�̺ü�����) 
	 * �������ѯһ���༶�м�����ʦ�����ò���
	 */
	private Set<ClassInfo>  classSet;
	

	public ClassInfo() {
			
	}


	public ClassInfo(Integer classId, String className, GraInfo graInfo,
			TeaInfo teainfo, Set<StuInfo> stuSet, Set<SubInfo> subSet,
			Set<ClassInfo> classSet) {
		super();
		this.classId = classId;
		this.className = className;
		this.graInfo = graInfo;
		this.teainfo = teainfo;
		this.stuSet = stuSet;
		this.subSet = subSet;
		this.classSet = classSet;
	}


	public Integer getClassId() {
		return classId;
	}


	public void setClassId(Integer classId) {
		this.classId = classId;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public GraInfo getGraInfo() {
		return graInfo;
	}


	public void setGraInfo(GraInfo graInfo) {
		this.graInfo = graInfo;
	}


	public TeaInfo getTeainfo() {
		return teainfo;
	}


	public void setTeainfo(TeaInfo teainfo) {
		this.teainfo = teainfo;
	}


	public Set<StuInfo> getStuSet() {
		return stuSet;
	}


	public void setStuSet(Set<StuInfo> stuSet) {
		this.stuSet = stuSet;
	}


	public Set<SubInfo> getSubSet() {
		return subSet;
	}


	public void setSubSet(Set<SubInfo> subSet) {
		this.subSet = subSet;
	}


	public Set<ClassInfo> getClassSet() {
		return classSet;
	}


	public void setClassSet(Set<ClassInfo> classSet) {
		this.classSet = classSet;
	}
	

	
	
	

}
