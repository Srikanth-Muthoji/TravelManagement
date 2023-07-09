<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String old=request.getParameter("old");
String new1=request.getParameter("new1");
String email=session.getAttribute("email").toString();
try
{
	PreparedStatement ps=con.prepareStatement("update customer set password=? where password=? and email=?");
	ps.setString(1, new1);
	ps.setString(2, old);
	ps.setString(3, email);
	int n=ps.executeUpdate();
	
	if(n>0)
	{
		%>
		<script>alert("Successfully Password Changed! Please Login")</script>
		<jsp:include page="customer.jsp" />
		<%
	}
	else
	{
		%>
		<script>alert("Password Changed Failed")</script>
		<jsp:include page="customer.jsp" />
		<%
	}
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
