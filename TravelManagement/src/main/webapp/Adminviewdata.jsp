<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file = "connection.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 
 
try
{
	PreparedStatement ps=con.prepareStatement("select * from contact");
	 
	ResultSet rs= ps.executeQuery();
	if(rs.next())
	{
%>
<script>alret("View Success")</script>
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