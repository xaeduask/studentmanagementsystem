<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>��ʦ��ѯҳ��</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="jar/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("tr:first").css("backgroundColor", "#09F");
		$("tr:first").css("color", "white");
		$("tr:odd:not(tr:first)").css("backgroundColor", "");
		$("tr:even:not(tr:first)").css("backgroundColor", "#CCC");
	});

	function deleteId(teaId) {
		if (confirm("ȷ��Ҫɾ��ô")) {
			location.href = "TeaServlet?method=delete&teaId=" + teaId;
		}
	}
</script>
</head>
<c:if test="${empty TEAINFO }">
	<c:redirect url="TeaServlet">
		<c:param name="method" value="findAll"></c:param>
		<c:param name="page" value="1"></c:param>
	</c:redirect>
</c:if>
<body>
	<table class="table table-striped" align="center">
		<caption>
			<form action="TeaServlet" method="post">
				<input type="text" name="str"
					class="TEXT button-glow button-border button-rounded button-primary"
					style="width: 320px;" /> 
					<input type="hidden" name="method" value="search" /> 
					<input type="hidden" name="page" value="1" /> 
					<input type="submit" value="����һ��"
					class="button button-glow button-border button-rounded button-primary" />
			</form>
			<a href="teaReg.jsp"><b>ע�����û�</b> </a>
		</caption>
		<tr>
			<th>���</th>
			<th>�˺�</th>
			<th>����</th>
			<th>�Ա�</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>�绰</th>
			<th>ѧ��</th>
			<th>��Ŀ</th>
			<th>��ɫ</th>
			<th>����</th>
		</tr>
		<c:forEach var="ti" items="${TEAINFO }" varStatus="t">
			<tr>
				<td>${t.count }</td>
				<td>${ti.teaNum }</td>
				<td>${ti.teaName }</td>
				<td>${ti.teaSex }</td>
				<td>${ti.teaOri }</td>
				<td>${ti.teaNat }</td>
				<td>${ti.teaAge }</td>
				<td>${ti.teaPhone }</td>
				<td>${ti.teaEdu }</td>
				<td>${ti.subInfo.subName }</td>
				<td>${ti.roleInfo.roleName }</td>
				<td><a href="javascript:deleteId(${ti.teaId })">ɾ��</a> <a
					href="TeaServlet?method=findById&teaId=${ti.teaId }">�޸�</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="12" align="right">
				<c:forEach var="i" begin="1" end="${PAGE }" step="1">
					<c:choose>
						<c:when test="${param.page==i }">
							${i }&nbsp;
						</c:when>
						<c:otherwise>
							<a href="TeaServlet?method=findAll&page=${i }">${i }</a>&nbsp;
						</c:otherwise>
					</c:choose>	
				</c:forEach>
			</td>
		</tr>
	</table>
</body>
</html>
