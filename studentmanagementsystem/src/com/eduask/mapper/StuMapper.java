package com.eduask.mapper;

import java.util.List;

import com.eduask.bean.StuInfo;

public interface StuMapper {
	public List<StuInfo> findAll();
	
	public List<StuInfo> findBy(int page);

	public StuInfo findById(int stuId);

	public void add(StuInfo si);

	public void update(StuInfo si);

	public void delete(int stuId);
	
	public List<StuInfo> search(StuInfo si);
	
	public int getCount();

}
