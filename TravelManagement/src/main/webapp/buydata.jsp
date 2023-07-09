<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" import ="java.time.LocalDateTime" import=" java.time.format.DateTimeFormatter" %>
     <%@ include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String email=session.getAttribute("email").toString();

LocalDateTime now = LocalDateTime.now();  

DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
String datetime = now.format(format);

try
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from buy where email='"+email+"' and id='"+id+"'");
	if(rs.next())
	{
		%>
		<script>alert("you have alredy buy")</script>
		<jsp:include page="viewpackage1.jsp"/>
		<%
		}
	else{
		
	
	 PreparedStatement ps=con.prepareStatement("insert into buy(pid,email,datetime) values(?,?,?)");
	 ps.setInt(1,id);
	 ps.setString(2,email);
	 ps.setString(3,datetime);
	 
	
	 
	 int n=ps.executeUpdate();
		if(n>0)
		{
			 %>
			 <script>alret("buy sucesss")</script>
			 <jsp:include page="viewpackage1.jsp"/>
			 <%
		}
		else
		{
			 %>
			 <script>alret("buy unsucesss")</script>
			 <jsp:include page="buy.jsp"/>
			 <%
		}
	}}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>