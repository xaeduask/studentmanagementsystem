package com.eduask.mapper;

import java.util.Set;

import com.eduask.bean.ScoInfo;



public interface ScoMapper {
	/**
	 * ʵ�ֳɼ�������Ϣ��ȫ����ѯ
	 * @return
	 */
	public Set<ScoInfo> findAll();
	
	/**
	 * ʵ�ֳɼ�������
	 * @return
	 */
	//public void addSco(ScoInfo si);
}
