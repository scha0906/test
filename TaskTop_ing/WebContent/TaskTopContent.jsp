<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
 TaskTopVO vo=(TaskTopVO)session.getAttribute("vo");
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend><%=vo.getEMP_NAME()%>���� ����</legend>
<form action="//TaskTop_ing/TaskTopMain.jsp" method="post">
<table border="1" width="400px">
<td>�̸�</td>
<td><%=vo.getEMP_NAME() %></td>
</tr>
<tr>
<td>�μ�</td>
<td><%=vo.getDEPT_NAME() %></td>
</tr>
<tr>
<td>����</td>
<td><%=vo.getEMP_POSITION() %></td>
</tr>
<tr>
<td>���� Ŀ�� ���뷮</td>
<td><%=vo.getDAY_COFFEE() %></td>
</tr>
<tr><td colspan="2" align="center">
<input type ="submit" value="����">
</td>
</tr>
</table>
</form>
</fieldset>
</body>
</html>