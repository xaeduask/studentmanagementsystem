<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>

  </head>
  
  <body> 
    <div>
      <img src="${IMG }" width="150" height="200"/>
    </div>
    <br/><br/>
    <form action="#" method="post" enctype="multipart/form-data">
      <input type="file" name="file"/>
      <input type="submit" value="�ϴ�"/>
    </form>
    ${ERROR }
    <br/><br/>
    <a href="../StuServlet?method=findByNoOne&stuNo=${ѧ��id }">�ύ</a>
  </body>
</html>
