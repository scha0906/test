<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align = "center">

<script type="text/javascript">
	function content2(){
		location.href ="/TaskTop_ing/content2.do";

	}
	function content3(){
		location.href = "/TaskTop_ing/content3.do";		
	}
</script>
<fieldset>
<% 
TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>

<h1>--- TaskTop ---</h1>
<br>
<div id= "clock" style ="color:gray;">00:00</div>

<a href = "/TaskTop_ing/contentT.do?num=<%=dto.getEMP_NO()%>"><%=dto.getEMP_NAME()%>�� ȯ���մϴ�.</a>
<br>

<input type = button value = "���� ��Ʈ��" onclick="content3()">

<input type = button value = "��������" >
<input type = button value = "Ŀ��" name ="coffe" onclick="content2()">
<input type = submit value = "�ȸ���" name = "massage">
<input type = submit value = "�ڸ�Ȯ��" name = "exist" >

</fieldset>
<script type="text/javascript">

let clock = document.getElementById("clock");
function showTime(){
	
	let today = new Date();	
	let month = today.getMonth();
	let day = today.getDay();
	let hours = today.getHours();
	let minutes = today.getMinutes();
	let seconds = today.getSeconds();
	
	clock.innerHTML = addzero(hours)+":"+addzero(minutes)+":"+addzero(seconds);
	console.log(clock);
};
function addzero(num) {

	if(num < 10) { num = "0" + num; }

		return num;

}

function setTimer(){
	   let today = new Date();
	   let minutes = today.getMinutes();
	   let seconds = today.getSeconds();
	   console.log(minutes+" "+seconds);
	   if(minutes==29&&seconds==30){
	      let check = confirm("�ٹ����� 50���� ����߽��ϴ�!! ��Ʈ��Ī�� �Ͻðڽ��ϱ�??")
	      if(check == true){
	         location.href ="https://youtu.be/0n2ItsCmLtw";
	      }
	   }
	}

	function init(){
	   setTimer();
	   showTime();
	   setInterval(showTime,1000);
	   setInterval(setTimer,1000);
	};
	init();
</script>
</body>
</html>