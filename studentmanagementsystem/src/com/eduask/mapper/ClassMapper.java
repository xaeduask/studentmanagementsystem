package com.eduask.mapper;

import java.util.List;
import java.util.Map;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;

public interface ClassMapper {
	//��ѯ�꼶���༶��ѧ�� 
	public List<ClassInfo> findAll(Map<String,Object> map);	
	//����ѧ�����ڵİ༶
	public void update(StuInfo si);
	public void updateStustate(int stuId);
}
