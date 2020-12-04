<%@page import="TaskTopM.TaskTopDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 
TaskTopDTO dto = (TaskTopDTO)session.getAttribute("dto");
%>
    
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
  <link href="css/style.css" rel="stylesheet">
</head>
<body>

<script type="text/javascript">
	function content3(){
		location.href = "/TaskTopp_ing/content3.do"
		
	}
</script>

  <!--==========================
    	�� �� �׺���̼� ��
  ============================-->

<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.html"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.html">Home</a></li>
          <li><a href="TaskTopLogin.jsp">������ TASKTOP</a></li>
          <li><a href="TaskTopLogin.jsp">TASKTOP �����ϱ�</a></li>
          
          <li class="menu-has-children"><a href="">�α���</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">�α����ϱ�</a></li>
              
              <li><a href="#">�α׾ƿ�</a></li>
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
    	
      <h1>�ȳ�, TASKTOP!</h1>
      <br>
      <h2>TASKTOP�� ���԰� ����� ������ IoT ���� �ý����Դϴ�.</h2>
      	<h2>����� ������ �ֿ켱�Դϴ�.</h2>
      <a href="TaskTopLogin.jsp" class="btn-get-started">Log In</a>
    </div>
  </section><!-- #hero -->

  <main id="main">

   

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
      
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
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