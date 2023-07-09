<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String title=request.getParameter("title");
String description=request.getParameter("description");
String cost=request.getParameter("cost");
String days=request.getParameter("days");
String nights=request.getParameter("nights");
String traveldescription=request.getParameter("traveldescription");
String placescovered=request.getParameter("placescovered");
String contact=request.getParameter("contact");
try
{
	PreparedStatement ps=con.prepareStatement("insert into package(title,description,cost,days,nights,traveldescription,placescovered,contact) values(?,?,?,?,?,?,?,?)");
	ps.setString(1,title);
	ps.setString(2,description);
	ps.setString(3,cost);
	ps.setString(4,days);
	ps.setString(5,nights);
	ps.setString(6,traveldescription);
	ps.setString(7,placescovered);
	ps.setString(8,contact);
	int n=ps.executeUpdate();
	if(n>0)     
	{
		 %>
		 <script>alret("insert sucesss")</script>
		 <jsp:include page="adminpage.jsp"/>
		 <%
	}
	else
	{
		 %>
		 <script>alret("login unsucesss")</script>
		 <jsp:include page="addpackage.jsp"/>
		 <%
	}	
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
</body>
</html>