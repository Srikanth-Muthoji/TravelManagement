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
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String number=request.getParameter("number");

try
{
	Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from customer where email='"+email+"'");
		if(rs.next())
		{
	%>
	<script>alret("your alredy register this email")</script>
	<jsp:include page="register.jsp"></jsp:include>
	<%
			}
	else{
	PreparedStatement ps=con.prepareStatement("insert into customer(name,email,password,number) values(?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,number);

	
	int n=ps.executeUpdate();
	if(n>0)
	{
		%>
		 <script>alret("insert sucesss")</script>
		 <jsp:include page="customer.jsp"/>
		 <% 
	}
	else
	{
		%>
		 <script>alret("insert unsucess")</script>
		 <jsp:include page="register.jsp"/>
		 <%
	}
}
}
catch(Exception e)
{
e.printStackTrace();	
}
%>
</body>
</html>