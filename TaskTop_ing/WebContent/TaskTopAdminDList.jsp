<%@page import="TaskTopM.TaskTopVO"%>
<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
ArrayList<TaskTopVO> list =(ArrayList<TaskTopVO>)session.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
font-size:12px;
}
</style>

</head>
<body>
<fieldset>
<table border ="1" align = "center">
<tr>
<td>�̸�</td>
<td>�μ�</td>
<td>����</td>
<td>���翩��</td>
</tr>

<%for( TaskTopVO vo : list){ %>

<tr>
<td><%= vo.getEMP_NAME() %></td>
<td><%= vo.getDEPT_NAME() %></td>
<td><%= vo.getEMP_POSITION() %></td>
<td><%= vo.getEMP_EXIST() %></td>
</tr>

<%} %>

<tr>
<td colspan="4" align="center">
<form action = "TaskTopAdmin.jsp">
<input type ="submit" value ="����">
</form>
</tr>
</table>
</fieldset>
</body>
</html>