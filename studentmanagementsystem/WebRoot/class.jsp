<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>班级查询页面</title>
    
    <script>
       function deletestu(stuId){
           if(confirm("删除后将无法恢复，确定删除么？")){
               location.href="class?method=delete&stuId="+stuId;
           }
       }
       function update(stuId,classId){
           if(confirm("确定要调整班级么？")){
               location.href="class?method=findById&stuId="+stuId+"&classId="+classId;
           }
       }
    </script>
  </head>
  <c:if test="${empty KEY}">
    <c:redirect url="class?method=findall">
    </c:redirect>
  </c:if>
  <body>
    <form action="class?method=findAll" method="post">
    <input type="text" name="name"/>
    <input type="submit" value="查询"/>
    </form>
    
    <c:forEach var="ci" items="${KEY}" >
                     班级名称:${ci.getGraInfo().getGraName()}${ci.className}
        &nbsp;&nbsp;&nbsp;&nbsp;
                     班主任老师:${ci.getTeainfo().getTeaName()} <br/>        
         <c:forEach var="si" items="${ci.getStuSet()}" varStatus="k">
            ${k.count}: ${si.stuName }
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="javascript:update(${si.stuId},${ci.classId})">班级调整</a>
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="javascript:deletestu(${si.stuId})">开除</a>
            <br/>
         </c:forEach>
    </c:forEach>
  </body>
</html>
