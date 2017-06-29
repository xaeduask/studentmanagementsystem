package com.eduask.biz.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eduask.bean.StuInfo;
import com.eduask.biz.StuBiz;
import com.eduask.db.GetSession;
import com.eduask.mapper.StuMapper;

public class StuBizImpl implements StuBiz {
	private SqlSession session = GetSession.getSession();
    private StuMapper sm = session.getMapper(StuMapper.class);
	@Override
	public List<StuInfo> findAll() {
		return sm.findAll();
	}
	@Override
	public StuInfo findById(int stuId) {
		return sm.findById(stuId);
	}

	@Override
	public List<StuInfo> findBy(int page) {
		int pageOne = ((page-1)*12);
		return sm.findBy(pageOne);
	}

	@Override
	public void add(StuInfo si) {
		sm.add(si);
		session.commit();
	}

	@Override
	public void update(StuInfo si) {
		sm.update(si);
		session.commit();
	}

	@Override
	public void delete(int stuId) {
		sm.delete(stuId);
		session.commit();
	}
	@Override
	public List<StuInfo> search(StuInfo si) {
		return sm.search(si);
	}
	@Override
	public int getCount() {
		return sm.getCount();
	}
	
	public int getPage(){
		int page = 0;
		int count = getCount();
		page = (count%12==0)?(count/12):(count/12+1);
		return page;
	}
}
