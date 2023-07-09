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
String email=request.getParameter("email");
String password=request.getParameter("password");
session.setAttribute("email",email);

try
{
	PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	
	ResultSet rs=ps.executeQuery();
	if(rs.next())     
	{
		 %>
		 <script>alret("login sucesss")</script>
		 <jsp:include page="adminpage.jsp"/>
		 <%
	}
	else
	{
		 %>
		 <script>alret("login unsucesss")</script>
		 <jsp:include page="admin.jsp"/>
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