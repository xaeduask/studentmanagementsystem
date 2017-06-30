package com.eduask.biz.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;
import com.eduask.biz.ClassBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.ClassMapper;

public class ClassBizImpl implements ClassBiz {
	public SqlSession session=GetSession.getSession();
    public ClassMapper cm=session.getMapper(ClassMapper.class);
	public List<ClassInfo> findAll(Map<String,Object> map) {		
		return cm.findAll(map);
	}
	public void update(StuInfo si){
		cm.update(si);
		session.commit();
	}
	public void delete(int stuId){
		cm.delete(stuId);
		session.commit();		
	}
	public StuInfo findById(int stuId){
		return cm.findById(stuId);
	}
	public List<ClassInfo> findall(){
		return cm.findall();
	}
}
