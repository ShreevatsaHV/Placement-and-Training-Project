<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

  if(session.getAttribute("email_id") == null){
    response.sendRedirect("login.jsp");
  }
  if(session.getAttribute("member_type") == "Employer"){
    response.sendRedirect("unauthorized_access.jsp");
  }

%>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Training and Placement Job Portal</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE = edge">
    <meta name="viewport" content="width = device-width, initial-scale = 1">


    <style type="text/css">
        nav.navbar{
            border-radius: 0px;
            background-color: black;
            color: white;
        }
        body{
            background-color: lightgrey;
        }
        .jumbotron{
            background-color: lightgrey;
        }
        .bottom_ul { list-style-type:none; float:right; margin-bottom:0px;}
        .bottom_ul li { float:left; line-height:40px;}
        .bottom_ul li:after { content:"/"; color:#FFF; margin-right:8px; margin-left:8px;}
        .bottom_ul li a { color:#FFF;  font-size:12px;}
    </style>

    <!-- Bootstrap scripts -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <!-- Custom script as written on bootstrap page -->

    <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">


</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color: white">SYNTHESIZE</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <!--<form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" style="border-radius: 2px">
        </div>
        <button type="submit" class="btn btn-default" style="border-radius: 2px">Submit</button>
      </form>-->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="profile.jsp">Home</a></li>
        <li><a href="#">Training</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="#">Applied Jobs</a></li>

        <li class="dropdown">
          <a href="user_profile.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="user_profile.jsp">Profile</a></li>
            <li><a href="logout.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



<div class="container">
  <table class="table table-bordered table-condensed" align="center" style="background-color: white; max-width: 800px">
    <!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--how to add this???? -->
    <tr>
      <th>title</th>
      <th>company</th>
      <th>ID</th>
      <th>Date</th>
    </tr>
    <tr>
      <c:forEach items="${appliedjobList}" var="job" varStatus="status"> <!--how to add this???? -->
        <tr>
            <td>${job.title}</td>
            <td>${job.company}</td>
            <td>${job.ID}</td>
            <td>${job.Date}</td>
        </tr>
    </c:forEach>
    </tr>
  </table>
</div>



<footer>
<div class="copyright" style="min-height:40px; background-color:#000000;">
  <div class="container">
    <div class="col-md-6">
      <p style="text-align:left; color:#FFF; padding:10px 0; margin-bottom:0px;">Â© 2017 - All Rights reserved with Team-5 OOAD Group</p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_ul">
        <li><a href="#">synthesize.com</a></li>
        <li><a href="#">Training</a></li>
        <li><a href="#">Jobs</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Employers</a></li>
        <li><a href="#">Careers</a></li>
      </ul>
    </div>
  </div>
</div>
</footer>
</body>
</html>
