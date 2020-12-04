<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
ArrayList<TaskTopDTO> list =(ArrayList<TaskTopDTO>)session.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>��ü ������� ����</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript">

//�޼��� �ۼ� �Լ�
function msg(){
	let msgTxt = prompt('�޼����� �Է��ϼ���.');
}

</script>


</head>
<body>


<div class="limiter" style = "background-color: #8E8E8E">
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">

						<div class="row header">
							<div class="cell" style = "background-color: #2dca98">
								�μ�
							</div>
							<div class="cell" style = "background-color: #2dca98">
								����
							</div>
							<div class="cell" style = "background-color: #2dca98">
								�̸�
							</div>
							<div class="cell" style = "background-color: #2dca98">
								���̵�
							</div>
							<div class="cell" style = "background-color: #2dca98">
								��й�ȣ
							</div>
						</div>
						
						<%for( TaskTopDTO dto : list){ %>
						<div class="row" style = "background-color: #DCDCDC">
						
							<div class="cell" data-title="Full Name" onclick="msg()">
								<%= dto.getDEPT_NAME() %>
							</div>
							<div class="cell" data-title="Age">
								<%= dto.getEMP_POSITION() %>
							</div>
							<div class="cell" data-title="Job Title">
								<%= dto.getEMP_NAME() %>
							</div>
							<div class="cell" data-title="Location">
								<%= dto.getEMP_ID() %>
							</div>
							<div class="cell" data-title="Location">
								<%= dto.getEMP_PASS() %>
							</div>
							
						</div>
						<%} %>
						
				</div>
			</div>
		</div>
	</div>

	
	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>



</body>
</html>