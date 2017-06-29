package com.eduask.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.eduask.bean.ClassInfo;
import com.eduask.bean.StuInfo;
import com.eduask.biz.ClassBiz;
import com.eduask.biz.impl.ClassBizImpl;

public class ClassTest {
	
	public static void main(String[] args) {
		/*ClassInfo ci=new ClassInfo();*/
		ClassBiz cb=new ClassBizImpl();
		/*Map<String,Object> map=new HashMap<String,Object>();
		String str="¸ß¶þÒ»°à";
		if(str!=null&&str!=""){
			map.put("graName", str.substring(0, 2));
		    map.put("className", str.substring(2, 4));
			
		}else{
			map.put("graName", null);
			map.put("className", null);
		}
		List<ClassInfo> list=cb.findAll(map);
		for(ClassInfo ci:list){
			System.out.println(ci.getClassName()+"\t"+ci.getGraInfo().getGraName()+"\t"+ci.getTeainfo().getTeaName());
			for(StuInfo si:ci.getStuSet()){
				System.out.println(si.getStuName());
			}
		}*/
		Integer stuId=2;
		Integer classId=2;
		StuInfo si=new StuInfo();
		si.setClassId(classId);
		si.setStuId(stuId);
		cb.update(si);
		
		
		/*int  stuId=2;
		cb.updateStustate(stuId);*/
		
		
	}

}
