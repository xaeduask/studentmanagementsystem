<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>    
    <title>��¼ҳ��</title>
    <style>
    table {
	border: 1px blue solid;
	margin: auto;
	width: 30%;
    }
    th,td {
	    text-align:center;
    }
    </style>
  </head>
  
  <body alink="#FF0000" vlink="#000000" link="#0000FF">
    <br/><br/>
    <center><h1><font color="#0066CC" face="΢���ź�" size="+6">��������δ��У������ϵͳ</font></h1></center>
    <br/><br/><br/><br/><br/>
    <table >
        <form action="#" method="post">
        <tr>
            <td width="100"><br/><b>�˺ţ�</b><br/>&nbsp;</td>
            <td><br/><input type="text" name="�˺���" required value="�˺���ʾֵ" />&nbsp;&nbsp;<a href="#">�����˺�</a>
            <br/>&nbsp;</td>
        </tr>
        <tr>
            <td><br/><b>���룺</b><br/>&nbsp;</td>
            <td><br/><input type="password" name="������" required value="������ʾֵ" >&nbsp;&nbsp;<a href="#">��������</a>
            <br/>&nbsp;</td>
        </tr>
        <tr>
        	<td colspan="2" align="center">
	        
	        	<input type="radio" name="roles" value="4" ${param.roles=="4"?"checked":"" } /> ѧ��&nbsp;
	            <input type="radio" name="roles" value="3" ${param.roles=="3"?"checked":"" }/> ��ʦ&nbsp;
	            <input type="radio" name="roles" value="2" ${param.roles=="2"?"checked":"" }/> ������
            </td>
        </tr>
        <tr>
          <td><br/>
            <a href="��֤��λ��">
              <img src="��֤��λ��"/><br/><font color="red" size="-3">���ͼƬˢ��</font>
            </a>
          </td>
          <td><br/>
            <input type="text" name="img"/><br/>&nbsp;
          </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br/>
            <input type="hidden" name="method" value="checkOne"/>
            <input type="submit" value="  ��  ¼  "/>     
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="  ��  ��  "/><br/>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><br/>������ʾλ��<br/>&nbsp;</td>
        </tr>
        </form>
    </table>

  </body>
</html>
