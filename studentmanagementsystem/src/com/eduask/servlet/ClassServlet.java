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
import com.eduask.bean.StuInfo;
import com.eduask.biz.ClassBiz;
import com.eduask.biz.impl.ClassBizImpl;

public class ClassServlet extends HttpServlet {
	ClassBiz cb=new ClassBizImpl();
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
		request.setCharacterEncoding("gbk");
		String method=request.getParameter("method");
		if("findAll".equalsIgnoreCase(method)){
			findAll(request,response);
		}
		if("update".equalsIgnoreCase(method)){
			update(request,response);
		}        		
	}    
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {		
		request.setCharacterEncoding("gbk");
		String method=request.getParameter("method");
		if("findById".equalsIgnoreCase(method)){
			findById(request,response);
		}
		if("findall".equalsIgnoreCase(method)){
			findall(request,response);
		}
		if("delete".equalsIgnoreCase(method)){
			System.out.println("abx");
			delete(request,response);
		}
	}
	public void findAll(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
    	String name=request.getParameter("name");
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
	public void findById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ClassBiz cb=new ClassBizImpl();
		int stuId =Integer.parseInt(request.getParameter("stuId"));
		int classId=Integer.parseInt(request.getParameter("classId"));
		StuInfo si=cb.findById(stuId);
		request.setAttribute("STUKEY", si);
		request.getRequestDispatcher("classUpdate.jsp").forward(request, response);
	}
	public void findall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		List<ClassInfo> list=cb.findall();
	    request.setAttribute("KEY", list);
	    request.getRequestDispatcher("class.jsp").forward(request, response);
	}
	public void update(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int stuId=Integer.parseInt(request.getParameter("stuId"));
		int classId=Integer.parseInt(request.getParameter("classId"));
		StuInfo si=new StuInfo(stuId,classId);
		cb.update(si);
		request.getRequestDispatcher("class.jsp").forward(request, response);
	}
    public void delete(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
    	int stuId=Integer.parseInt(request.getParameter("stuId"));
    	System.out.println(stuId);
    	cb.delete(stuId); 
    	request.getRequestDispatcher("class.jsp").forward(request, response);
	}
    
    

}
