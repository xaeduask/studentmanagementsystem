<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>班级查询页面</title>
  </head>
  
  <body>
    <form action="class" method="post">
    <input type="text" name="name"/>
    <input type="submit" value="查询"/>
    </form>
    <c:forEach var="ci" items="${KEY}" varStatus="k">
        ${k.count}&nbsp;&nbsp;&nbsp;&nbsp; ${ci.className}&nbsp;&nbsp;&nbsp;&nbsp;
        ${ci.getGraInfo().getGraName()} &nbsp;&nbsp;&nbsp;&nbsp;${ci.getTeainfo().getTeaName()} <br/>
                  <c:forEach var="si" items="${ci.getStuSet() }">
                    ${si.stuName }<br/>
                  </c:forEach>
    </c:forEach>
  </body>
</html>
