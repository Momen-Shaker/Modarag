<%-- 
    Document   : home
    Created on : Jun 13, 2016, 12:28:43 AM
    Author     : F 16
--%>

<%@page import="Model.DBConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="style-of-index.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Source+Sans+Pro" rel="stylesheet">
    </head>

    <body>
        <%

            Connection conn = DBConnection.getActiveConnection();
            String sql = "Select * from modarag.match where `date` < CURRENT_DATE() ; ";
            PreparedStatement stmt;
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                sql = "delete  from modarag.ticket where `maID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs.getInt(1));
                stmt.executeUpdate();
                sql = "delete  from modarag.class where `MID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs.getInt(1));
                stmt.executeUpdate();
                sql = "delete  from modarag.match where `matchID` = ? ; ";
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rs.getInt(1));
                stmt.executeUpdate();
            }
        %>


        <div class="nnav" id="momen">
 <div class="container">
  <div class="col-lg-12 col-md-6">
   <p class="fa fa-phone"> 01013563188 </p>
   <p class="fa fa-location-arrow"> 12556 91 Hdayek El-Ahraam </p>
   <p class="fa fa-envelope"> momenahmedsaid@stud.fci-cu.edu.eg </p>
  </div>
 </div>
</div>
<div class="border-Bar">
 <div class="square fa fa-arrow-up" id="amr">
 </div>
</div>
<!--//------->
<!--pic------->
 <div class="pic">
  <img src="logo.svg" class="img-responsive">
 </div>
<!--end pic------>

<!-- nav bar -->
<div class="meenu">
 <div class="nested-meenu">
  <!--<ul>
    <li><a href="#">HOME</a></li>
    <li><a href="#" id="yes">CLUBS</a></li>
    <li><a href="#">TICKETS</a></li>
    <li><a href="list.html">Schedule</a></li>
    <li><a href="#">ABOUT US</a></li>
  </ul>-->
 
  <ul>
   <li><a href="home.jsp">Home</a></li>
   <li><a href="matches.html">Matches</a></li>
   <li><a href="clubs.html">CLUBS</a></li>
   <li><a href="">My Tickets</a></li>
  </ul>
  <div class="logout fa fa-sign-out">
   <a href="index.jsp">Log out </a>
  </div>
  <div class="myAccount fa fa-user">
   <a href="myAccount.html">My Account </a>
 </div>
 </div>
</div>
<!-- end nav --><!-- TemplateBeginEditable name="forMatchList" -->

<!-- TemplateEndEditable -->

        <!-- fotter -->
        <footer class="footer-distributed">

            <div class="footer-left">

                <h3>El-<span>MODARAG</span></h3>

                <p class="footer-company-name">Wolf pack  &copy; 2016</p>
            </div>

            <div class="footer-center">

                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>91 Hdayek El-Ahraam</span> cairo, egypt</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>01013563188</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:momenahmedsaid@stud.fci-cu.edu.eg">momenahmedsaid@stud.fci-cu.edu.eg</a></p>
                </div>

            </div>

            <div class="footer-right">

                <p class="footer-company-about">
                    <span>About the company</span>
                    It's a website for the Egyptian league matches' tickets reservation. 
                </p>
                <div class="footer-icons">

                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>

                </div>

            </div>
        </footer>
        <div class="nav-button">
            <div class="nested-nav-button">
                <p> Copyright &copy; moamen el gml  2016. All Rights Reserved</p>
            </div>
        </div>
       <script type="text/javascript">
    function changeMe(sel)
    {
      sel.style.color = "#000";              
    }
</script>
<script type="text/javascript">
document.getElementById("amr").onclick = function(){
	"use strict";	
	document.getElementById("momen").style.display="block";
	  
	};
	
document.getElementById("momen").onclick = function(){
	"use strict";
		document.getElementById("momen").style.display="none";
	 
    };

</script>
</body>
</html>
