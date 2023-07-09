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
	        	<li class="nav-item"><a href="viewplace.jsp" class="nav-link">View Place</a></li>
	        	<li class="nav-item"><a href="addpackage.jsp" class="nav-link">Add Package</a></li>
	        	<li class="nav-item"><a href="viewpackage.jsp" class="nav-link">View Package</a></li>
	          <li class="nav-item active"><a href="admin.jsp" class="nav-link">Logout</a></li>
	        	
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
            <h1 class="mb-0 bread">Update Package </h1>
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
										<h3 class="mb-4">ADD PACKAGES</h3>
										<div id="form-message-warning" class="mb-4"></div> 
										<%@include file="connection.jsp" %>   
  <%
    try
    {
    	 int id=Integer.parseInt(request.getParameter("id"));
    
	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from package where id='"+id+"'");
    while(rs.next())
    {
    	%>
					      		<form action="update1data.jsp" method="POST" >
											<div class="row">
											<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">Id</label>
														<input type="number" class="form-control" name="id" id="id" readonly value="<%= rs.getInt(1)%>" placeholder="id">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">Title</label>
														<input type="text" class="form-control" name="title" id="title" value="<%= rs.getString(2)%>" placeholder="Title">
													</div>
												</div>
												<div class="col-md-6"> 
													<div class="form-group">
														<label class="label" for="email">Description</label>
														<input type="text" class="form-control" name="description" id="description" value="<%= rs.getString(3)%>" placeholder="Description">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="subject">Cost</label>
														<input type="number" class="form-control" name="cost" id="nearby" value="<%= rs.getString(4)%>" placeholder="Cost">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="#">Days</label>
														<input type="number" name="days" class="form-control" id="contact" value="<%= rs.getString(5)%>" placeholder="Days">
													</div></div>
													<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="#">Nights</label>
														<input type="number" name="nights" class="form-control" id="nights" value="<%= rs.getString(6)%>" placeholder="Nights">
													</div>
													</div>
													<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="#">Travel Description</label>
														<input type="text" name="traveldescription" class="form-control" id="city" value="<%= rs.getString(7)%>" placeholder="Travel Description">
													</div>
													</div>
													<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="#">places Covered</label>
														<input type="text" name="placescovered" class="form-control" id="city" value="<%= rs.getString(8)%>" placeholder="Places Covered">
													</div></div>
													<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="#">Contact Details</label>
														<input type="number" name="contact" class="form-control" id="city" value="<%= rs.getString(9)%>" placeholder="Contact Details">
													</div>
													</div>
											
					
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="Update" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
		        <%
        }
        }
        catch(Exception e)
        {
        	
        }
        %>
			
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
    </section>
	 
  <!-- Footer Elements -->
<div class=" col-md-6 col-lg-12 footer  ">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 ">© 2023 Copyright ALL rights reserved:
      

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