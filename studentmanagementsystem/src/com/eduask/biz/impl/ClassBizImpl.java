package com.eduask.biz.impl;

import java.util.List;
import java.util.Map;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;
import com.eduask.biz.ClassBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.ClassMapper;

public class ClassBizImpl implements ClassBiz {
    public ClassMapper cm=GetSession.getSession().getMapper(ClassMapper.class);
	public List<ClassInfo> findAll(Map<String,Object> map) {		
		return cm.findAll(map);
	}
	public void update(int si){
		cm.update(si);
	}
	public void updateStustate(StuInfo stuId){
		cm.updateStustate(stuId);
	}
}
