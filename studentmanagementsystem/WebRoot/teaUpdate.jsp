<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
<head>

<title>��ʦע��ҳ��</title>
<script>
    var a1 = false;
	var a2 = false;
	var a3 = false;
	var a4 = false;
	var a6 = false;
	var a7 = false;
	var a8 = false;
	var a9 = false;
    function checkaccount(){
		var name = document.getElementById("t1").value;
		var nn = /^[0-9]{4}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l1").innerHTML = "<font color='green' size='-1'>�˺���ȷ</font>";
			a1 = true;
			}
		else{
			document.getElementById("l1").innerHTML = "<font color='red' size='-2'>�˺Ŵ���</font>";
			a1 = false;
			}
		}
	
	function password1(){
		var name1 = document.getElementById("t2").value;
		var nn = /^[a-zA-Z0-9]{8,16}$/;
		var ee = nn.test(name1);
		if(ee){
			document.getElementById("l2").innerHTML = "<font color='green' size='-1'>�������ʹ��</font>";
			a2 = true;
			}
		else{
			document.getElementById("l2").innerHTML = "<font color='red' size='-2'>���������Сд��ĸ�����ֵ���ϣ�����ʹ�������ַ���������8-16֮��</font>";
			a2 = false;
			}
		}
		
	function password2(){
		var name1 = document.getElementById("t2").value;
		var name2 = document.getElementById("t3").value;
		if(name1==name2){
			document.getElementById("l3").innerHTML = "<font color='green' size='-1'>����һ��</font>";
			a3 = true;
			}
		else{
			document.getElementById("l3").innerHTML = "<font color='red' size='-2'>���벻һ��</font>";
			a3 = false;
			}
		}
		
	function checkname(){
		var name = document.getElementById("t4").value;
		var nn = /^[\u4e00-\u9fa5]{2,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l4").innerHTML = "<font color='green' size='-1'>��������ʹ��</font>";
			a4 = true;
			}
		else{
			document.getElementById("l4").innerHTML = "<font color='red' size='-2'>����������ʹ��</font>";
			a4 = false;
			}
		}
	
	function checktel(){
		var name = document.getElementById("t6").value;
		var nn = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l6").innerHTML = "<font color='green' size='-1'>�ֻ�������ȷ</font>";
			a6 = true;
			}
		else{
			document.getElementById("l6").innerHTML = "<font color='red' size='-2'>�ֻ��������</font>";
			a6 = false;
			}
		}
		
	function checksub(){
		var name = document.getElementById("t7").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l7").innerHTML = "<font color='green' size='-1'>��Ŀ�����ȷ</font>";
			a7 = true;
			}
		else{
			document.getElementById("l7").innerHTML = "<font color='red' size='-2'>��Ŀ��Ŵ���</font>";
			a7 = false;
			}
		}
		
	function checkrole(){
		var name = document.getElementById("t9").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l9").innerHTML = "<font color='green' size='-1'>��ɫ�����ȷ</font>";
			a9 = true;
			}
		else{
			document.getElementById("l9").innerHTML = "<font color='red' size='-2'>��ɫ��Ŵ���</font>";
			a9 = false;
			}
		}

    function checkage(){
		var name = document.getElementById("t8").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l8").innerHTML = "<font color='green' size='-1'>������ȷ</font>";
			a8 = true;
			}
		else{
			document.getElementById("l8").innerHTML = "<font color='red' size='-2'>�������</font>";
			a8 = false;
			}
		}
		
	function check(){
		if(a1&&a2&&a3&&a4&&a6&&a7&&a8&&a9){
			return true;
			}
		else{
			return false;
			}
		}
</script>
<style type="text/css">
table {
	width: 60%;
	margin: auto;
	border: 1px solid #09F;
}

th,td {
	border: 1px solid #09F;
}
</style>
</head>

