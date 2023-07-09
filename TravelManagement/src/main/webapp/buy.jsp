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
	        	<li class="nav-item"><a href="viewplace1.jsp" class="nav-link">View Places</a></li>
	        	<li class="nav-item"><a href="viewpackage1.jsp" class="nav-link">View Packages</a></li>
	          <li class="nav-item active"><a href="customer.jsp" class="nav-link">Logout</a></li>
	        	
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">Buy Package </h1>
          </div>
        </div>
      </div>
    </section>
   
   	<section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row no-gutters">
    			
    			
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">Buy Packages</h3>
										
										<div id="form-message-warning" class="mb-4"></div>
										 <%@ include file="connection.jsp" %> 
					      		<form action="buydata.jsp" method="POST" >
					      		<%
					      		String email=session.getAttribute("email").toString();
					      		int id=Integer.parseInt(request.getParameter("id"));
					      		try
					      		{
					      			Statement st=con.createStatement();
					      			ResultSet rs=st.executeQuery("select * from customer where email='"+email+"'");
					      		    while(rs.next())
					      		    {
					      		
					      		%>
					      		
											<div class="col">
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">Customer Email</label>
														<input type="email" class="form-control" name="email" id="email" readonly value="<%= rs.getString(3)%>" placeholder="email">
													</div>
												</div>
												
											<%
					      		    }
					      		}
											catch(Exception e)
											{
												
											}
					      		
											
										
											try
					      		{
					      			Statement st1=con.createStatement();
					      			ResultSet rs1=st1.executeQuery("select * from package where id='"+id+"'");
					      		    while(rs1.next())
					      		    {
					      		
					      		
					      		    	%>
					      		
					    
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" for="id"> Package id</label>
														<input type="number" class="form-control" name="id" id="id" readonly value="<%= rs1.getInt(1)%>" placeholder="id">
													</div>
												</div>
												
												<%
												}
												}
												catch(Exception e)
												{
												e.printStackTrace();	
												}
											
									%>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="BUY" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									
									</div>
								
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
    </section>
		
    <footer class="footer " style="margin-left:0;">
			<div class="container">
				<div class="row">
					
				
				
					</div>
		
			<div class="w-100 mt-5 border-top py-5">
				<div class="container">
					<div class="row">
	          <div class="col-md-6 col-lg-8">

	            <p class="copyright mb-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved 
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	          <div class="col-md-6 col-lg-4 text-md-right">

	          </div>
	        </div>
				</div>
			</div>
		</footer>
    
  

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