package com.eduask.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eduask.bean.ClassInfo;
import com.eduask.servlet.StuServlet;
import com.eduask.biz.ClassBiz;
import com.eduask.biz.impl.ClassBizImpl;
import com.eduask.biz.impl.StuBizImpl;

public class ClassServlet extends HttpServlet {
	private StuBizImpl sbi = new StuBizImpl();
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClassBiz cb=new ClassBizImpl();
		String name=new String(request.getParameter("name").getBytes("iso-8859-1"));
		Map<String,Object> map=new HashMap<String,Object>();
		if(name!=null&&name!=""){
	        map.put("graName", name.substring(0, 2));
	        map.put("className", name.substring(2, 4));
		}else{
			map.put("graName", null);
	        map.put("className", null);
		}
	    List<ClassInfo> list=cb.findAll(map);
	    request.setAttribute("KEY", list);
	    request.getRequestDispatcher("class.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}
    public void updateStustate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
    public void findById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int stuId = Integer.parseInt(request.getParameter("stuId"));
		request.setAttribute("STUINFO", sbi.findById(stuId));
		request.getRequestDispatcher("classUpdate.jsp").forward(request, response);
	}
    

}