<body>
<body bgcolor="#FFFFFF">
	<form action="TeaServlet" method="post">
		<table>
			<thead>
				<tr>
					<th bgcolor="#0099FF" colspan="2"><font color="#FFFFFF"
						size="+3" face="΢���ź�"><b>��ʦ�޸�</b> </font></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td width="35%"><b>�˺ţ�</b></td>
					<td width="65%"><input type="text" name="teaNum" required
						value=${TEAINFO.teaNum } id="t1" onBlur="checkaccount()" /><label
						id="l1">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>�Ա�</b></td>
					<td><input type="radio" name="teaSex" value="��" ${TEAINFO.teaSex=="��"?"checked":"" } />�� 
					<input type="radio" name="teaSex" value="Ů" ${TEAINFO.teaSex=="Ů"?"checked":"" } />Ů</td>
				</tr>
				<tr>
					<td><b>���루����8λ����</b><br /> <font size="-3">���������룬���ִ�Сд��</font>
					</td>
					<td><input type="password" name="teaPass" required
						value=${TEAINFO.teaPass } id="t2" onBlur="password1()" /><label id="l2">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>ȷ�����루����8λ����</b><br /> <font size="-3">��������һ�����롣</font>
					</td>
					<td><input type="password" name="teaPass" required
						value=${TEAINFO.teaPass } id="t3" onBlur="password2()" /><label
						id="l3">&nbsp;</label></td>
				</tr>
				<tr>
					<td><b>��ʵ������</b></td>
					<td><input type="text" name="teaName" required
						value=${TEAINFO.teaName } id="t4" onBlur="checkname()" /><label
						id="l4">&nbsp;</label></td>
				</tr>
				<tr>
					<td><b>���䣺</b></td>
					<td><input type="text" name="teaAge" required
						value=${TEAINFO.teaAge } id="t8" onBlur="checkage()" /><label id="l8">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>������</b></td>
					<td><select name="teaOri">
							<option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="���ɹ�" ${TEAINFO.teaOri=="���ɹ�"?"selected":"" }/>���ɹ�
                    <option value="������" ${TEAINFO.teaOri=="������"?"selected":"" }/>������
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="ɽ��" ${TEAINFO.teaOri=="ɽ��"?"selected":"" }/>ɽ��
                    <option value="�ӱ�" ${TEAINFO.teaOri=="�ӱ�"?"selected":"" }/>�ӱ�
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="���� " ${TEAINFO.teaOri=="���� "?"selected":"" }/>���� 
                    <option value="�ຣ " ${TEAINFO.teaOri=="�ຣ"?"selected":"" }/>�ຣ
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="�½�" ${TEAINFO.teaOri=="�½�"?"selected":"" }/>�½�
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="�Ĵ�" ${TEAINFO.teaOri=="�Ĵ�"?"selected":"" }/>�Ĵ�
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="ɽ��" ${TEAINFO.teaOri=="ɽ��"?"selected":"" }/>ɽ��
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaOri=="����"?"selected":"" }/>����
					</select></td>
				</tr>
				<tr>
					<td><b>ְҵ��</b></td>
					<td><select name="teaJob">
							<option value="ѧ��" />ѧ��
							<option value="��ʦ" selected="selected" />��ʦ
					</select></td>
				</tr>
				<tr>
					<td><b>ѧ����</b></td>
					<td><select name="teaEdu">
							<option value="����" ${TEAINFO.teaEdu=="����"?"selected":"" }/>����
							<option value="�о���" ${TEAINFO.teaEdu=="�о���"?"selected":"" }/>�о���
							<option value="��ʿ" ${TEAINFO.teaEdu=="��ʿ"?"selected":"" } />��ʿ
							<option value="��ʿ��" ${TEAINFO.teaEdu=="��ʿ��"?"selected":"" }/>��ʿ��
							<option value="ר��" ${TEAINFO.teaEdu=="ר��"?"selected":"" }/>ר��
					</select></td>
				</tr>
				<tr>
					<td><b>���壺</b></td>
					<td><select name="teaNat">
							 <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="׳��" ${TEAINFO.teaNat=="׳��"?"selected":"" }/>׳��
                    <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="����" ${TEAINFO.teaNat=="����"?"selected":"" }/>����
                    <option value="ά�����" ${TEAINFO.teaNat=="ά�����"?"selected":"" }/>ά�����
					</select></td>
				</tr>
				<tr>
					<td><b>�ֻ����룺 
					</td>
					<td><input type="tel" name="teaPhone" value=${TEAINFO.teaPhone }
						required id="t6" onBlur="checktel()" /><label id="l6">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>��Ŀ��ţ� 
					</td>
					<td><input type="tel" name="subId" value=${TEAINFO.subId }
						id="t7" onBlur="checksub()" /><label id="l7">&nbsp;</label></td>
				</tr>
				<tr>
					<td><b>��ɫ��ţ� 
					</td>
					<td><input type="tel" name="roleId" value=${TEAINFO.roleId }
						id="t9" onBlur="checkrole()" /><label id="l9">&nbsp;</label></td>
				</tr>
			</tbody>
		</table>
		<br />
		<center>
		    <input type="hidden" name="teaId" value=${TEAINFO.teaId }>
            <input type="hidden" name="teaState" value=${TEAINFO.teaState }>
            <input type="hidden" name="method" value="update">
			<input type="submit" value=" �� �� " onClick="check()" />
		</center>

	</form>
</body>
</html>
