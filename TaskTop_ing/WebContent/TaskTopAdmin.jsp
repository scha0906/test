<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TASKTOP</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon2.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css?1" rel="stylesheet">
  <script src = "https://code.jquery.com/jquery-3.3.1.min.js"></script>
  
  <style type="text/css">
  
  	input{
  	
  	color:#fff;
	background-color: #2dca98;
	outline: none;
    border: 0;
    color: #fff;
	padding:10px 20px;
	text-transform:uppercase;
	margin-top:50px;
	border-radius:2px;
	cursor:pointer;
	position:relative;
	border-radius:10px;
  	
  	}
  	
  	input:hover{
  	
  	transform:scale(1.1); 
  	
  	}
  	
  	.container{
  	
  	min-height: 100%;
  	text-algin: center;
  	
  	}
  	
  	#myStatus{
  	
  	background-color: #DCDCDC;
  	padding : 100px;
  	
  	}
  
  </style>
  
  
  <script type="text/javascript">
	function insertform(){
		location.href = "/TaskTop_ing/insertform.do";
	}
	function listform(){
		console.log("����Ʈ���");
	    location.href = "/TaskTop_ing/list.do?list=list";
	}
	function dlistform(){
		console.log("����Ʈ���");
	    location.href = "/TaskTop_ing/list.do?list=dlist";		
	}
	
	//�޼��� �ۼ� �Լ�
//	function msg(){
//		let msgTxt = prompt('�޼����� �Է��ϼ���.');
//	}
	</script>
	

</head>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.html"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>
      
      
  <!--==========================
    	�� �� �׺���̼� ��
  ============================-->

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="TaskTopAdmin.jsp">Home</a></li>
          <li><a href="#myStatus">������ �޴�</a></li>
          <li><a href="#services">TASKTOP �����ϱ�</a></li>
          <!-- <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#team">Team</a></li> -->
          <li class="menu-has-children"><a href="">�α���</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">�α����ϱ�</a></li>
              <li><a href="TaskTopLogin.jsp">�α׾ƿ�</a></li>
              
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header><!-- #header -->

  <!--==========================
    	����, ù ������
  ============================-->
  
  
  <section id="hero">
    <div class="hero-container">
    	
    <img src="img/logo_transparent.png" width = "450px" height= "450px"/></img>	
    <% 
		TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
	%>
    	
      <h1>�ȳ��ϼ���, <%=dto.getEMP_POSITION() %>��!</h1>
      <br>
      <h2>TASKTOP�� ���԰� ����� ������ IoT ���� �ý����Դϴ�.</h2>
      	<h2>����� ������ �ֿ켱�Դϴ�.</h2>
      <a href="#myStatus" class="btn-get-started">���� �����ϱ�</a>
    </div>
  </section>
  


<main id="main">
<section id="myStatus">
      
     <div class="container">
        
            <table width = "1000px">
            	<tr>
            		<td colspan = 3 align = "center">
            			<img src="./img/profile/sejin.png" alt="user" width = "250px" height = "250px" style = "padding: 20px; width:300px; height: 300px; border-radius: 50%; background: #2dca98">
            
            			<h3 class="title" style = "padding: 70px"><%=dto.getEMP_NAME()%>�� ȯ���մϴ�!</h3>
            		</td>
				</tr>
				
				
				<tr class="icon-box wow fadeInUp">
             		<td class="icon-box wow fadeInUp" align = "center" width = "400px" style = "padding: 40px">
             			<h4 class="title">
             				<img src="./img/icons/add.png" width = "80px" height = "80px">
             			</h4>
              			<input type = button id = "addEMP" value ="����߰�" onclick = "insertform()">
             		 </td>
             		 
              	
              		<td class="icon-box wow fadeInUp" align = "center" data-wow-delay="0.2s" width = "400px" style = "padding: 60px"> 
              			<h4 class="title">
              				<img src="./img/icons/viewall.png" width = "80px" height = "80px">
              			</h4>
              			<input type = button id = "showEMP" name = "inputStyle" value ="��ü�����ȸ" onclick = "listform()">
              
             		 </td>
			
              		<td class="icon-box wow fadeInUp" align = "center" data-wow-delay="0.4s" width = "400px" style = "padding: 60px">
              			<h4 class="title">
              				<img src="./img/icons/call.png" width = "80px" height = "80px">
              			</h4>
             			<input type = button id = "ShowDEPT" name = "inputStyle" value = "ȣ���ϱ�" onclick = "dlistform()">
             			
             		</td>
             		 
			</tr>
			
			</table>

         </div>

          
    </section>
    
    
  <!--==========================
    	�����ϱ� ������
  ============================-->    
    
    
    <section id="services" style = "padding: 100px; height: 1000px">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h2 style = "padding: 150px; text-align: center">TASKTOP �����ϱ�</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href="" ><img src = "./img/icons/power.png" width = "50px" height = "50px" onclick = "shutdown()"></a></div>
              <h4 class="title"><a href="">����ϱ�</a></h4>
              <p class="description">�ڵ� ����ϱ� ��ư���� ����Ǿ� �ִ� ��� �ý����� �����ϼ���. </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/coffee.png" width = "50px" height = "50px" onclick ="content2()"></a></div>
              <h4 class="title"><a href=""  onclick ="content2()">Ŀ����Ʈ ����</a></h4>
              <p class="description">Ŀ����Ʈ ���� ��ư���� ���� ����� Ŀ�Ǹ� �ٷ� �غ� �غ�����.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/check.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">������ üũ</a></h4>
              <p class="description">���� �μ� �� �ٸ� �μ��� ����� �������� üũ �غ�����.</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-1 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href="" ><img src = "./img/icons/chat.png" width = "50px" height = "50px" onclick = "resMSG(<%=dto.getEMP_NO()%>)"></a></div>
              <h4 class="title"><a href="">�޼��� Ȯ���ϱ�</a></h4>
              <p class="description">ȣ�� �޼����� Ȯ���ϼ���</p>
            </div>
          </div>
          </div>
      </div>
    </section>
    
    
  <!--==========================
    	Ǫ��
  ============================-->    
    
    
    
<footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; 2020 <strong>TASKTOP</strong>. All Rights Reserved
      </div>
      <div class="credits">
        
      </div>
    </div>
  </footer>    
    
    
<!-- ���� �ö󰡴� ��� -->
<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</main>

<script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>