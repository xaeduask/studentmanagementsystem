<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>    
    <title>学生更改班级界面</title>
  </head>
  
  <body>
    <form action="class?method=update&stuId=${STUKEY.stuId}" method="post">
     <input type="number" value="${STUKEY.classId}" name="classId" />
     <input type="submit" value="更改"/>
    </form>
  </body>
</html>
