package com.eduask.biz;

import java.util.List;
import java.util.Map;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;

public interface ClassBiz {
	public List<ClassInfo> findAll(Map<String,Object> map);	
	public void update(StuInfo si);
	public void updateStustate(int stuId);

}
