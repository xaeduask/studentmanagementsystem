<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>�༶��ѯҳ��</title>
    
    <script>
       function deletestu(stuId){
           if(confirm("ɾ�����޷��ָ���ȷ��ɾ��ô��")){
               location.href="class?method=delete&stuId="+stuId;
           }
       }
       function update(stuId,classId){
           if(confirm("ȷ��Ҫ�����༶ô��")){
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
    <input type="submit" value="��ѯ"/>
    </form>
    
    <c:forEach var="ci" items="${KEY}" >
                     �༶����:${ci.getGraInfo().getGraName()}${ci.className}
        &nbsp;&nbsp;&nbsp;&nbsp;
                     ��������ʦ:${ci.getTeainfo().getTeaName()} <br/>        
         <c:forEach var="si" items="${ci.getStuSet()}" varStatus="k">
            ${k.count}: ${si.stuName }
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="javascript:update(${si.stuId},${ci.classId})">�༶����</a>
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="javascript:deletestu(${si.stuId})">����</a>
            <br/>
         </c:forEach>
    </c:forEach>
  </body>
</html>
