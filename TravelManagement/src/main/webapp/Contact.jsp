<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
 <%@ include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 
String Fullname=request.getParameter("name");
String EmailAddress=request.getParameter("email");
String Subject=request.getParameter("subject");
String Message=request.getParameter("message");
try
{
	PreparedStatement ps=con.prepareStatement("insert into contact(FullName,SUBJECT,MESSAGE,EMAILADDRESS)Values(?,?,?,?)");
	ps.setString(1,Fullname);
	ps.setString(2,Subject);
	ps.setString(3,Message);
	ps.setString(4,EmailAddress);
	int rs=ps.executeUpdate();
	if(rs>0)
	{
%>
<script>alret("Message Send Succesfully")</script>
<jsp:include page="Contactdata.jsp" />
<%
}
	else 
	{
%>
<script>alert("Message Send UnSuccesfully")</script>
<jsp:include page="contact.html" />
<%
	}}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>
