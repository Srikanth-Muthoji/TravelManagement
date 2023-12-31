<!DOCTYPE html>
<html lang="en">
  <head>
    <title>TravelManagement System </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		<div class="wrap">
			<div class="container">
				<div class="row justify-content-between">
						</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    	<a class="navbar-brand" href="index.html">Travel<span>Management</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	      <ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="addplace.jsp" class="nav-link">Add Place</a></li>
	        	<li class="nav-item active"><a href="viewplace.jsp" class="nav-link">View Place</a></li>
	        	<li class="nav-item"><a href="addpackage.jsp" class="nav-link">Add Package</a></li>
	        	<li class="nav-item"><a href="viewpackage.jsp" class="nav-link">View Package</a></li>
	        <!--  	<li class="nav-item"><a href="viewBuy.jsp" class="nav-link">View Buy</a></li>
	       -->
	          <li class="nav-item "><a href="admin.jsp" class="nav-link">Logout</a></li>
	        	
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/image_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">View Place </h1>
          </div>
        </div>
      </div>
    </section>
   <%@ include file="connection.jsp" %>
   	<div table style=text-align:center;color:#000000; >
    <div = "m-2">
    <div class='table table-bordered '>
    <br><br><br>
       <%  
   try
{
				 
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from place");
	out.println("<table class='table table-bordered ' > ");
	out.println("<tr class='table-primary'><th>"+"ID"+"</th>"+"<th>"+"TITLE"+"</th>"+"<th>"+"DESCRIPTION"+"</th>"+"<th>"+"NEARBY"+"</th>"+"<th>"+"CONTACT"+"</th>"+"<th>"+"ADDRESS"+"</th>"+"<th>"+"CITY"+"</th>"+"<th>"+"LIKES"+"</th>"+"<th>"+"DELETE"+"</th>"+"<th>"+"UPDATE"+"</th>");
	
	//out.println("<table class='table table-bordered ' > ");
	//out.println("<tr class='table-primary'><th>"
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getInt(8)+"</td>");
		//out.println("<td><a href='like.jsp?id="+rs.getInt(1)+"'><h8>Like</h8></a></td>");
		out.println("<td><a href='delete.jsp?id="+rs.getInt(1)+"'><h8>Delete</h8></a></td>");
		out.println("<td><a href='update.jsp?id="+rs.getInt(1)+"'><h8>Update</h8></a></td>");
		//out.println("<td><a href='a_viewcoments.jsp?id="+rs.getInt(1)+"'><h8>View Comments</h8></a></td>");

		out.println("</tr>");
	}
	out.println("</table>");
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
 </div></div>
 </div>
 <br><br>
    	
					</div>
		
			
   <!-- Footer -->
 
  
   
  <!-- Footer Elements -->
<div class=" col-md-6 col-lg-12 footer  ">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 text-white py-3">� 2023 Copyright ALL Rights Reserved:
      
  </div></div>
  <!-- Copyright -->

 <!-- Footer -->
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
	
   
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>


    
  </body>
</html>