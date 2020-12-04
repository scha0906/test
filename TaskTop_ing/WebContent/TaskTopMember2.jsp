<%@page import="TaskTopM.TaskTopDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="TaskTopM.TaskTopVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
ArrayList<TaskTopVO> list =(ArrayList<TaskTopVO>)session.getAttribute("list");
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

<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="TaskTopMain.jsp"><img src="img/logo_txt126.png" alt="" title="" /></img></a>
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="TaskTopMain.jsp">Home</a></li>
          <li><a href="#about">������ TASKTOP</a></li>
          <li><a href="#services">TASKTOP �����ϱ�</a></li>
          <li class="menu-has-children"><a href="">�α���</a>
            <ul>
              <li><a href="TaskTopLogin.jsp">�α����ϱ�</a></li>
              <li><a href="TaskTopLogin.jsp">�α׾ƿ�</a></li>
              
            </ul>
          </li>
        </ul>
      </nav>
    </div>
  </header>

<main id="main">

<section id="hero">
    <div class="hero-container">
    	
    <img src="img/logo_transparent.png" width = "450px" height= "450px"/></img>	
    	
      <h1>�ȳ��ϼ���, <%=dto.getDEPT_NAME()%>��</h1>
      <br>
      <h2>TASKTOP�� ���԰� ����� ������ IoT ���� �ý����Դϴ�.</h2>
      	<h2>����� ������ �ֿ켱�Դϴ�.</h2>
      <a href="#myStatus" class="btn-get-started">������ TASKTOP Ȯ���ϱ�</a>
    </div>
  </section>
  
<section id="myStatus">
      <div class="container">
        	<%for( TaskTopVO vo1 : list){ %>
            
            <img src="./img/img_avatar.png" alt="user" id = "userPhoto">
           
            <h2 class="title"><%=dto.getDEPT_NAME()%>�� ȯ���մϴ�.</h2>
            
			<table>
			
			<tr class="icon-box wow fadeInUp">
             <td> <h4 class="title"><a href="">�̸�</a></h4>
              <p class="description"><%= dto.getEMP_NAME() %></p>
              </td>
              	
            </tr>
			
			<tr class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <td> <h4 class="title"><a href="">����</a></h4>
              <p class="description"><%= dto.getEMP_POSITION() %></p>
              </td>
			</tr>
			
			<tr class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <td><h4 class="title"><a href="">��� ����</a></h4>
              <p class="description"><%= vo1.getEMP_EXIST() %></p>
              </td>
			</tr>
			
			<%} %>
			
			</table>

          </div>
    </section>
    
    

    <!--==========================
      Facts Section
    ============================-->
    <section id="facts">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">������ TASKTOP</h3>
        </div>
        <div class="row counters">

  			<form action = "/TaskTop_ing/coffee.do" method = "post">
  			<div class="col-lg-3 col-6 text-center">
  			<img src = "./img/icons/tea-cup.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">3</span>
            <p style="color:black;">Ŀ��</p>
  				</div>
			</form>
			
          <div class="col-lg-3 col-6 text-center">
          <img src = "./img/icons/push-ups.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">5</span>
            <p style="color:black;">��Ʈ��Ī ���� ��û</p>
  				</div>

          <div class="col-lg-3 col-6 text-center">
          <img src = "./img/icons/check.png" width = "100px" height = "100px">
            <span data-toggle="counter-up">4</span>
            <p style="color:black;">�ڸ����</p>
  				</div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">15</span>
            <p>Hard Workers</p>
  				</div>

  			</div>

      </div>
    </section><!-- #facts -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">TASKTOP �����ϱ�</h3>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/power.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">����ϱ�</a></h4>
              <p class="description">�ڵ� ����ϱ� ��ư���� ����Ǿ� �ִ� ��� �ý����� �����ϼ���. </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/tea-cup.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">Ŀ����Ʈ ����</a></h4>
              <p class="description">Ŀ����Ʈ ���� ��ư���� ���� ����� Ŀ�Ǹ� �ٷ� �غ��غ�����.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/push-ups.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">��Ʈ��Ī ���� ��û</a></h4>
              <p class="description">��Ʈ��Ī ���� ��û ��ư���� ��Ʈ��Ī�� �ʿ��� ������ ���� �ٸ� ������� ��û�غ�����.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/check.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">�ڸ���� ����</a></h4>
              <p class="description">�ڸ���� ���� ��ư���� ���� ���¸� �ڸ��� ���� �Ǵ� ���������� �����ϼ���.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><img src = "./img/icons/bar-chart.png" width = "50px" height = "50px"></a></div>
              <h4 class="title"><a href="">��� ����</a></h4>
              <p class="description">��� ���� ��ư���� �����ϰ��� ���� TASKTOP�� Ȯ���ϼ���.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><i class="fa fa-shopping-bag"></i></a></div>
              <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
              <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>
          </div>
        </div>

      </div>
    </section>  
</main>    

<%-- <fieldset>
<legend align = "center"><%=dto.getDEPT_NAME()%>�� ������</legend>
<form action = "TaskTopMain.jsp">
<table border ="1" width ="400px" align = "center">
<tr align = "center">
<td>�̸�</td>
<td>����</td>
<td>��ǿ���</td>
</tr>
<%for( TaskTopVO vo1 : list){ %>
<tr>
<td><%= vo1.getEMP_NAME() %></td>
<td><%= vo1.getEMP_POSITION() %></td>
<td><%= vo1.getEMP_EXIST() %></td>
</tr>
<%} %>
<tr>
<td colspan = 3><input type ="submit" value ="����"></td>
</table>
</form>
</fieldset> --%>
</body>
</html>