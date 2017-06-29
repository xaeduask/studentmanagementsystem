package com.eduask.mapper;

import java.util.List;
import java.util.Map;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;

public interface ClassMapper {
	//查询年级，班级的学生 
	public List<ClassInfo> findAll(Map<String,Object> map);	
	//更改学生所在的班级
	public void update(StuInfo si);
	public void updateStustate(int stuId);
}
